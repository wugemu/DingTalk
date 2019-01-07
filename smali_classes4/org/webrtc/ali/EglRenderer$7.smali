.class Lorg/webrtc/ali/EglRenderer$7;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->removeFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/ali/EglRenderer$FrameListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$7;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/EglRenderer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lorg/webrtc/ali/EglRenderer$7;->val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 425
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 426
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$7;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v1}, Lorg/webrtc/ali/EglRenderer;->access$1100(Lorg/webrtc/ali/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 427
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;

    iget-object v1, v1, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer$7;->val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    if-ne v1, v2, :cond_0

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 432
    :cond_1
    return-void
.end method
