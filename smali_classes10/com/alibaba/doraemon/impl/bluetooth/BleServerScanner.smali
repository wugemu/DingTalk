.class public Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;
.super Ljava/lang/Object;
.source "BleServerScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleServerScanner"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public startFind(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p2, "uuid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0
.end method

.method public stopFind(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 2
    .param p1, "listener"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method
