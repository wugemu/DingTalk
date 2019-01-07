.class Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;
.super Ljava/lang/Object;
.source "AppRTCBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;


# direct methods
.method private constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p2, "x1"    # Lorg/webrtc/audio/AppRTCBluetoothManager$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v0, v1, :cond_1

    .line 108
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BluetoothServiceListener.onServiceConnected: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$202(Lorg/webrtc/audio/AppRTCBluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 106
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected done: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BluetoothServiceListener.onServiceDisconnected: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stopScoAudio()V

    .line 118
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$202(Lorg/webrtc/audio/AppRTCBluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 119
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$402(Lorg/webrtc/audio/AppRTCBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 120
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-static {v0, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$102(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$State;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 121
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected done: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
