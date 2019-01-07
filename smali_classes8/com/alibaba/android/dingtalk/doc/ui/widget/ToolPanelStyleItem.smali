.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;
.super Landroid/widget/RelativeLayout;
.source "ToolPanelStyleItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 51
    sget v0, Lbqt$d;->panel_cell_style_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->a:Landroid/widget/TextView;

    .line 52
    sget v0, Lbqt$d;->panel_cell_style_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    .line 53
    sget v0, Lbqt$d;->panel_cell_style_title_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 54
    sget v0, Lbqt$d;->panel_cell_style_icon_fl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->d:Landroid/widget/FrameLayout;

    .line 55
    return-void
.end method

.method public setBorderStyleIcon(I)V
    .locals 4
    .param p1, "borderStyle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->d:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_thin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 88
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_medium:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_dashed:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_dotted:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_thick:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_double:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_hair:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 112
    :cond_8
    const/16 v1, 0x8

    if-ne p1, v1, :cond_9

    .line 114
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_medium_dashed:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 116
    :cond_9
    const/16 v1, 0x9

    if-ne p1, v1, :cond_a

    .line 118
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_dash_dot:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 120
    :cond_a
    const/16 v1, 0xa

    if-ne p1, v1, :cond_b

    .line 122
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_medium_dash_dot:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 124
    :cond_b
    const/16 v1, 0xb

    if-ne p1, v1, :cond_c

    .line 126
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_dash_dot_dot:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 128
    :cond_c
    const/16 v1, 0xc

    if-ne p1, v1, :cond_d

    .line 130
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_medium_dash_dot_dot:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 132
    :cond_d
    const/16 v1, 0xd

    if-ne p1, v1, :cond_e

    .line 134
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    sget v2, Lbqt$c;->border_style_slanted_dash_dot:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 136
    :cond_e
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 61
    :cond_0
    return-void
.end method
