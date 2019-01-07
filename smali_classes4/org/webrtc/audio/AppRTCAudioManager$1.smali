.class Lorg/webrtc/audio/AppRTCAudioManager$1;
.super Ljava/lang/Object;
.source "AppRTCAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/audio/AppRTCAudioManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCAudioManager;


# direct methods
.method constructor <init>(Lorg/webrtc/audio/AppRTCAudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/audio/AppRTCAudioManager;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager$1;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager$1;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCAudioManager;->access$200(Lorg/webrtc/audio/AppRTCAudioManager;)V

    .line 231
    return-void
.end method
