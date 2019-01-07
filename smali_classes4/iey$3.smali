.class final Liey$3;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 427
    iput-object p1, p0, Liey$3;->a:Liey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 430
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Profile service connected"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Liey$3;->a:Liey;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v1, p2}, Liey;->a(Liey;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 433
    iget-object v1, p0, Liey$3;->a:Liey;

    invoke-static {v1}, Liey;->d(Liey;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Liey$3;->a:Liey;

    invoke-virtual {v1}, Liey;->e()V

    .line 439
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 443
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Profile service disconnected"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Liey$3;->a:Liey;

    invoke-static {v0}, Liey;->e(Liey;)V

    .line 445
    return-void
.end method
