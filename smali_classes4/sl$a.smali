.class public final Lsl$a;
.super Lrq;
.source "CellPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsl;


# direct methods
.method public constructor <init>(Lsl;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lsl$a;->a:Lsl;

    .line 163
    invoke-direct {p0, p2, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 164
    return-void
.end method

.method private a(Landroid/view/View;Lafn;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "item"    # Lafn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    sget v5, Laxo$f;->icon:I

    invoke-static {p1, v5}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 245
    .local v2, "iconView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-eqz v2, :cond_3

    .line 1148
    iget v0, p2, Lafn;->b:I

    .line 2120
    .local v0, "icon":I
    const/4 v3, 0x0

    .line 248
    .local v3, "iconfont":Ljava/lang/String;
    if-gtz v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 249
    :cond_2
    if-lez v0, :cond_5

    .line 250
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 254
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2152
    :goto_2
    iget v1, p2, Lafn;->d:I

    .line 259
    .local v1, "iconColor":I
    if-eqz v1, :cond_7

    .line 260
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 265
    .end local v0    # "icon":I
    .end local v1    # "iconColor":I
    .end local v3    # "iconfont":Ljava/lang/String;
    :cond_3
    :goto_3
    sget v5, Laxo$f;->description:I

    invoke-static {p1, v5}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 3140
    iget-object v5, p2, Lafn;->c:Ljava/lang/String;

    .line 267
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_4
    new-instance v5, Lsl$a$1;

    invoke-direct {v5, p0, p2}, Lsl$a$1;-><init>(Lsl$a;Lafn;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 252
    .end local v4    # "titleView":Landroid/widget/TextView;
    .restart local v0    # "icon":I
    .restart local v3    # "iconfont":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 256
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2

    .line 262
    .restart local v1    # "iconColor":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_3
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 160
    check-cast p2, Ljava/lang/Integer;

    .line 3168
    iget-object v0, p0, Lsl$a;->a:Lsl;

    invoke-static {v0}, Lsl;->a(Lsl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3169
    if-nez v0, :cond_1

    .line 3170
    :cond_0
    return-void

    .line 3172
    :cond_1
    sget v1, Laxo$f;->divider:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 3173
    invoke-virtual {p1}, Lrr;->a()I

    move-result v2

    .line 3175
    invoke-virtual {p0}, Lsl$a;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 3176
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3181
    :goto_0
    sget v1, Laxo$f;->item_parent:I

    .line 5100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 3181
    check-cast v1, Landroid/view/ViewGroup;

    .line 3182
    sget v2, Laxo$f;->scrollView:I

    .line 6100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 3182
    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 3183
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 3184
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 3186
    :goto_1
    if-le v6, v5, :cond_4

    move v4, v5

    :goto_2
    move v8, v7

    .line 3187
    :goto_3
    if-ge v8, v4, :cond_5

    .line 3188
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3189
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafn;

    .line 3190
    invoke-direct {p0, v9, v3}, Lsl$a;->a(Landroid/view/View;Lafn;)V

    .line 3187
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_3

    .line 3178
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 3184
    goto :goto_1

    :cond_4
    move v4, v6

    .line 3186
    goto :goto_2

    .line 3193
    :cond_5
    if-le v5, v4, :cond_8

    .line 3194
    sub-int v0, v5, v4

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 3204
    :cond_6
    iget-object v0, p0, Lsl$a;->a:Lsl;

    invoke-static {v0}, Lsl;->b(Lsl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lss;->a(Landroid/widget/HorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v7

    .line 3205
    :goto_4
    if-ge v2, v5, :cond_b

    .line 3206
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3207
    if-nez v3, :cond_9

    .line 3205
    :cond_7
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 3196
    :cond_8
    :goto_6
    if-ge v4, v6, :cond_6

    .line 3197
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafn;

    .line 3198
    iget-object v8, p0, Lsl$a;->a:Lsl;

    invoke-virtual {v8}, Lsl;->g()Landroid/content/Context;

    move-result-object v8

    .line 6235
    sget v9, Laxo$g;->cmail_cell_item:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 3199
    invoke-direct {p0, v8, v3}, Lsl$a;->a(Landroid/view/View;Lafn;)V

    .line 3200
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3196
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3210
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3211
    if-eqz v0, :cond_a

    .line 3212
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_7

    .line 3215
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3216
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3221
    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 3218
    :cond_a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3219
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_7

    :cond_b
    move v0, v7

    .line 3224
    :goto_8
    if-ge v0, v5, :cond_0

    .line 3225
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3226
    if-nez v2, :cond_c

    .line 3224
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3229
    :cond_c
    invoke-virtual {v2, v7, v7}, Landroid/view/View;->measure(II)V

    goto :goto_9
.end method
