.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
.super Landroid/widget/LinearLayout;
.source "ColorSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:[I

.field private c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;

.field private e:Z

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0xd9d9da
        -0xa6a6a7
        -0x737374
        -0x404041
        -0x262627
        -0x161617
        -0x1
        -0x5d63
        -0x446d
        -0x1296f
        -0x375
        -0x491471
        -0x6e2a01
        -0x523a01
        -0x2c5208
        -0xadcd3
        -0x1ade3
        -0x772eb
        -0x623ec
        -0xac3be4
        -0xcb6907
        -0xd2a915
        -0x8bd22e
        -0x30ecdd
        -0x2cc4f1
        -0x2c95f6
        -0x2c4dfa
        -0xc761f1
        -0xf79226
        -0xe2c73d
        -0xade351
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbqt$b;->panel_cell_item_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    .local v0, "padding":I
    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setPadding(IIII)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOrientation(I)V

    .line 53
    sget-object v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->a:[I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setColorSet([I)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;IZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor$2563266(I)V

    return-void
.end method

.method private b()Landroid/widget/TextView;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "deselectionView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    sget v3, Lbqt$f;->dt_doc_deselection_color:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    sget v3, Lbqt$c;->panel_cell_item_bg_selector:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 178
    new-instance v3, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$1;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    .line 186
    .local v1, "padding":I
    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$b;->panel_cell_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbqt$b;->panel_cell_item_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbqt$b;->panel_cell_item_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbqt$b;->panel_cell_item_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 191
    invoke-virtual {p0, v0, v6, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-object v0
.end method

.method private setSelectedColor$2563266(I)V
    .locals 4
    .param p1, "selectedColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    aget v3, v1, v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Lbrv;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;IZ)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;

    invoke-interface {v1, p1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;->a(I)V

    .line 93
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 99
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    aget v1, v3, v0

    .line 103
    .local v1, "selectedColor":I
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor$2563266(I)V

    .line 106
    .end local v0    # "index":I
    .end local v1    # "selectedColor":I
    :cond_0
    return-void
.end method

.method public setColorSet([I)V
    .locals 9
    .param p1, "data"    # [I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 72
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 1118
    :cond_0
    return-void

    .line 1121
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->removeAllViews()V

    .line 1123
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->e:Z

    if-eqz v0, :cond_2

    .line 1124
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1128
    const/4 v2, 0x0

    move v3, v4

    move v1, v5

    .line 1130
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 1131
    div-int/lit8 v0, v3, 0x8

    .line 1133
    if-eq v1, v0, :cond_3

    .line 1157
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1158
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1159
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1160
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lbqt$c;->tool_panel_vertical_divider:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    sget v2, Lbqt$c;->panel_cell_item_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$b;->panel_cell_item_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$b;->panel_cell_item_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1167
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$b;->panel_cell_item_vertical_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1168
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    aput-object v6, v2, v3

    .line 1139
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    sget v6, Lbqt$f;->icon_round_fill:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1140
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    sget v6, Lbqt$c;->color_bg_selector:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundResource(I)V

    .line 1142
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 1143
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b:[I

    aget v6, v6, v3

    invoke-static {v2, v6, v4}, Lbrv;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;IZ)V

    .line 1145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v2, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    .line 1146
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2, v2, v2, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setPadding(IIII)V

    .line 1147
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v8, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 1149
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1151
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1152
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->c:[Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public setDeselectionVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->e:Z

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->e:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->removeView(Landroid/view/View;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->f:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;

    .line 110
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor$2563266(I)V

    .line 81
    return-void
.end method
