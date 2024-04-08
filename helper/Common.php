<?php

if (!function_exists('slug_string')) {
    function slug_string($title)
    {
        $replacement = '-';
        $map = array();
        $quotedReplacement = preg_quote($replacement, '/');
        $default = array(
            '/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|å/' => 'a',
            '/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|ë/' => 'e',
            '/ì|í|ị|ỉ|ĩ|Ì|Í|Ị|Ỉ|Ĩ|î/' => 'i',
            '/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|ø/' => 'o',
            '/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|ů|û/' => 'u',
            '/ỳ|ý|ỵ|ỷ|ỹ|Ỳ|Ý|Ỵ|Ỷ|Ỹ/' => 'y',
            '/đ|Đ/' => 'd',
            '/ç/' => 'c',
            '/ñ/' => 'n',
            '/ä|æ/' => 'ae',
            '/ö/' => 'oe',
            '/ü/' => 'ue',
            '/Ä/' => 'Ae',
            '/Ü/' => 'Ue',
            '/Ö/' => 'Oe',
            '/ß/' => 'ss',
            '/[^\s\p{Ll}\p{Lm}\p{Lo}\p{Lt}\p{Lu}\p{Nd}]/mu' => ' ',
            '/\\s+/' => $replacement,
            sprintf('/^[%s]+|[%s]+$/', $quotedReplacement, $quotedReplacement) => '',
        );
        //Some URL was encode, decode first
        $title = urldecode($title);
        $map = array_merge($map, $default);
        return strtolower(preg_replace(array_keys($map), array_values($map), $title));
    }
}
function getSessionUsername()
{
    $username = $_SESSION['username'] ?? null;
    return $username;
}
function getSessionEmail()
{
    $email = $_SESSION['email'] ?? null;
    return $email;
}
function getSessionIdUser()
{
    $id = $_SESSION['idUser'] ?? null;
    return $id;
}
function getSessionRoleUser()
{
    $roleId = $_SESSION['roleId'] ?? null;
    return $roleId;
}
function getSessionIdAccount()
{
    $accountId = $_SESSION['idAccount'] ?? null;
    return $accountId;
}


if (!function_exists('createLink')) {
    function createLink($data = [])
    {
        /*
   giai thich cho mang data
   [
    'c' = department
    'm' = index
    'page' = {page} 
    'search' = {keyword}
   ]
      // index.php?c=department&m=index&page=1&insearch=
   */
        $strLinkPage = '';
        foreach ($data as $key => $value) {
            $strLinkPage .= empty($strLinkPage) ? "?{$key}={$value}" :
                "&{$key}={$value}";
        }
        return ROOT_PATH . $strLinkPage;
    }
}
if (!function_exists('paginate')) {
    function paginate($link, $totalItem, $page = 1, $keyword = '', $limit = 5)
    {
        // Calculate total pages
        $totalPages = ceil($totalItem / $limit);

        // Ensure $page is within valid range
        $page = max(1, min($page, $totalPages));

        // Calculate start index for fetching data
        $start = ($page - 1) * $limit;

        // Build pagination HTML
        $htmlPage = '<nav aria-label="Page navigation"><ul class="pagination">';

        // Previous page link
        if ($page > 1) {
            $htmlPage .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $page - 1, $link) . '">Previous</a></li>';
        }

        // Page links
        for ($i = 1; $i <= $totalPages; $i++) {
            $htmlPage .= '<li class="page-item' . ($page == $i ? ' active' : '') . '"><a class="page-link" href="' . str_replace('{page}', $i, $link) . '">' . $i . '</a></li>';
        }

        // Next page link
        if ($page < $totalPages) {
            $htmlPage .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $page + 1, $link) . '">Next</a></li>';
        }

        $htmlPage .= '</ul></nav>';

        return [
            'start' => $start,
            'pagination' => $htmlPage
        ];
    }
}
