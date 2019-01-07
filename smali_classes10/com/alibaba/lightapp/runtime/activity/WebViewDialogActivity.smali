.class public Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;
.super Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
.source "WebViewDialogActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

.field private c:Landroid/app/FragmentManager;

.field private d:Ldq;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->finish()V

    .line 129
    sget v0, Lhdn$a;->lightapp_alpha_in:I

    sget v1, Lhdn$a;->alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->overridePendingTransition(II)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v1, Lhdn$i;->activity_dialog_webview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->setContentView(I)V

    .line 49
    sget v1, Lhdn$h;->dialog_close_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "close":Landroid/view/View;
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->c:Landroid/app/FragmentManager;

    .line 1102
    new-instance v1, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 1114
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhhy;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1116
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1117
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, "?dd_web_timestamp="

    aput-object v3, v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    .line 1104
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 1105
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1106
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Landroid/content/Context;)V

    .line 1107
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1108
    sget v2, Lhdn$h;->webview_container:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1109
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1110
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2089
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2090
    const-string/jumbo v2, "finish_activity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2091
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->d:Ldq;

    .line 2092
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->d:Ldq;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 59
    return-void

    .line 1118
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1119
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, "dd_web_timestamp="

    aput-object v4, v3, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "&"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    goto :goto_0

    .line 1121
    :cond_2
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, "&dd_web_timestamp="

    aput-object v3, v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onDestroy()V

    .line 2096
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->g()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->d:Ldq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->d:Ldq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 86
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->j()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->f()V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onPause()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->b:Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->k()V

    .line 67
    :cond_0
    return-void
.end method
