.class public Lcom/alibaba/android/dingtalkui/button/DtSearchButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "DtSearchButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget v1, Lecj$d;->ui_common_search_bg:I

    invoke-static {v1}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget v1, Lecj$c;->dp14:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    sget v2, Lecj$c;->dp14:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setPadding(IIII)V

    .line 32
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setGravity(I)V

    .line 34
    sget v1, Lecj$b;->ui_common_level3_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setTextColor(I)V

    .line 35
    sget v1, Lecj$c;->dp16:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setTextSize(IF)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setSingleLine(Z)V

    .line 37
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setLines(I)V

    .line 38
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    new-instance v0, Lecw;

    sget v1, Lecj$g;->icon_search:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lecj$b;->ui_common_level1_icon_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v0, "iconFontDrawable":Lecw;
    sget v1, Lecj$c;->dp16:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 1079
    iput v1, v0, Lecw;->b:I

    .line 42
    sget v1, Lecj$c;->dp16:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 2070
    iput v1, v0, Lecw;->a:I

    .line 43
    invoke-virtual {p0, v0, v4, v4, v4}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    sget v1, Lecj$c;->dp8:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setCompoundDrawablePadding(I)V

    .line 45
    return-void
.end method
