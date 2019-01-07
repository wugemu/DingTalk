.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Beacon.java"


# static fields
.field public static final BLUETOOTH_LE_SUPPORT:Ljava/lang/String; = ""


# instance fields
.field private mBeaconDetectReceiver:Landroid/content/BroadcastReceiver;

.field private mBeaconIds:Lorg/json/JSONArray;

.field private mBeaconScanListener:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

.field private mBindCallbackId:Ljava/lang/String;

.field private mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

.field private mCallbackId:Ljava/lang/String;

.field private mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconScanListener:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBindCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private checkBleAvailability()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhdn$k;->dt_at_beacon_no_support_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhdn$k;->dt_at_beacon_no_support_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhdn$k;->dt_at_beacon_no_support_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconDetectReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "beacon_detect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconDetectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 263
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconDetectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconDetectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 117
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBindCallbackId:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 123
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_0

    .line 1488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 123
    if-eqz v3, :cond_0

    .line 2488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "invalid corpId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 153
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v2    # "session":Lhqe$d;
    :goto_0
    return-object v3

    .line 129
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v2    # "session":Lhqe$d;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->checkBleAvailability()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "bleAvailability":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/beacon/beacon_detect.html"

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 153
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0

    .line 139
    :cond_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x4

    .line 140
    invoke-static {v5, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 144
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "bleAvailability":Ljava/lang/String;
    .end local v2    # "session":Lhqe$d;
    :cond_2
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "invalid corpId"

    .line 145
    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 149
    :cond_3
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "invalid context"

    .line 150
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public detectStart(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 164
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "beaconUUIDs"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 165
    .local v1, "beaconIds":Lorg/json/JSONArray;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "interval"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 168
    if-nez v1, :cond_0

    .line 169
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v8, "invalid param"

    invoke-static {v9, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 192
    :goto_0
    return-object v6

    .line 171
    :cond_0
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    .line 172
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mCallbackId:Ljava/lang/String;

    .line 173
    const-string/jumbo v6, "BLUETOOTH"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 175
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->checkBleAvailability()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "bleAvailability":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 179
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 180
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "beaconId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    new-instance v5, Lorg/altbeacon/beacon/Region;

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-direct {v5, v0, v6, v8, v8}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    .line 183
    .local v5, "region":Lorg/altbeacon/beacon/Region;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconScanListener:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    invoke-interface {v6, v5, v7}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->startBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    .line 179
    .end local v5    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "beaconId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v9, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_0
.end method

.method public detectStop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 205
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconScanListener:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_0

    .line 208
    .end local v0    # "region":Lorg/altbeacon/beacon/Region;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    .line 210
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 216
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->registerReceiver()V

    .line 217
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 233
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBluetoothMagician:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconScanListener:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_0

    .line 236
    .end local v0    # "region":Lorg/altbeacon/beacon/Region;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->mBeaconIds:Lorg/json/JSONArray;

    .line 238
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->unregisterReceiver()V

    .line 239
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 240
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onResume()V

    .line 227
    return-void
.end method
