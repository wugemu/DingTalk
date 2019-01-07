.class Lorg/webrtc/alirtcInterface/SophonEngineImpl$2;
.super Ljava/lang/Object;
.source "SophonEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/alirtcInterface/SophonEngineImpl;->destory()V
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
    .line 97
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$2;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$2;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$100(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/audio/AppRTCAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCAudioManager;->stop()V

    .line 101
    return-void
.end method
