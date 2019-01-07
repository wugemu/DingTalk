.class Lorg/webrtc/audio/AppRTCBluetoothManager$1;
.super Ljava/lang/Object;
.source "AppRTCBluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;


# direct methods
.method constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$1;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$1;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$000(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    .line 87
    return-void
.end method
