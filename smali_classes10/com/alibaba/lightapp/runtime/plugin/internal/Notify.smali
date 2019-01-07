.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Notify.java"


# instance fields
.field mCheckinReceiver:Landroid/content/BroadcastReceiver;

.field mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

.field mQrScanReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->hideCloseButtonInner()V

    return-void
.end method

.method private handleAutoCheckIn()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alibaba.lightapp.runtime.checkin_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 164
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private handleHostCheckIn(Ljava/lang/String;)V
    .locals 3
    .param p1, "h5Host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alibaba.lightapp.runtime.host_checkin_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private handleQrScan()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "web_view_qr_scan_push_event"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 227
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private hideCloseButtonInner()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    sget v2, Lhdn$h;->dialog_close_button:I

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 281
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "autoCheckIn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleAutoCheckIn()V

    .line 137
    :cond_0
    :goto_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2

    .line 129
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "hostCheckIn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleHostCheckIn(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "qrscanCommonNotify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleQrScan()V

    goto :goto_0
.end method

.method public closeModal(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_im_top_close_new_task_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 251
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method

.method public hideCloseButton(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->hideCloseButtonInner()V

    .line 274
    :goto_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0

    .line 267
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 291
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 296
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mHostCheckinReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 301
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->mQrScanReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    :cond_2
    return-void
.end method

.method public send(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 74
    const-string/jumbo v8, "crm_client_refresh"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const-string/jumbo v0, "action_crm_client_refresh"

    .line 91
    .local v0, "action":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 92
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "internal_action_privacy_agreement"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "privacy_jsapi_notify"

    invoke-interface {v8, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v8, "lg_privacy"

    const-string/jumbo v9, ""

    const-string/jumbo v10, "lg_privacy"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "from jsapi"

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 102
    const-string/jumbo v8, "from"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "data"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 108
    const-string/jumbo v8, "SET_FRIEND_NOTE_AND_LABEL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-eqz v8, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 110
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    .line 111
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_1

    .line 112
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 113
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 115
    :cond_1
    invoke-static {v1, v7}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 121
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    :goto_1
    return-object v8

    .line 76
    :cond_3
    const-string/jumbo v8, "internal_channel_auth_result"

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_4

    instance-of v8, v2, Landroid/app/Activity;

    if-eqz v8, :cond_4

    .line 79
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    check-cast v2, Landroid/app/Activity;

    .end local v2    # "context":Landroid/content/Context;
    invoke-virtual {v8, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 81
    :cond_4
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_1

    .line 82
    :cond_5
    const-string/jumbo v8, "im_robot_change"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 83
    const-string/jumbo v0, "light_app_im_robot_change"

    .restart local v0    # "action":Ljava/lang/String;
    goto/16 :goto_0

    .line 84
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "internal_ding_conference_location_changed"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "internal_ding_conference_date_changed"

    .line 85
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 86
    :cond_7
    const-string/jumbo v0, "internal_ding_conference_location_changed"

    .restart local v0    # "action":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .end local v0    # "action":Ljava/lang/String;
    :cond_8
    move-object v0, v5

    .restart local v0    # "action":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public showModal(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    :goto_0
    return-object v1

    .line 235
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "Context NOT instanceof Activity!!!"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method
