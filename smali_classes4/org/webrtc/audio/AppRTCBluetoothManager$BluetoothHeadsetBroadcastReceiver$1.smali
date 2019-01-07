.class Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AppRTCBluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;


# direct methods
.method constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver$1;->this$1:Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver$1;->this$1:Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;

    iget-object v0, v0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    .line 153
    return-void
.end method
