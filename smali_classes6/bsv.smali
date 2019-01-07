.class public final Lbsv;
.super Lbsu;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsv$i;,
        Lbsv$j;,
        Lbsv$h;,
        Lbsv$d;,
        Lbsv$f;,
        Lbsv$g;,
        Lbsv$b;,
        Lbsv$c;,
        Lbsv$k;,
        Lbsv$e;,
        Lbsv$a;
    }
.end annotation


# instance fields
.field c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

.field final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbsy$a;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbsy$b;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field final g:Z

.field h:Z

.field private i:Landroid/support/v7/app/AlertDialog;

.field private j:Ljava/lang/Integer;

.field private final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbsy$b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbsy$b;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbsy$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbsw$e;Lbsw$b;Ljava/lang/String;)V
    .locals 3
    .param p2, "dataSource"    # Lbsw$b;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsw$e",
            "<",
            "Lbsw$c;",
            ">;",
            "Lbsw$b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "view":Lbsw$e;, "Lbsw$e<Lbsw$c;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Lbsu;-><init>(Lbsw$e;Lbsw$b;)V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbsv;->k:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbsv;->d:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbsv;->l:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbsv;->e:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbsv;->m:Ljava/util/HashSet;

    .line 90
    iput-boolean v2, p0, Lbsv;->f:Z

    .line 95
    iput-boolean v2, p0, Lbsv;->h:Z

    .line 98
    iput-boolean v2, p0, Lbsv;->n:Z

    .line 100
    const-string/jumbo v0, "bindDevice"

    iput-object v0, p0, Lbsv;->o:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "resetWifi"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lbsv;->g:Z

    .line 108
    iput-object p3, p0, Lbsv;->o:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static G()Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .locals 2

    .prologue
    .line 1187
    new-instance v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;

    invoke-direct {v0}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;-><init>()V

    .line 1188
    .local v0, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;->a:Ljava/lang/Integer;

    .line 1189
    return-object v0
.end method

.method private static H()Z
    .locals 3

    .prologue
    .line 823
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "device_manager_check_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lbsv;)I
    .locals 1
    .param p0, "x0"    # Lbsv;

    .prologue
    .line 75
    .line 6572
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 6573
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->s()I

    move-result v0

    :goto_0
    return v0

    .line 6575
    :cond_0
    const/4 v0, 0x0

    .line 75
    goto :goto_0
.end method

.method static a(Ljava/lang/String;II)Lbsj;
    .locals 11
    .param p0, "devSecretKey"    # Ljava/lang/String;
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1407
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1409
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "major"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1410
    const-string/jumbo v6, "minor"

    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1411
    const-string/jumbo v6, "secret"

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/security/proc/tools/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1414
    .local v4, "key":[B
    invoke-static {p0}, Lcom/taobao/security/proc/tools/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1416
    .local v2, "ivData":[B
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v4, v2}, Lbtg;->a([B[B[B)[B

    move-result-object v0

    .line 1418
    .local v0, "ciphertext":[B
    new-instance v5, Lbsj;

    invoke-direct {v5}, Lbsj;-><init>()V

    .line 1419
    .local v5, "model":Lbsj;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lbsj;->a:Ljava/lang/Integer;

    .line 1420
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lbsj;->b:Ljava/lang/Boolean;

    .line 1421
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lbsj;->c:Ljava/lang/Integer;

    .line 1422
    iput-object v0, v5, Lbsj;->d:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    .end local v0    # "ciphertext":[B
    .end local v2    # "ivData":[B
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "key":[B
    .end local v5    # "model":Lbsj;
    :goto_0
    return-object v5

    .line 1425
    :catch_0
    move-exception v1

    .line 1426
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    const-string/jumbo v6, "BleBind"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "createHandShakeEndorseModel exception:"

    aput-object v8, v7, v9

    .line 1428
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1427
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "needHandShake"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1209
    if-nez p1, :cond_0

    .line 1210
    const-string/jumbo v2, "BleBind"

    const-string/jumbo v3, "connectBluetoothReal fail, device is null"

    invoke-static {v2, v3}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :goto_0
    return-void

    .line 1213
    :cond_0
    const-string/jumbo v2, "BleBind"

    const-string/jumbo v3, "connectBluetoothReal"

    invoke-static {v2, v3}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v2, "BLUETOOTH"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 1217
    .local v0, "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    invoke-interface {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->generateBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const-string/jumbo v3, "0000fe1c-0000-1000-8000-00805f9b34fb"

    .line 1218
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildWriteCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const-string/jumbo v3, "0000fe1b-0000-1000-8000-00805f9b34fb"

    .line 1219
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildReadCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const/4 v3, 0x1

    .line 1220
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildContinuedNotification(Z)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    .line 1222
    new-instance v1, Lbsv$6;

    invoke-direct {v1, p0, p3, p2}, Lbsv$6;-><init>(Lbsv;ZLcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    .line 1321
    .local v1, "bluetoothStateListener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    const-string/jumbo v3, "0000fe3c-0000-1000-8000-00805f9b34fb"

    const-class v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1322
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v5, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 1321
    invoke-interface {v0, p1, v3, v4, v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iput-object v2, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    goto :goto_0
.end method

.method static synthetic a(Lbsv;Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V
    .locals 0
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p3, "x3"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lbsv;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V

    return-void
.end method

.method static synthetic a(Lbsv;Lbsa;Lbsy$b;)V
    .locals 10
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lbsa;
    .param p2, "x2"    # Lbsy$b;

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 3511
    invoke-virtual {p0}, Lbsv;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3512
    if-eqz p2, :cond_0

    .line 3513
    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 3515
    :cond_0
    :goto_0
    return-void

    .line 3518
    :cond_1
    sget v0, Lbrx$g;->dt_door_guard_request_active_device:I

    invoke-virtual {p0, v0, v1}, Lbsv;->a(IZ)V

    .line 3520
    iget-object v0, p1, Lbsa;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p1, Lbsa;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p1, Lbsa;->d:Ljava/lang/String;

    new-instance v0, Lbsv$10;

    invoke-direct {v0, p0, p1, p2}, Lbsv$10;-><init>(Lbsv;Lbsa;Lbsy$b;)V

    .line 4103
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "start active"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    const-string/jumbo v1, "BleBind"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v1, Lbsv$a;

    .line 4105
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v7, Lbsy$b;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v2, v0, v7, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbsy$b;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbsv$a;-><init>(Lbsv;IJLjava/lang/String;Lbsy$b;)V

    .line 4104
    invoke-interface {v8, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lbsv;Lbsj;Lbsy$b;)V
    .locals 6
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lbsj;
    .param p2, "x2"    # Lbsy$b;

    .prologue
    .line 75
    .line 5945
    new-instance v0, Lbsv$3;

    invoke-direct {v0, p0, p2}, Lbsv$3;-><init>(Lbsv;Lbsy$b;)V

    .line 5956
    const-string/jumbo v1, "BleBind"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbsv$g;

    .line 5957
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lbsy$b;

    .line 5958
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v5

    .line 5957
    invoke-interface {v3, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    invoke-direct {v2, p0, p1, v0}, Lbsv$g;-><init>(Lbsv;Lbsj;Lbsy$b;)V

    .line 5956
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lbsv;Lbsy$b;)V
    .locals 6
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lbsy$b;

    .prologue
    .line 75
    .line 8000
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start getDeviceInfo"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8001
    new-instance v0, Lbsv$4;

    invoke-direct {v0, p0, p1}, Lbsv$4;-><init>(Lbsv;Lbsy$b;)V

    .line 8025
    const-string/jumbo v1, "BleBind"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbsv$e;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lbsv$h;

    .line 8026
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v5

    .line 8025
    invoke-interface {v3, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsv$h;

    invoke-direct {v2, p0, v0}, Lbsv$e;-><init>(Lbsv;Lbsv$h;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V
    .locals 0
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .param p2, "x2"    # Lbsv$i;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V

    return-void
.end method

.method static synthetic a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V
    .locals 2
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    .prologue
    .line 75
    .line 6153
    if-eqz p1, :cond_6

    .line 6154
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_6

    .line 6155
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 6156
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->a(Z)V

    .line 6159
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 6160
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->b(Z)V

    .line 6163
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6164
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->c(Z)V

    .line 6167
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6168
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->d(Ljava/lang/String;)V

    .line 6171
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 6172
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->e(Ljava/lang/String;)V

    .line 6175
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 6176
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->e(Z)V

    .line 6179
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 6180
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->f(Z)V

    .line 75
    :cond_6
    return-void
.end method

.method static synthetic a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
    .locals 0
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p3, "x3"    # Lbsy$b;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    return-void
.end method

.method static synthetic a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
    .locals 4
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p5, "x5"    # Lbsy$b;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    .line 5965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5966
    :cond_0
    sget v0, Lbrx$g;->and_conf_txt_no_network:I

    invoke-virtual {p0, v0}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsv;->a(Ljava/lang/String;)V

    .line 5968
    if-eqz p5, :cond_1

    .line 5969
    invoke-interface {p5, v2, v3}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 5981
    .end local p3    # "x3":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 5973
    .restart local p3    # "x3":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "device_not_exist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsv;->h:Z

    .line 5975
    invoke-static {p4}, Lbsv;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5976
    invoke-direct {p0, p1}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V

    goto :goto_0

    .line 5979
    :cond_3
    invoke-virtual {p0}, Lbsv;->o()V

    goto :goto_0

    .line 6068
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5983
    invoke-static {v0, p2}, Lbta;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5984
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5987
    .end local p3    # "x3":Ljava/lang/String;
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5988
    const-string/jumbo p3, "unknow error"

    .line 5990
    :cond_5
    invoke-virtual {p0, p3}, Lbsv;->a(Ljava/lang/String;)V

    .line 5992
    if-eqz p5, :cond_1

    .line 5993
    invoke-interface {p5, v2, v3}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .restart local p3    # "x3":Ljava/lang/String;
    :cond_6
    move-object p3, v0

    goto :goto_1
.end method

.method static synthetic a(Lbsv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 3498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3499
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    const-string/jumbo v1, "spm"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3502
    iget-object v1, p0, Lbsv;->b:Lbsw$b;

    if-eqz v1, :cond_0

    .line 3503
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3504
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3506
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Org"

    invoke-interface {v1, v2, p1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lbsv;Z)V
    .locals 1
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsv;->a(Z)V

    return-void
.end method

.method static synthetic a(Lbsv;ZLjava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 4384
    iget-object v0, p0, Lbsv;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    .line 4385
    invoke-interface {v0, p1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .param p2, "featureListener"    # Lbsv$i;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1110
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start getDeviceFeature"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string/jumbo v0, "BleBind"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbsv$f;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v3, Lbsv$i;

    .line 1112
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v4

    .line 1111
    invoke-interface {v0, p2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsv$i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lbsv$f;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;B)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1113
    return-void
.end method

.method private a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V
    .locals 3
    .param p1, "client"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1326
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "start handleDeviceReset"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbsv;->a(Z)V

    .line 1331
    invoke-static {}, Lbsv;->G()Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;

    move-result-object v0

    .line 1333
    .local v0, "featureReqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    new-instance v1, Lbsv$7;

    invoke-direct {v1, p0, p1}, Lbsv$7;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V

    invoke-direct {p0, v0, v1}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V

    .line 1402
    return-void
.end method

.method private a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
    .locals 7
    .param p1, "client"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;
    .param p2, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lbsy$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 897
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "start handShakeForSecret"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-instance v0, Lbsv$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lbsv$2;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    .line 939
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v2

    iget v1, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 940
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v5, Lcma;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v1, v0, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 939
    invoke-virtual {v2, v3, v4, v1}, Lbso;->a(Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V

    .line 941
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "result"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 409
    iget-object v1, p0, Lbsv;->m:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    .line 410
    .local v0, "listener":Lbsy$b;
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v0    # "listener":Lbsy$b;
    :cond_0
    return-void
.end method

.method static synthetic a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z
    .locals 1
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .prologue
    .line 75
    .line 5142
    iget-object v0, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbsv;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-ne p1, v0, :cond_0

    .line 5143
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5145
    :cond_0
    const/4 v0, 0x0

    .line 75
    goto :goto_0
.end method

.method static a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z
    .locals 2
    .param p0, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    const/4 v0, 0x0

    .line 813
    if-nez p0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->devAttr:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lbsv;Lbsj;Lbsy$b;)V
    .locals 5
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lbsj;
    .param p2, "x2"    # Lbsy$b;

    .prologue
    .line 75
    .line 9117
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start resetDevice"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9118
    const-string/jumbo v0, "BleBind"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbsv$d;

    .line 9119
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v3, Lbsy$b;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v0, p2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    invoke-direct {v2, p0, p1, v0}, Lbsv$d;-><init>(Lbsv;Lbsj;Lbsy$b;)V

    .line 9118
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method static synthetic b(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V
    .locals 0
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V

    return-void
.end method

.method static synthetic b(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
    .locals 6
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p3, "x3"    # Lbsy$b;

    .prologue
    .line 75
    .line 6828
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start handShake"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6830
    invoke-static {}, Lbsv;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6839
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start handShakeForEndorse"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6840
    new-instance v0, Lbsv$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lbsv$15;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    .line 6882
    new-instance v1, Lbsf;

    invoke-direct {v1}, Lbsf;-><init>()V

    .line 6883
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbsf;->a:Ljava/lang/Integer;

    .line 6884
    iget v2, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbsf;->e:Ljava/lang/Integer;

    .line 6885
    iget v2, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbsf;->f:Ljava/lang/Integer;

    .line 6886
    iget v2, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceTypeCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbsf;->c:Ljava/lang/Integer;

    .line 6887
    iget v2, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbsf;->b:Ljava/lang/Integer;

    .line 6888
    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lbsf;->d:Ljava/lang/Long;

    .line 6890
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v2

    .line 6891
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    .line 6892
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v5

    .line 6891
    invoke-interface {v3, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7224
    new-instance v3, Lbso$4;

    invoke-direct {v3, v2, v0}, Lbso$4;-><init>(Lbso;Lcma;)V

    .line 7230
    const-class v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-interface {v0, v1, v3}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->getDeviceEndorsementV2(Lbsf;Liyv;)V

    .line 6831
    :goto_0
    return-void

    .line 6833
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    goto :goto_0
.end method

.method static synthetic b(Lbsv;ZLjava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lbsv;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 8400
    iget-object v0, p0, Lbsv;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    .line 8401
    invoke-interface {v0, p1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    .prologue
    .line 367
    invoke-virtual {p0}, Lbsv;->B()V

    .line 368
    return-void
.end method

.method public final B()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "needFinish":Z
    iget-boolean v1, p0, Lbsv;->g:Z

    if-eqz v1, :cond_0

    .line 375
    const/4 v0, 0x1

    .line 378
    :cond_0
    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lbsv;->m()V

    .line 381
    :cond_1
    return-void
.end method

.method public final C()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 768
    const-string/jumbo v3, "BleBind"

    const-string/jumbo v4, "start connnectWire"

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v1, Lbsv$14;

    invoke-direct {v1, p0}, Lbsv$14;-><init>(Lbsv;)V

    .line 790
    .local v1, "resultListener":Lbsy$b;
    const/4 v0, 0x0

    .line 791
    .local v0, "config":Lbsm;
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-eqz v3, :cond_0

    .line 792
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->q()Lbsm;

    move-result-object v0

    .line 795
    :cond_0
    const/4 v2, 0x0

    .line 796
    .local v2, "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    if-eqz v0, :cond_1

    .line 797
    new-instance v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .end local v2    # "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    invoke-direct {v2}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;-><init>()V

    .line 798
    .restart local v2    # "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    iget-object v3, v0, Lbsm;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->a:Ljava/lang/String;

    .line 799
    iget-object v3, v0, Lbsm;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->b:Ljava/lang/String;

    .line 800
    iget-object v3, v0, Lbsm;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->c:Ljava/lang/String;

    .line 801
    iget-object v3, v0, Lbsm;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->d:Ljava/lang/String;

    .line 802
    iget-object v3, v0, Lbsm;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->e:Ljava/lang/String;

    .line 805
    :cond_1
    const-string/jumbo v3, "BleBind"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lbsv$c;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v6, Lbsy$b;

    .line 806
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v7

    .line 805
    invoke-interface {v3, v1, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsy$b;

    invoke-direct {v5, p0, v2, v3}, Lbsv$c;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;Lbsy$b;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->k()Z

    move-result v0

    .line 1082
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->m()Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method F()Z
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbsv;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 136
    invoke-virtual {p0}, Lbsv;->j()V

    .line 137
    const/4 v2, 0x0

    invoke-static {v2}, Lbtk;->a(Z)V

    .line 139
    iget-boolean v2, p0, Lbsv;->g:Z

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lbsv;->b:Lbsw$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-static {}, Lbsn;->a()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lbsn;->b()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "subStep":Ljava/lang/String;
    const/4 v0, 0x0

    .line 145
    .local v0, "errorCode":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    const-string/jumbo v0, "1001"

    .line 158
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lbsn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-boolean v2, p0, Lbsv;->f:Z

    if-nez v2, :cond_4

    .line 149
    const-string/jumbo v0, "1000"

    goto :goto_1

    .line 151
    :cond_4
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    const-string/jumbo v0, "1002"

    goto :goto_1

    .line 153
    :cond_5
    const-string/jumbo v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const-string/jumbo v0, "1003"

    goto :goto_1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 583
    invoke-virtual {p0}, Lbsv;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string/jumbo v3, "BleBind"

    const-string/jumbo v4, "connnectBluetooth"

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lbsv;->j()V

    .line 591
    iget-boolean v3, p0, Lbsv;->g:Z

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->status:I

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 593
    .local v2, "needHandShake":Z
    :goto_1
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-eqz v3, :cond_1

    .line 594
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    iget v4, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceTypeCode:I

    invoke-interface {v3, v4}, Lbsw$b;->a(I)V

    .line 595
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    iget v4, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    invoke-interface {v3, v4}, Lbsw$b;->b(I)V

    .line 596
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-interface {v3, v4, v5}, Lbsw$b;->a(J)V

    .line 597
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3, v2}, Lbsw$b;->j(Z)V

    .line 598
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    iget-object v4, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lbsw$b;->h(Ljava/lang/String;)V

    .line 602
    :cond_1
    iget-boolean v3, p0, Lbsv;->g:Z

    if-eqz v3, :cond_3

    .line 603
    invoke-static {}, Lbsv;->H()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    const-string/jumbo v3, "BleBind"

    const-string/jumbo v4, "start checkDeviceManager"

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lbsv$11;

    invoke-direct {v0, p0, p1, p2, v2}, Lbsv$11;-><init>(Lbsv;Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V

    .line 632
    .local v0, "apiEventListener":Lcma;, "Lcma<Lbsb;>;"
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v4

    iget v3, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 633
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v7, Lcma;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v3, v0, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 2234
    new-instance v7, Lbso$5;

    invoke-direct {v7, v4, v3}, Lbso$5;-><init>(Lbso;Lcma;)V

    .line 2240
    const-class v3, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->checkDeviceManager(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    goto/16 :goto_0

    .line 591
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lbsb;>;"
    .end local v2    # "needHandShake":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 637
    .restart local v2    # "needHandShake":Z
    :cond_3
    iget v3, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->status:I

    if-eqz v3, :cond_4

    .line 641
    new-instance v1, Lbsv$12;

    invoke-direct {v1, p0, p2, p1, v2}, Lbsv$12;-><init>(Lbsv;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 706
    .local v1, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v4

    iget v3, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 707
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v7, Lcma;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v3, v1, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 3151
    new-instance v7, Lbso$10;

    invoke-direct {v7, v4, v3}, Lbso$10;-><init>(Lbso;Lcma;)V

    .line 3160
    const-class v3, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->getDeviceLiteAppUrl(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    goto/16 :goto_0

    .line 711
    .end local v1    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lbsv;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 113
    iget-boolean v0, p0, Lbsv;->g:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->e()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const-string/jumbo v0, "no serviceid, deviceId"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lbsv;->m()V

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p1, :cond_2

    .line 122
    invoke-virtual {p0}, Lbsv;->q()V

    .line 123
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "oa_bravo_attendance_bluetoothset_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-boolean v0, p0, Lbsv;->g:Z

    if-nez v0, :cond_2

    .line 1491
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-nez v0, :cond_3

    .line 1492
    const/4 v0, 0x0

    .line 127
    :goto_1
    invoke-static {v0}, Lbsn;->a(I)V

    .line 128
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lbsn;->a(Ljava/lang/String;)V

    .line 131
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lbtk;->a(Z)V

    goto :goto_0

    .line 1494
    :cond_3
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->e()I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lbsy$a;)V
    .locals 1
    .param p1, "listener"    # Lbsy$a;

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lbsv;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    return-void
.end method

.method public final a(Lbsy$b;)V
    .locals 7
    .param p1, "listener"    # Lbsy$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 424
    sget v3, Lbrx$g;->dt_door_guard_request_bind_device:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lbsv;->a(IZ)V

    .line 426
    const-string/jumbo v3, "BleBind"

    const-string/jumbo v4, "start bind device"

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v2, Lbrz;

    invoke-direct {v2}, Lbrz;-><init>()V

    .line 430
    .local v2, "model":Lbrz;
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v1

    .line 432
    .local v1, "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-nez v1, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lbrz;->a:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbrz;->f:Ljava/lang/Integer;

    .line 434
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->g()[B

    move-result-object v3

    iput-object v3, v2, Lbrz;->c:[B

    .line 435
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbrz;->e:Ljava/lang/String;

    .line 436
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbrz;->h:Ljava/lang/String;

    .line 439
    .end local v1    # "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_0
    new-instance v0, Lbsv$9;

    invoke-direct {v0, p0, p1}, Lbsv$9;-><init>(Lbsv;Lbsy$b;)V

    .line 486
    .local v0, "apiEventListener":Lcma;, "Lcma<Lbsa;>;"
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v4

    .line 487
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v5, Lcma;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v3, v0, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 486
    invoke-virtual {v4, v2, v3}, Lbso;->a(Lbrz;Lcma;)V

    .line 488
    return-void

    .line 432
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lbsa;>;"
    .restart local v1    # "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_1
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 719
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "start connnectWifi"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v6, 0x0

    .line 722
    .local v6, "config":Lbsm;
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0, p1}, Lbsw$b;->i(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0, p2}, Lbsw$b;->j(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->q()Lbsm;

    move-result-object v6

    .line 728
    :cond_0
    new-instance v7, Lbsv$13;

    invoke-direct {v7, p0}, Lbsv$13;-><init>(Lbsv;)V

    .line 749
    .local v7, "resultListener":Lbsy$c;
    const/4 v4, 0x0

    .line 750
    .local v4, "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    if-eqz v6, :cond_1

    .line 751
    new-instance v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .end local v4    # "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    invoke-direct {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;-><init>()V

    .line 752
    .restart local v4    # "staticIpModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    iget-object v0, v6, Lbsm;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->a:Ljava/lang/String;

    .line 753
    iget-object v0, v6, Lbsm;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->b:Ljava/lang/String;

    .line 754
    iget-object v0, v6, Lbsm;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->c:Ljava/lang/String;

    .line 755
    iget-object v0, v6, Lbsm;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->d:Ljava/lang/String;

    .line 756
    iget-object v0, v6, Lbsm;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;->e:Ljava/lang/String;

    .line 759
    :cond_1
    const-string/jumbo v0, "BleBind"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lbsv$b;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lbsy$c;

    .line 760
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v3

    .line 759
    invoke-interface {v1, v7, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbsy$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lbsv$b;-><init>(Lbsv;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;Lbsy$c;)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string/jumbo v0, "isConnectedBle"

    iget-boolean v1, p0, Lbsv;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final b(Lbsy$a;)V
    .locals 1
    .param p1, "listener"    # Lbsy$a;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lbsv;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    return-void
.end method

.method public final b(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lbsv;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Lbsv;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v1, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 316
    invoke-virtual {p0}, Lbsv;->s()V

    .line 318
    iget-object v4, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, p0, Lbsv;->j:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbsv;->j:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 321
    iget-object v4, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 363
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v4, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 326
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lbsv;->j:Ljava/lang/Integer;

    .line 328
    const-string/jumbo v1, ""

    .line 329
    .local v1, "message":Ljava/lang/String;
    sget v4, Lbrx$g;->dt_common_retry:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "posBtn":Ljava/lang/String;
    sget v4, Lbrx$g;->cancel:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "negBtn":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 333
    sget v4, Lbrx$g;->dt_device_ble_connect_fail:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_2
    :goto_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 347
    new-instance v4, Lbsv$1;

    invoke-direct {v4, p0}, Lbsv$1;-><init>(Lbsv;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 354
    new-instance v4, Lbsv$8;

    invoke-direct {v4, p0}, Lbsv$8;-><init>(Lbsv;)V

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    .line 362
    iget-object v4, p0, Lbsv;->i:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 334
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_3
    if-nez p1, :cond_4

    .line 335
    sget v4, Lbrx$g;->dt_device_ble_connect_timeout:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 336
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 337
    sget v4, Lbrx$g;->dt_device_ble_connect_timeout:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 338
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 339
    sget v4, Lbrx$g;->dt_smartdevice_disconnected:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    sget v4, Lbrx$g;->dt_device_reconnect:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    sget v4, Lbrx$g;->cancel:I

    invoke-virtual {p0, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsv;->f:Z

    .line 179
    invoke-virtual {p0}, Lbsv;->q()V

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo v0, "isConnectedBle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbsv;->f:Z

    goto :goto_0
.end method

.method public final c(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lbsv;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lbsv;->h:Z

    return v0
.end method

.method public final d(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lbsv;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lbsv;->g:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->t()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lbsv;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1194
    invoke-virtual {p0}, Lbsv;->j()V

    .line 1195
    const/4 v0, 0x0

    invoke-static {v0}, Lbtk;->a(Z)V

    .line 1196
    return-void
.end method

.method public final f(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lbsv;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    return-void
.end method

.method public final g(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    iget-object v0, p0, Lbsv;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    return-void
.end method

.method public final h(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lbsv;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    return-void
.end method

.method public final i(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lbsv;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1125
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "reset ble connect status"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v1, :cond_0

    .line 1128
    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 1129
    .local v0, "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    iget-object v1, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->releaseClient(Ljava/lang/Object;)V

    .line 1132
    .end local v0    # "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1133
    iput-boolean v3, p0, Lbsv;->f:Z

    .line 1134
    iget-object v1, p0, Lbsv;->b:Lbsw$b;

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v1}, Lbsw$b;->S()V

    .line 1137
    :cond_1
    iput-boolean v3, p0, Lbsv;->h:Z

    .line 1138
    return-void
.end method

.method public final j(Lbsy$b;)V
    .locals 6
    .param p1, "listener"    # Lbsy$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1032
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "start getWifiInfo"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    new-instance v0, Lbsv$5;

    invoke-direct {v0, p0, p1}, Lbsv$5;-><init>(Lbsv;Lbsy$b;)V

    .line 1054
    .local v0, "wifiListModelListener":Lbsv$j;
    const-string/jumbo v1, "BleBind"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lbsv$k;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v4, Lbsv$j;

    .line 1055
    invoke-virtual {p0}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v5

    .line 1054
    invoke-interface {v1, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsv$j;

    invoke-direct {v3, p0, v1}, Lbsv$k;-><init>(Lbsv;Lbsv$j;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1056
    return-void
.end method

.method public final x()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "device_wire_bind_enable"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 223
    .local v1, "enable":Z
    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-nez v3, :cond_3

    move v0, v2

    .line 227
    .local v0, "devCompTag":I
    :goto_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "devCompTag":I
    :cond_3
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->h()I

    move-result v0

    goto :goto_1
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->j()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    if-nez v3, :cond_2

    move v0, v1

    .line 241
    .local v0, "devCompTag":I
    :goto_0
    iget-boolean v3, p0, Lbsv;->g:Z

    if-nez v3, :cond_0

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 240
    .end local v0    # "devCompTag":I
    :cond_2
    iget-object v3, p0, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->h()I

    move-result v0

    goto :goto_0
.end method
