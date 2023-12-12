# BDC_table format
# author: Hung-Lin Chen
# date: 2023-12-10

# 定義一個名為 BDC_gt_theme 的函數
gt_theme_BDC <- function(gt_tbl) {
  gt_tbl |> # 接受一個 gt_tbl 參數
    fmt_number(columns = everything(),
               decimals = 2) |> # 格式化數字，保留兩位小數
    tab_options(table.font.names = "Times New Roman", # 表格字體設置為 Times New Roman
                table.font.size = px(12), # 表格字體大小為 12px
                table.border.top.width = px(0), #表格沒有上框線
                table.border.bottom.width = px(0), #表格沒有下框線
                heading.align = "left", # 表格標題對齊到左邊
                heading.title.font.size = px(14), # 表格標題字體大小為 14px
                heading.border.bottom.color = "black", # 表格標題底部邊框顏色為黑色
                heading.border.bottom.width = px(2), # 表格標題底部邊框大小為 2px
                column_labels.font.weight = "bold", # 列標籤加粗
                column_labels.border.bottom.color = "black", # 列標籤底部邊框顏色為黑色
                column_labels.border.bottom.width = px(2), # 列標籤底部邊框大小為 2px
                table_body.hlines.width = px(0), # 表格主體沒有水平線
                table_body.border.bottom.color = "black", # 表格主體底部邊框顏色為黑色
                table_body.border.bottom.width = px(2), # 表格主體底部邊框大小為 2px
                footnotes.font.size = px(10), # 註腳字體大小為 10px
                footnotes.padding = px(0), # 註腳沒有填充
                footnotes.multiline = TRUE, # 註腳可以多行
                source_notes.font.size = px(10)) |> # 來源註釋字體大小為 10px
    tab_style(style = cell_text(weight = "bold" ), # 設置表格樣式，加粗標題
              locations = cells_title(groups = "title")) |>
    tab_style(style = cell_text(align = "center"), # 設置表格樣式，列標籤居中
              locations = cells_column_labels(columns = everything())) |>
    tab_style(style = cell_text(align = "center"), # 設置表格樣式，表格主體居中
              locations = cells_body(columns = everything(), rows = everything())) |>
    opt_footnote_marks(marks = "letters") # 設置註腳標記為字母
}
