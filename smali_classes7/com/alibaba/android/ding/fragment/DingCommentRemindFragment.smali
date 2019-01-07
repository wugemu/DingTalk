.class public Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;
.super Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;
.source "DingCommentRemindFragment.java"


# instance fields
.field public a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

.field private f:Lbaq$d;

.field private g:Laye;

.field private h:Lbaq$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->h:Lbaq$b;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;)Laye;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->g:Laye;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;Lbaq$d;)Lbaq$d;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;
    .param p1, "x1"    # Lbaq$d;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->f:Lbaq$d;

    return-object p1
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    new-instance v0, Laye;

    invoke-direct {v0, p1}, Laye;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->g:Laye;

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->g:Laye;

    return-object v0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lbap;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->h:Lbaq$b;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    invoke-direct {v0, v1, v2, v3}, Lbap;-><init>(Landroid/app/Activity;Lbaq$b;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;)V

    .line 50
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->f:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->a()V

    .line 55
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->f:Lbaq$d;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->f:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->a()V

    .line 62
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_message_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_new_reply:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->f:Lbaq$d;

    invoke-interface {v0}, Lbaq$d;->i()V

    .line 44
    invoke-super {p0}, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->onDestroy()V

    .line 45
    return-void
.end method
