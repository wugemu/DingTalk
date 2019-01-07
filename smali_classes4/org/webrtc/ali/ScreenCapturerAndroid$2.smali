.class Lorg/webrtc/ali/ScreenCapturerAndroid$2;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/ScreenCapturerAndroid;->changeCaptureFormat(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/ScreenCapturerAndroid;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$2;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$2;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$200(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 175
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$2;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$500(Lorg/webrtc/ali/ScreenCapturerAndroid;)V

    .line 176
    return-void
.end method
