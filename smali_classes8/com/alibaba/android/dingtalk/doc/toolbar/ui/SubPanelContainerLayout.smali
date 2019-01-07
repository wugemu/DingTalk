.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;
.super Landroid/widget/LinearLayout;
.source "SubPanelContainerLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 29
    sget v0, Lbqt$d;->back_button_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->a:Landroid/widget/TextView;

    .line 30
    sget v0, Lbqt$d;->content_pane:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->c:Landroid/widget/FrameLayout;

    .line 31
    sget v0, Lbqt$d;->sub_panel_back_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->b:Landroid/widget/LinearLayout;

    .line 32
    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->c:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 45
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SubPanelContainerLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method
