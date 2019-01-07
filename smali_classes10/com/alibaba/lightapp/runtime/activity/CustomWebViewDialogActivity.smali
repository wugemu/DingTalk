.class public Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;
.super Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
.source "CustomWebViewDialogActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic$a;


# instance fields
.field private a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

.field private b:Ldq;

.field private c:Z

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->finish()V

    .line 93
    sget v0, Lhdn$a;->lightapp_alpha_in:I

    sget v1, Lhdn$a;->alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->overridePendingTransition(II)V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "custom_web_view_dialog_logic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;->getLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->setContentView(I)V

    .line 1097
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1098
    const-string/jumbo v1, "finish_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->b:Ldq;

    .line 1100
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->b:Ldq;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    invoke-interface {v0, p0, p0}, Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;->initView(Landroid/app/Activity;Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic$a;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->a:Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;

    invoke-interface {v0, p0}, Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;->onDestroy(Landroid/app/Activity;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->b:Ldq;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->b:Ldq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 88
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->c:Z

    .line 75
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onResume()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;->c:Z

    .line 66
    return-void
.end method
