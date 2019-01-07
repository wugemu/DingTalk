.class public Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "CustomerService.java"


# instance fields
.field private mIsRecordingCallbackId:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartRecordCallbackId:Ljava/lang/String;

.field private mStopRecordCallbackId:Ljava/lang/String;

.field private mUploadRecordCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mIsRecordingCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->callbackResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mStartRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mStopRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mUploadRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method private callbackResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    const-string/jumbo v1, "0"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2, p3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 85
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errCode"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_is_deployment_recording_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "action_start_deployment_record_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "action_stop_deployment_record_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "action_try_upload_deployment_records_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public hideQuickEntrance(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_dismiss_deployment_recording"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 162
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public isRecording(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "orderId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 188
    .local v2, "orderId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 189
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "Invalid Parameter!!!"

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v1

    .line 191
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mIsRecordingCallbackId:Ljava/lang/String;

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_is_deployment_recording"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 196
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->registerReceiver()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->unregisterReceiver()V

    .line 44
    return-void
.end method

.method public showQuickEntrance(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "icon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "icon":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "Invalid Parameter!!!"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-object v4

    .line 148
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "action_show_deployment_recording"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v4, "file_icon"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 154
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "orderId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 105
    .local v2, "orderId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 106
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "Invalid Parameter!!!"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-object v4

    .line 108
    :cond_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "Invalid Parameter!!!"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mStartRecordCallbackId:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "action_start_deployment_record"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "orderId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 119
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public stopRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "orderId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 127
    .local v2, "orderId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 128
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "Invalid Parameter!!!"

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-object v1

    .line 130
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mStopRecordCallbackId:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_stop_deployment_record"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 135
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public tryUploadRecords(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "orderId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 170
    .local v2, "orderId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 171
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "Invalid Parameter!!!"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-object v4

    .line 173
    :cond_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->mUploadRecordCallbackId:Ljava/lang/String;

    .line 174
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "force"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    .local v0, "force":Z
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "action_try_upload_deployment_records"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "orderId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    const-string/jumbo v4, "force"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 180
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0
.end method
