.class public Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;
.super Ljava/lang/Object;
.source "BeaconScanHelper.java"


# instance fields
.field a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

.field public b:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    invoke-static {p1}, Lbte;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 35
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const-string/jumbo v1, "door"

    const-string/jumbo v2, "helper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Device Beacon] init error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string/jumbo v1, "door"

    const-string/jumbo v2, "helper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Device Beacon] getRemoteDevice error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->quickScan()V

    .line 70
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const-string/jumbo v3, "door"

    const-string/jumbo v4, "helper"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[Device Beacon] isEnabled error,"

    aput-object v6, v5, v2

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string/jumbo v1, "door"

    const-string/jumbo v2, "helper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Device Beacon] enable error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string/jumbo v1, "door"

    const-string/jumbo v2, "helper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Device Beacon] getState error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v1, 0xd

    goto :goto_0
.end method
