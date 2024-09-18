fx_version 'cerulean'
game 'gta5'

name 'm_ipls'
author 'mafewtm and Bob_74'
description 'Just another IPL loader to customize your map'
repository 'https://github.com/mafewtm/m_ipls'
version '1.0.0'

client_scripts {
    'init.lua',
    'data/main.lua'
}

files {
    'data/**/*.lua'
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'