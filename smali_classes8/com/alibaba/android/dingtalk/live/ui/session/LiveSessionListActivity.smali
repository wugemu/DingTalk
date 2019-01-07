.class public Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveSessionListActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Lbya;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Lbya;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->c:Lbya;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lbtp$f;->activity_live_session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->setContentView(I)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lbtp$g;->dt_lv_live_group:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1047
    :cond_0
    sget v0, Lbtp$e;->session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b:Landroid/widget/ListView;

    .line 1048
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1049
    sget v0, Lbtp$e;->empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->a:Landroid/view/View;

    .line 1051
    new-instance v0, Lbya;

    invoke-direct {v0, p0}, Lbya;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->c:Lbya;

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->c:Lbya;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 1057
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)V

    .line 1082
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1083
    invoke-static {p0, v0}, Lbyn;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 44
    return-void
.end method
