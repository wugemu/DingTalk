.class public Lcom/alibaba/android/ding/fragment/DingUnReadFragment;
.super Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;
.source "DingUnReadFragment.java"


# instance fields
.field public a:Lbaq$d;

.field public f:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

.field protected g:Layg;

.field private h:Lbaq$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingUnReadFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingUnReadFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->h:Lbaq$f;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingUnReadFragment;Lbaq$d;)Lbaq$d;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingUnReadFragment;
    .param p1, "x1"    # Lbaq$d;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    new-instance v0, Layg;

    invoke-direct {v0, p1}, Layg;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->g:Layg;

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->g:Layg;

    return-object v0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    new-instance v0, Lbar;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->h:Lbaq$f;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->f:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    invoke-direct {v0, v1, v2, v3}, Lbar;-><init>(Landroid/app/Activity;Lbaq$f;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;)V

    .line 68
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->a()V

    .line 73
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->a()V

    .line 80
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_doc_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_new_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->c()V

    .line 87
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->i()V

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->onDestroy()V

    .line 39
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->setUserVisibleHint(Z)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->d()V

    .line 49
    :cond_0
    return-void
.end method
