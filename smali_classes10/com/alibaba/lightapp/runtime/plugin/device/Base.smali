.class public Lcom/alibaba/lightapp/runtime/plugin/device/Base;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Base.java"


# static fields
.field public static final BLUETOOTH_SETTING_REQUEST_CODE:I = 0x1

.field private static final CACHE_TIME:I = 0x493e0

.field private static final JSON_KEY_CACHE_TIME:Ljava/lang/String; = "cacheTime"

.field private static final JSON_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final KEY_RESULT_MESSAGE:Ljava/lang/String; = "resultMessage"

.field private static final KEY_WIFI_LIST:Ljava/lang/String; = "wifiList"

.field public static final LOCATION_SETTING_REQUEST_CODE:I = 0x2

.field private static final RESULT_CODE_DISABLED:I = 0x4

.field private static final RESULT_CODE_JSON_ERROR:I = 0x1

.field private static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final RESULT_CODE_SYS_ERROR:I = 0x2

.field private static final RESULT_CODE_TIMEOUT_ERROR:I = 0x3

.field private static final TIMEOUT_TIME:I = 0x2710

.field private static final ZERO_MAC_IP:Ljava/lang/String; = "00:00:00:00"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ZERO_MAC_IP2:Ljava/lang/String; = "00:00:00:00:00:00"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mBluetoothCallbackId:Ljava/lang/String;

.field private mLocationCallbackId:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;

.field private mWifiScanReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Base;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getConnectWifi(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->notifyWifiScanFail(Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private buildUUIDResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 541
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "uuid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string/jumbo v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const-string/jumbo p1, "en"

    .line 577
    .end local p1    # "language":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 570
    .restart local p1    # "language":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string/jumbo v0, "TW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    const-string/jumbo p1, "zh-Hant"

    goto :goto_0

    .line 574
    :cond_2
    const-string/jumbo p1, "zh-Hans"

    goto :goto_0
.end method

.method private getConnectWifi(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;
    .locals 4
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 211
    if-nez p1, :cond_1

    move-object v1, v2

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 216
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMybssid()Ljava/lang/String;
    move-result-object v0

    .line 218
    .local v0, "macIp":Ljava/lang/String;
    invoke-static {v0}, Lhha;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "macIp":Ljava/lang/String;
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_1
    move-object v1, v2

    .line 223
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getPhoneInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 552
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "screenWidth"

    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    const-string/jumbo v2, "screenHeight"

    invoke-static {p1}, Lcms;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    const-string/jumbo v2, "brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string/jumbo v2, "version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string/jumbo v2, "netInfo"

    invoke-static {p1}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    const-string/jumbo v2, "operatorType"

    invoke-static {}, Lcis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string/jumbo v2, "SIMCard"

    invoke-static {p1}, Lcpj;->c(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-object v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRoot()Z
    .locals 3

    .prologue
    .line 587
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 589
    const/4 v0, 0x0

    .line 596
    .local v0, "res":Z
    :goto_0
    return v0

    .line 591
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "res":Z
    goto :goto_0

    .line 594
    .end local v0    # "res":Z
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "res":Z
    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    const-string/jumbo v5, ""

    .line 534
    :goto_0
    return-object v5

    .line 521
    :cond_0
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 522
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 523
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 526
    .local v4, "messageDigest":[B
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 527
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-byte v0, v4, v5

    .line 528
    .local v0, "aMessageDigest":B
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 527
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    .end local v0    # "aMessageDigest":B
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 531
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "messageDigest":[B
    :catch_0
    move-exception v3

    .line 532
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 534
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method private notifyWifiScanFail(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 5
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "keepCallback"    # Z
    .param p3, "errCode"    # I
    .param p4, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 603
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "resultCode"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 604
    const-string/jumbo v2, "resultMessage"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 612
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, ""

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enableBluetooth(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 436
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 437
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "Bluetooth getDefaultAdapter is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "Bluetooth getDefaultAdapter is null"

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-object v3

    .line 441
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 443
    .local v2, "isSuccess":Z
    if-nez v2, :cond_1

    .line 444
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "Bluetooth enable failed"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 451
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mBluetoothCallbackId:Ljava/lang/String;

    .line 452
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0

    .line 456
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isSuccess":Z
    :cond_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public enableLocation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    invoke-static {}, Lcms;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mLocationCallbackId:Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    .line 476
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public getInterface(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    invoke-static {}, Lhkv;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x4

    const-string/jumbo v7, "wifi disabled"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 130
    :goto_0
    return-object v4

    .line 117
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 119
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getConnectWifi(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 122
    :try_start_1
    const-string/jumbo v4, "ssid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMyssid()Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v4, "macIp"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMybssid()Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :cond_1
    :goto_1
    :try_start_2
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getPhoneInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getPhoneInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    .local v1, "js":Lorg/json/JSONObject;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "js":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getScanWifiList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 15
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-static {}, Lhkv;->a()Z

    move-result v10

    if-nez v10, :cond_0

    .line 160
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x4

    const-string/jumbo v13, "wifi disabled"

    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 207
    :goto_0
    return-object v10

    .line 162
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 163
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 164
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v9, :cond_5

    .line 165
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 166
    .local v6, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getConnectWifi(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 167
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 168
    if-nez v8, :cond_2

    const/4 v7, 0x0

    .line 169
    .local v7, "ssid":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_3

    const/4 v4, 0x0

    .line 170
    .local v4, "macIp":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x1

    .line 172
    .local v0, "addWifi":Z
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 174
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_1

    iget-object v11, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v11}, Lhha;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "ssid"

    iget-object v12, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v11, "macIp"

    iget-object v12, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    iget-object v11, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    .line 180
    const/4 v0, 0x0

    goto :goto_3

    .line 168
    .end local v0    # "addWifi":Z
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "macIp":Ljava/lang/String;
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMyssid()Ljava/lang/String;
    move-result-object v7

    goto :goto_1

    .line 169
    .restart local v7    # "ssid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMybssid()Ljava/lang/String;
    move-result-object v4

    goto :goto_2

    .line 184
    .restart local v0    # "addWifi":Z
    .restart local v4    # "macIp":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 185
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "ssid"

    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v10, "macIp"

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .end local v0    # "addWifi":Z
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "macIp":Ljava/lang/String;
    .end local v6    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v7    # "ssid":Ljava/lang/String;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    :goto_4
    const-string/jumbo v10, "lightapp"

    const-string/jumbo v11, "getScanWifiList"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "getScanWifiList "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v10, v11, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 190
    .restart local v0    # "addWifi":Z
    .restart local v4    # "macIp":Ljava/lang/String;
    .restart local v6    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v7    # "ssid":Ljava/lang/String;
    .restart local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 194
    .end local v0    # "addWifi":Z
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "macIp":Ljava/lang/String;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_5

    .line 196
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "ssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMyssid()Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v10, "macIp"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMybssid()Ljava/lang/String;
    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 200
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 201
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public getScanWifiListAsync(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lhkv;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x4

    const-string/jumbo v6, "wifi disabled"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 329
    :goto_0
    return-object v3

    .line 237
    :cond_0
    const v0, 0x493e0

    .line 238
    .local v0, "cacheTime":I
    const/16 v1, 0x2710

    .line 239
    .local v1, "scanTimeOut":I
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    :cond_1
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "cacheTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "cacheTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 249
    :cond_2
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v3

    int-to-long v4, v0

    .line 1153
    iput-wide v4, v3, Lcit;->b:J

    .line 251
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 283
    .local v2, "timeOutRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/Runnable;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 2119
    iget-wide v6, v3, Lcit;->b:J

    invoke-virtual {v3, v4, v6, v7}, Lcit;->a(Lcit$a;J)V

    .line 329
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public getSettings(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 18
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 357
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "shouldCheckSimulator"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 358
    invoke-static {}, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a()Lcom/alibaba/lightapp/runtime/SecurityGuard;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/alibaba/lightapp/runtime/plugin/device/Base$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a(Landroid/content/Context;Lcma;)V

    .line 390
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v12

    .line 421
    :goto_0
    return-object v12

    .line 392
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 393
    .local v4, "defaultLocale":Ljava/util/Locale;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string/jumbo v13, "pref_locale"

    const-string/jumbo v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "local_str":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 397
    .local v8, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 398
    const-string/jumbo v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "arr":[Ljava/lang/String;
    array-length v12, v2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 400
    const/4 v12, 0x0

    aget-object v9, v2, v12

    .line 401
    .local v9, "language":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v3, v2, v12

    .line 402
    .local v3, "country":Ljava/lang/String;
    const-string/jumbo v12, "language"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->convertLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    .end local v2    # "arr":[Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v9    # "language":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    const-string/jumbo v13, "pref_font_scale"

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v7

    .line 408
    .local v7, "fontSize":F
    const-string/jumbo v12, "enlarge"

    float-to-double v14, v7

    invoke-virtual {v8, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 409
    const-string/jumbo v12, "root"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    invoke-static {v13}, Lcms;->r(Landroid/content/Context;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string/jumbo v13, "bluetooth"

    invoke-static {}, Lcms;->p()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    const-string/jumbo v13, "location"

    invoke-static {}, Lcms;->o()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    .line 413
    .local v11, "rawOffset":I
    const-string/jumbo v12, "localTimeZone"

    div-int/lit16 v13, v11, 0x3e8

    div-int/lit8 v13, v13, 0x3c

    int-to-double v14, v13

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v14, v14, v16

    invoke-virtual {v8, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 414
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->G()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "deviceInfo":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 416
    const-string/jumbo v12, "deviceMsg"

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v5    # "deviceInfo":Ljava/lang/String;
    .end local v7    # "fontSize":F
    .end local v11    # "rawOffset":I
    :cond_2
    :goto_4
    new-instance v12, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v13, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v12, v13, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    :try_start_1
    const-string/jumbo v12, "language"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->convertLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v6

    .line 419
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 410
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v7    # "fontSize":F
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 411
    :cond_5
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public getUUID(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mUUID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "utdid":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mUUID:Ljava/lang/String;

    .line 102
    .end local v0    # "utdid":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mUUID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->buildUUIDResult(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public getWifiStatus(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 335
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 336
    .local v1, "isEnabled":Z
    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 339
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 341
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "status"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v4

    .line 341
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 482
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    if-ne p1, v4, :cond_2

    .line 485
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, ""

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "BLUETOOTH_SETTING_REQUEST_CODE  "

    aput-object v3, v2, v6

    const-string/jumbo v3, "resultCode="

    aput-object v3, v2, v4

    .line 486
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcms;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mBluetoothCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Ljava/lang/String;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string/jumbo v0, "enable bluetooth failed"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mBluetoothCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    if-ne p1, v5, :cond_0

    .line 494
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, ""

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "LOCATION_SETTING_REQUEST_CODE  "

    aput-object v3, v2, v6

    const-string/jumbo v3, "resultCode="

    aput-object v3, v2, v4

    .line 495
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcms;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mLocationCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    const-string/jumbo v0, "enable location service failed"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mLocationCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 507
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mWifiScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mWifiScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->mWifiScanReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    :cond_0
    return-void
.end method
