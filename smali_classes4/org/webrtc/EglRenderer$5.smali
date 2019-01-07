.class Lorg/webrtc/EglRenderer$5;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$renderLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/webrtc/EglRenderer$5;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$5;->val$renderLooper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 268
    iget-object v0, p0, Lorg/webrtc/EglRenderer$5;->this$0:Lorg/webrtc/EglRenderer;

    const-string/jumbo v1, "Quitting render thread."

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$700(Lorg/webrtc/EglRenderer;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lorg/webrtc/EglRenderer$5;->val$renderLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 270
    return-void
.end method
