.class Lorg/webrtc/ali/EglRenderer$2;
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
    .line 138
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$200(Lorg/webrtc/ali/EglRenderer;)V

    .line 142
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$300(Lorg/webrtc/ali/EglRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$400(Lorg/webrtc/ali/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$400(Lorg/webrtc/ali/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v2}, Lorg/webrtc/ali/EglRenderer;->access$500(Lorg/webrtc/ali/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$400(Lorg/webrtc/ali/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer$2;->this$0:Lorg/webrtc/ali/EglRenderer;

    .line 146
    invoke-static {v2}, Lorg/webrtc/ali/EglRenderer;->access$500(Lorg/webrtc/ali/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 145
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
