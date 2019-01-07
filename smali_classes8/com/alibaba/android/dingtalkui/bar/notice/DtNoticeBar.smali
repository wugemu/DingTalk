.class public Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;
.source "DtNoticeBar.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a()V

    .line 33
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
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a()V

    .line 43
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1059
    sget v0, Lecj$e;->if_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 1060
    sget v0, Lecj$e;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->b:Landroid/widget/TextView;

    .line 1061
    sget v0, Lecj$e;->fl_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->c:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$d;->_ui_private_notice_bar_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$d;->_ui_private_close_btn_fg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 66
    sget v0, Lecj$f;->_ui_private_notice_bar_layout:I

    return v0
.end method

.method public setBarOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setStyle(Lecr;)V
    .locals 3
    .param p1, "style"    # Lecr;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-interface {p1}, Lecr;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setBackgroundColor(I)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-interface {p1}, Lecr;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->a:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-interface {p1}, Lecr;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextColor(I)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lecr;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
