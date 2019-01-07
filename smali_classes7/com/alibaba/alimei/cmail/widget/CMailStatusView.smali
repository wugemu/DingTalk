.class public Lcom/alibaba/alimei/cmail/widget/CMailStatusView;
.super Landroid/widget/FrameLayout;
.source "CMailStatusView.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->c:I

    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->c:I

    .line 49
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->c:I

    .line 54
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a()V

    .line 55
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxo$g;->cmail_status_view:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000d

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a:Landroid/widget/ProgressBar;

    .line 60
    sget v1, Laxo$f;->status_view_icon:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 61
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 65
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->c:I

    if-ne v0, p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_0
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->c:I

    .line 70
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
