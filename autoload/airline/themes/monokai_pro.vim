let s:shade0_gui =  "#2c292d"
let s:shade1_gui =  "#4a474a"
let s:shade2_gui =  "#676568"
let s:shade3_gui =  "#858385"
let s:shade4_gui =  "#a3a2a2"
let s:shade5_gui =  "#c1c0bf"
let s:shade6_gui =  "#dededd"
let s:shade7_gui =  "#fcfcfa"
let s:shade8_gui =  "#1b181c"
let s:accent0_gui = "#a9dc76"
let s:accent1_gui = "#ffd866"
let s:accent2_gui = "#ab9df2"
let s:accent3_gui = "#ff6188"
let s:accent4_gui = "#78dce8"
let s:accent5_gui = "#fc9867"
let s:shade0_cli =  237
let s:shade1_cli =  242
let s:shade2_cli =  8
let s:shade3_cli =  249
let s:shade4_cli =  7
let s:shade5_cli =  251
let s:shade6_cli =  252
let s:shade7_cli =  254
let s:shade8_cli =  234
let s:accent0_cli = 150
let s:accent1_cli = 222
let s:accent2_cli = 146
let s:accent3_cli = 168
let s:accent4_cli = 123
let s:accent5_cli = 180

let g:airline#themes#monokai_pro#palette = {}

" Normal mode
let s:N1 = [s:shade1_gui, s:accent4_gui, s:shade1_cli, s:accent4_cli]
let s:N2 = [s:shade7_gui, s:shade2_gui, s:shade7_cli, s:shade2_cli]
let s:N3 = [s:shade5_gui, s:shade1_gui, s:shade5_cli, s:shade1_cli] " inside text
let s:MOD = [s:accent4_gui, s:shade1_gui, s:accent4_cli, s:shade1_cli] " inside text
let g:airline#themes#monokai_pro#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#monokai_pro#palette.normal_modified = {
      \ 'airline_c': s:MOD,
      \ }

" Insert mode
let s:I1 = [s:shade1_gui, s:accent0_gui, s:shade1_cli, s:accent0_cli]
let s:I3 = [s:accent0_gui, s:shade8_gui, s:accent0_cli, s:shade8_cli] " inside text
let g:airline#themes#monokai_pro#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)
let g:airline#themes#monokai_pro#palette.insert_modified = copy(g:airline#themes#monokai_pro#palette.normal_modified)
let g:airline#themes#monokai_pro#palette.insert_paste = {
      \ 'airline_a': [s:shade8_gui, s:accent5_gui, s:shade8_cli, s:accent5_cli, ''],
      \ }

" Replace mode
let s:R1 = [s:shade1_gui, s:accent2_gui, s:shade1_cli, s:accent2_cli]
let s:R3 = [s:accent2_gui, s:shade8_gui, s:accent2_cli, s:shade8_cli] " inside text
let g:airline#themes#monokai_pro#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:R3)
let g:airline#themes#monokai_pro#palette.replace_modified = copy(g:airline#themes#monokai_pro#palette.insert_modified)

" Visual mode
let g:airline#themes#monokai_pro#palette.visual = copy(g:airline#themes#monokai_pro#palette.replace)
let g:airline#themes#monokai_pro#palette.visual_modified = copy(g:airline#themes#monokai_pro#palette.insert_modified)

" Inactive window
let s:IA1 = [s:shade4_gui, s:shade1_gui, s:shade4_cli, s:shade1_cli, '']
let s:IA2 = [s:shade3_gui, s:shade0_gui, s:shade3_cli, s:shade0_cli, '']
let g:airline#themes#monokai_pro#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA1)
let g:airline#themes#monokai_pro#palette.inactive_modified = {
      \ 'airline_c': [s:accent1_gui, '', s:accent1_cli, '', ''],
      \ }

" Warnings
let s:WI = [ s:shade1_gui, s:accent5_gui, s:shade1_cli, s:accent5_cli ]
let g:airline#themes#monokai_pro#palette.normal.airline_warning = [
 \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
 \ ]
let g:airline#themes#monokai_pro#palette.normal_modified.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.insert.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.insert_modified.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.visual.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.visual_modified.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.replace.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning
let g:airline#themes#monokai_pro#palette.replace_modified.airline_warning =
\ g:airline#themes#monokai_pro#palette.normal.airline_warning

" Errors
let s:ER = [ s:shade1_gui, s:accent3_gui, s:shade1_cli, s:accent3_cli ]
let g:airline#themes#monokai_pro#palette.normal.airline_error = [
 \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
 \ ]
let g:airline#themes#monokai_pro#palette.normal_modified.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.insert.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.insert_modified.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.visual.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.visual_modified.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.replace.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
let g:airline#themes#monokai_pro#palette.replace_modified.airline_error =
\ g:airline#themes#monokai_pro#palette.normal.airline_error
