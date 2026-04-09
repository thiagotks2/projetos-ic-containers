<style>
    *, body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    body{
        background-color: #121212;
        color: #e0e0e0;
    }

    a {
        text-decoration: none;
        color: #e0e0e0;
        cursor: pointer;
    }

    ul li {
        list-style-type: none;
        line-height: 40px;
        border-bottom: 1px solid #333;
        padding-left: 10px;
        margin: 0 10px;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-between;
        align-content: stretch;
        align-items: center;
        background-color: #1e1e1e;
    }

    ul li.header {
        background-color: #333;
        font-weight: bold;
        color: #fff;
    }

    ul li:not(.header):hover {
        background-color: #2a2a2a;
    }

    span {
        display: block;
    }

    span.date {
        display: inline-block;
        width: 200px;
        color: #aaa;
    }

    span.framework {
        display: inline-block;
        text-transform: uppercase;
        font-size: 8px;
        padding: 2px 5px;
        border-radius: 10px;
        background-color: #777;
        color: #000;
        margin-left: 10px;
        line-height: 10px;
        opacity: 0.7;
        transition: all 0.1s;
        font-weight: bold;
        letter-spacing: 1px;
        backdrop-filter: opacity(0.2);
    }

    ul li:not(.header):hover span.framework {
        opacity: 1;
    }

    header {
        padding: 20px 10px;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-between;
        align-content: stretch;
        align-items: center;
    }

    header h1, header h1 + p {
        width: 100%;
        margin-top: 20px;
        color: #fff;
    }

    .filtrar {
        background-color: #333;
        color: #fff;
        text-align: center;
        cursor: pointer;
        width: 16.6%;
        line-height: 30px;
        border-radius: 30px;
        transition: background-color 0.2s;
    }

    .filtrar:hover {
        background-color: #444;
    }

    span.framework.JS, .filtrar.JS {
        background-color: #a259ff;
    }

    span.framework.Laravel, .filtrar.Laravel {
        background-color: #ff4e42;
    }

    span.framework.CodeIgniter, .filtrar.CodeIgniter {
        background-color: #f58742;
    }

    span.framework.Outros, .filtrar.Outros {
        background-color: #4daaaa;
    }

    .filtrar.Tudo {
        background-color: #888;
    }

    .filtrar.Tudo:hover {
        background-color: #999;
    }
</style>


<?php
$dir = '/var/www/html';
$files = scandir($dir);

// Parâmetros GET
$order = $_GET['order'] ?? 'date'; // nome ou data
$filter = $_GET['filter'] ?? 'Laravel'; // Laravel, CodeIgniter, JS, Arquivos, Outros, Tudo

$dirOrder = $_GET['dir'] ?? null;

// Se a ordenação for nova (sem 'dir' definido), defina o padrão
if (!$dirOrder) {
    $dirOrder = $order === 'name' ? 'asc' : 'desc';
}


$dirs = [];
$regularFiles = [];

foreach ($files as $file) {
    if ($file === '.' || $file === '..') continue;

    $path = "$dir/$file";
    if (is_dir($path)) {
        $framework = 'Outros';
        $link = $file;

        if (file_exists("$path/public/index.php")) {
            $framework = 'Laravel';
            $link = "$file/public";
        } elseif (file_exists("$path/public_html/index.php")) {
            $framework = 'Laravel';
            $link = "$file/public_html";
        } elseif (is_dir("$path/application")) {
            $framework = 'CodeIgniter';
        } elseif (file_exists("$path/package.json")) {
            $pkg = json_decode(file_get_contents("$path/package.json"), true);
            if (isset($pkg['dependencies'])) {
                $deps = implode(' ', array_keys($pkg['dependencies']));
                if (str_contains($deps, 'react') || str_contains($deps, 'next')) {
                    $framework = 'JS';
                }
            }
        }

        $dirs[] = [
            'name' => $file,
            'mtime' => filemtime($path),
            'is_dir' => true,
            'framework' => $framework,
            'href' => $link
        ];
    } else {
        $regularFiles[] = [
            'name' => $file,
            'mtime' => filemtime($path),
            'is_dir' => false,
            'framework' => 'Arquivos',
            'href' => $file
        ];
    }
}

// Aplica filtro separadamente em diretórios e arquivos
$filteredDirs = array_filter($dirs, fn($e) => $filter === 'Tudo' || ($e['framework'] ?? '') === $filter);
$filteredFiles = array_filter($regularFiles, fn($e) => $filter === 'Tudo' || ($e['framework'] ?? '') === $filter);

// Ordena cada grupo
if ($order === 'name') {
    $sortFunc = ($dirOrder === 'asc')
        ? fn($a, $b) => strcasecmp($a['name'], $b['name'])
        : fn($a, $b) => strcasecmp($b['name'], $a['name']);
} else {
    $sortFunc = ($dirOrder === 'asc')
        ? fn($a, $b) => $a['mtime'] - $b['mtime']
        : fn($a, $b) => $b['mtime'] - $a['mtime'];
}


usort($filteredDirs, $sortFunc);
usort($filteredFiles, $sortFunc);

// Junta mantendo diretórios antes dos arquivos
$filtered = array_merge($filteredDirs, $filteredFiles);


// URLs helpers
function make_url($params) {
    $query = http_build_query(array_merge($_GET, $params));
    return "?$query";
}

// Header
echo "<header>";
$filters = ['Tudo', 'Laravel', 'CodeIgniter', 'JS', 'Outros', 'Arquivos'];
foreach ($filters as $f) {
    $active = ($filter === $f) ? 'style="font-weight:bold"' : '';
    echo "<a class=\"filtrar $f\" href=\"" . make_url(['filter' => $f]) . "\" $active>$f</a>";
}
echo "<h1></h1><p>" . (($filter) ? "Listando " . $filter : '') . "</p>";
echo "</header>";

// Lista
echo "<ul>";

// Botões de ordenação (no cabeçalho da lista)
// Alternância de direção
$nameDir = ($order === 'name' && $dirOrder === 'asc') ? 'desc' : 'asc';
$dateDir = ($order === 'date' && $dirOrder === 'desc') ? 'asc' : 'desc';

$nameLabel = ($order === 'name')
    ? ($dirOrder === 'asc' ? 'Nome A-Z' : 'Nome Z-A')
    : 'Nome';

$dateLabel = ($order === 'date')
    ? ($dirOrder === 'desc' ? 'Data de modificação ⬇️' : 'Data de modificação ⬆️')
    : 'Data de modificação ⬇️';

$ordNameUrl = make_url(['order' => 'name', 'dir' => $nameDir]);
$ordDateUrl = make_url(['order' => 'date', 'dir' => $dateDir]);

echo "<li class=\"header\">
        <span><a href=\"$ordNameUrl\"><strong>$nameLabel</strong></a></span>
        <span class=\"date\"><a href=\"$ordDateUrl\"><strong>$dateLabel</strong></a></span>
      </li>";


foreach ($filtered as $entry) {
    $prefix = $entry['is_dir'] ? '/' : './';
    $displayName = $prefix . $entry['name'];
    $framework = $entry['framework'] ?? '';
    $label = $framework ? "<span class=\"framework $framework\">$framework</span>" : '';
    $href = $entry['href'];

    echo "<a href=\"$href\"><li><span>$displayName $label</span><span class=\"date\">" . date("Y-m-d H:i:s", $entry['mtime']) . "</span></li></a>";
}

echo "</ul>";
?>


