.class public Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;
.super Landroid/widget/LinearLayout;
.source "WXTitleBorderView.java"


# instance fields
.field public icon:Lcom/taobao/weex/ui/view/WXImageView;

.field mComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field mContext:Landroid/content/Context;

.field mtextLineHeight:I

.field realTextFontSize:I

.field title:Ljava/lang/String;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 30
    invoke-virtual {p0, v6}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->setOrientation(I)V

    .line 32
    new-instance v3, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-direct {v3, p1}, Lcom/taobao/weex/ui/view/WXImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->icon:Lcom/taobao/weex/ui/view/WXImageView;

    .line 33
    const-string/jumbo v3, "textfontsize"

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->realTextFontSize:I

    .line 35
    const-string/jumbo v3, "textlineheight"

    iget v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->realTextFontSize:I

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->mtextLineHeight:I

    .line 37
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->title:Ljava/lang/String;

    .line 38
    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->realTextFontSize:I

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x2

    .line 40
    .local v1, "textwidth":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->mtextLineHeight:I

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v2, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 43
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    .line 44
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 46
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    const-string/jumbo v3, "textcolor"

    const-string/jumbo v5, "#000000"

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    const-string/jumbo v3, "textfontsize"

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(F)F

    move-result v3

    .line 50
    invoke-virtual {v4, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->icon:Lcom/taobao/weex/ui/view/WXImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/WXImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->realTextFontSize:I

    iget v4, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->realTextFontSize:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->icon:Lcom/taobao/weex/ui/view/WXImageView;

    invoke-virtual {v3, v0}, Lcom/taobao/weex/ui/view/WXImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->icon:Lcom/taobao/weex/ui/view/WXImageView;

    invoke-virtual {p0, v3}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->addView(Landroid/view/View;)V

    .line 60
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->addView(Landroid/view/View;)V

    .line 62
    return-void

    .line 37
    .end local v0    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "textwidth":I
    .end local v2    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v3, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXTitleBorderView;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 68
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
