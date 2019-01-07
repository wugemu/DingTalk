.class Lorg/webrtc/EglRenderer$8;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listener:Lorg/webrtc/EglRenderer$FrameListener;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/webrtc/EglRenderer$8;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lorg/webrtc/EglRenderer$8;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

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
    .line 414
    iget-object v1, p0, Lorg/webrtc/EglRenderer$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 415
    iget-object v1, p0, Lorg/webrtc/EglRenderer$8;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v1}, Lorg/webrtc/EglRenderer;->access$1100(Lorg/webrtc/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 416
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/EglRenderer$FrameListenerAndParams;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v1, v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    iget-object v2, p0, Lorg/webrtc/EglRenderer$8;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

    if-ne v1, v2, :cond_0

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method
