.class Lorg/webrtc/ali/EglRenderer$1;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$1;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$1;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$100(Lorg/webrtc/ali/EglRenderer;)V

    .line 135
    return-void
.end method
