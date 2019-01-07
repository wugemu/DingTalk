.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
.super Landroid/widget/RelativeLayout;
.source "ToolPanelColorItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 30
    sget v0, Lbqt$d;->panel_cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->a:Landroid/widget/TextView;

    .line 31
    sget v0, Lbqt$d;->panel_cell_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 32
    sget v0, Lbqt$d;->panel_cell_title_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 33
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lbrv;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;IZ)V

    .line 45
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 39
    :cond_0
    return-void
.end method
