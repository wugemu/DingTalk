.class public Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "ATMBle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;
    }
.end annotation


# static fields
.field private static final CHECK_IN_UPLOAD_FAIL:I = 0xb

.field private static final NO_DEVICE_NEAR_BY:I = 0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAtmListener:Lhgg$c;

.field private mCorpIdCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lhiu;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Lhiu;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->createResultDeviceObject(Lhiu;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private createResultDeviceObject(Lhiu;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "infoModel"    # Lhiu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    .line 246
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "corpId"

    iget-object v3, p1, Lhiu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string/jumbo v2, "deviceUid"

    iget-wide v4, p1, Lhiu;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v2, "deviceName"

    iget-object v3, p1, Lhiu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v2, "lightapp"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "createResultDeviceObject deviceUid="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lhiu;->b:J

    .line 253
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkIn(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 188
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 189
    .local v0, "checkInCallbackName":Ljava/lang/String;
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "deviceUid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "deviceUidStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 191
    const-wide/16 v2, 0x0

    .line 193
    .local v2, "deviceUid":J
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 6049
    :goto_0
    sget-object v8, Lhgg$d;->a:Lhgg;

    .line 6455
    iget-object v7, v8, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    if-eqz v7, :cond_1

    .line 6456
    iget-object v7, v8, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getAllFoundDevices()Ljava/util/List;

    move-result-object v7

    .line 6457
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 6458
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 6459
    if-eqz v7, :cond_0

    .line 6462
    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceUid:J

    cmp-long v10, v10, v2

    if-nez v10, :cond_0

    .line 6464
    invoke-static {v7}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v9

    .line 6465
    iget-object v8, v8, Lhgg;->e:Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v7

    .line 199
    .local v1, "destDevice":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    :cond_1
    if-eqz v1, :cond_3

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "planId":Ljava/lang/Long;
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "planId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    :try_start_1
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "planId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 7049
    :cond_2
    :goto_1
    sget-object v7, Lhgg$d;->a:Lhgg;

    .line 209
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;

    invoke-direct {v9, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Ljava/lang/String;)V

    invoke-virtual {v7, v1, v8, v6, v9}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V

    .line 232
    .end local v6    # "planId":Ljava/lang/Long;
    :goto_2
    const-string/jumbo v7, "lightapp"

    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ATMBle checkIn deviceUid="

    aput-object v11, v9, v10

    aput-object v4, v9, v12

    .line 233
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v1    # "destDevice":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .end local v2    # "deviceUid":J
    :goto_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v7

    return-object v7

    .line 194
    .restart local v2    # "deviceUid":J
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 204
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "destDevice":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .restart local v6    # "planId":Ljava/lang/Long;
    :catch_1
    move-exception v5

    .line 205
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "planId":Ljava/lang/Long;
    :cond_3
    const/16 v7, 0xc

    const-string/jumbo v8, "No device nearby"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p0, v7, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 235
    .end local v1    # "destDevice":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .end local v2    # "deviceUid":J
    :cond_4
    const-string/jumbo v7, "Device uid can not be null"

    invoke-static {v13, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p0, v7, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v7, "lightapp"

    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "ATMBle checkIn Device uid is null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mAtmListener:Lhgg$c;

    .line 1049
    sget-object v0, Lhgg$d;->a:Lhgg;

    .line 106
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mAtmListener:Lhgg$c;

    invoke-virtual {v0, v1}, Lhgg;->a(Lhgg$c;)V

    .line 107
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0    # "callbackId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 121
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mAtmListener:Lhgg$c;

    if-eqz v1, :cond_4

    .line 2049
    sget-object v1, Lhgg$d;->a:Lhgg;

    .line 125
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mAtmListener:Lhgg$c;

    .line 2119
    if-eqz v2, :cond_3

    .line 2120
    iget-object v3, v1, Lhgg;->d:Ljava/util/List;

    monitor-enter v3

    .line 2121
    :try_start_0
    iget-object v1, v1, Lhgg;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2122
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_3
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mAtmListener:Lhgg$c;

    .line 129
    :cond_4
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 130
    return-void

    .line 2122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startMonitor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 134
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 137
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_0

    .line 2488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 137
    if-eqz v3, :cond_0

    .line 3488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "invalid corpId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 156
    .end local v2    # "session":Lhqe$d;
    :goto_0
    return-object v3

    .line 143
    .restart local v2    # "session":Lhqe$d;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4049
    :cond_1
    sget-object v3, Lhgg$d;->a:Lhgg;

    .line 146
    invoke-virtual {v3, v0}, Lhgg;->a(Ljava/lang/String;)Lhiu;

    move-result-object v1

    .line 147
    .local v1, "infoModel":Lhiu;
    if-eqz v1, :cond_2

    .line 148
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->createResultDeviceObject(Lhiu;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 154
    .end local v1    # "infoModel":Lhiu;
    .end local v2    # "session":Lhqe$d;
    :cond_2
    :goto_1
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ATMBle startMonitor !"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0

    .line 151
    :cond_3
    const-string/jumbo v3, "Parameter invalid"

    invoke-static {v7, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopMonitor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 161
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 165
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_0

    .line 4488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 165
    if-eqz v3, :cond_0

    .line 5488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "invalid corpId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 182
    .end local v2    # "session":Lhqe$d;
    :goto_0
    return-object v3

    .line 170
    .restart local v2    # "session":Lhqe$d;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->mCorpIdCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->success(Ljava/lang/String;)V

    .line 177
    .end local v0    # "callbackId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ATMBle stopMonitor corpId="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 180
    .end local v2    # "session":Lhqe$d;
    :cond_2
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ATMBle stopMonitor Parameter invalid !"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "Parameter invalid"

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
