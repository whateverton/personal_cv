% ************************ %
% author: everton vilela   %
% project: LaTeX CV        %
% ************************ %

%% Custom package options
\DeclareOption{portuguese}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{english}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{french}{
\PassOptionsToPackage{\CurrentOption}{babel}
}

%% Process given options
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{babel}

% Packages
\usepackage[utf8]{inputenc}

% Custom info
\usepackage{settings/icons}
\usepackage{settings/style}
\usepackage{settings/commands}

\makeatletter
\def\@LANG#1{\iflanguage{#1}{\usepackage{language/#1}}{}}
\@LANG{portuguese}
\@LANG{english}
\@LANG{french}
\makeatother

% languages macros
\def\PT#1{\iflanguage{portuguese}{#1}{}}
\def\ENG#1{\iflanguage{english}{#1}{}}
\def\FR#1{\iflanguage{french}{#1}{}}
