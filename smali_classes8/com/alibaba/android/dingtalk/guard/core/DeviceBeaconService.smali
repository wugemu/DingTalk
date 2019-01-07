.class public Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;
.super Landroid/app/Service;
.source "DeviceBeaconService.java"


# instance fields
.field private a:I

.field private b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    .line 46
    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c:I

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->e:Z

    .line 242
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService$1;-><init>(Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->f:Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 72
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    if-ne v0, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    .line 1099
    new-instance v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-direct {v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;-><init>()V

    .line 1100
    sget-object v2, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V

    .line 1102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 1103
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomForegroundScanPeriod(J)V

    .line 1104
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomForegroundBetweenScanPeriod(J)V

    .line 1105
    invoke-virtual {v1, v8, v9}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomBackgroundBetweenScanPeriod(J)V

    .line 1106
    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomBackgroundScanPeriod(J)V

    .line 2049
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v2, :cond_1

    .line 2050
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->setScanPeriod(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->f:Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    .line 2055
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v2, :cond_2

    .line 2056
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    const-string/jumbo v2, "0000fe3c-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v2, v4, v4, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->scanBleBeaconAdvertising(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V

    .line 3054
    :cond_2
    sget-object v0, Lbry$c;->a:Lbry;

    .line 3481
    iget-object v0, v0, Lbry;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbto;

    .line 4045
    iget-object v2, v0, Lbto;->c:Lbtn;

    if-eqz v2, :cond_3

    .line 4046
    iget-object v0, v0, Lbto;->c:Lbtn;

    invoke-interface {v0}, Lbtn;->a()V

    goto :goto_2

    .line 1108
    :cond_4
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomForegroundScanPeriod(J)V

    .line 1109
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomForegroundBetweenScanPeriod(J)V

    .line 1110
    invoke-virtual {v1, v8, v9}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomBackgroundBetweenScanPeriod(J)V

    .line 1111
    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setCustomBackgroundScanPeriod(J)V

    goto :goto_1

    .line 81
    :cond_5
    const-string/jumbo v0, "door"

    const-string/jumbo v1, "service"

    const-string/jumbo v2, "[Device Beacon] DoorBeaconService scanBleBeacon"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 86
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iput v3, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 5043
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v2, :cond_1

    .line 5044
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->switchScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->f:Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    .line 5061
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v2, :cond_2

    .line 5062
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    const-string/jumbo v2, "0000fe3c-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v2, v3, v3, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->stopScanBleBeacon(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V

    .line 6054
    :cond_2
    sget-object v0, Lbry$c;->a:Lbry;

    .line 93
    invoke-virtual {v0}, Lbry;->a()V

    .line 95
    const-string/jumbo v0, "door"

    const-string/jumbo v1, "service"

    const-string/jumbo v2, "[Device Beacon] DoorBeaconService stopScanBeacon"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lbtk;->b()I

    move-result v0

    .line 6124
    .local v0, "state":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->e:Z

    if-nez v2, :cond_5

    .line 6126
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move v2, v1

    .line 6131
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 6133
    const-string/jumbo v2, "DevBeaconService"

    const-string/jumbo v3, "state is none, disable"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6135
    :goto_1
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c:I

    .line 6137
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "---->beacon state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6141
    :cond_0
    if-nez v1, :cond_3

    .line 6142
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop Beacon: bluetooth enable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    .line 6144
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6146
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b()V

    :cond_2
    :goto_2
    return-void

    .line 6149
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 6152
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a()V

    .line 6154
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6155
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a()V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    const-string/jumbo v0, "DevBeaconService"

    const-string/jumbo v1, "create DeviceBeaconService"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    .line 62
    invoke-static {p0}, Lbtk;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->e:Z

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c()V

    .line 67
    const-string/jumbo v0, "door"

    const-string/jumbo v1, "service"

    const-string/jumbo v2, "[Device Beacon] DoorBeaconService create"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 163
    const-string/jumbo v0, "DevBeaconService"

    const-string/jumbo v1, "destory DeviceBeaconService"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    .line 7130
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v1, :cond_0

    .line 7131
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->tryUnbindBeaconServiceIfNotWork()V

    .line 166
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "action->"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    const-string/jumbo v1, "com.alibaba.android.dingtalk.ACTION_BLUETHOOTH_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    if-eqz v1, :cond_1

    .line 188
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    .line 189
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c:I

    if-eqz v1, :cond_1

    .line 8054
    sget-object v1, Lbry$c;->a:Lbry;

    .line 190
    invoke-virtual {v1}, Lbry;->a()V

    .line 234
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lbtk;->b()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 235
    const/4 v2, 0x2

    .line 237
    :cond_2
    return v2

    .line 194
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->d:Z

    .line 195
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 198
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    if-ne v1, v2, :cond_4

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a()V

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 206
    :cond_5
    const-string/jumbo v1, "com.alibaba.android.dingtalk.ACTION_BEACON_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c()V

    goto :goto_0

    .line 208
    :cond_6
    const-string/jumbo v1, "com.alibaba.android.dingtalk.ACTION_BLE_QUICK_SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 212
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->a:I

    if-ne v1, v2, :cond_7

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->b:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a()V

    goto :goto_0

    .line 215
    :cond_7
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 219
    :cond_8
    const-string/jumbo v1, "com.alibaba.android.dingtalk.ACTION_APP_STATE_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is app in foreground:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbtk;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    :cond_9
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->e:Z

    .line 224
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c()V

    goto :goto_0

    .line 225
    :cond_a
    const-string/jumbo v1, "com.alibaba.android.dingtalk.ACTION_APP_STATE_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "is app in background:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbtk;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    :cond_b
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->e:Z

    .line 230
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;->c()V

    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 227
    goto :goto_1
.end method
