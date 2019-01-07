.class Lorg/webrtc/alirtcInterface/SophonEngineImpl$1;
.super Ljava/lang/Object;
.source "SophonEngineImpl.java"

# interfaces
.implements Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/alirtcInterface/SophonEngineImpl;->create(Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$1;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChanged(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V
    .locals 1
    .param p1, "audioDevice"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "availableAudioDevices":Ljava/util/Set;, "Ljava/util/Set<Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;>;"
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$1;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$000(Lorg/webrtc/alirtcInterface/SophonEngineImpl;Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V

    .line 73
    return-void
.end method
