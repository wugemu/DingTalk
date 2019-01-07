.class Lorg/webrtc/ali/EglRenderer$3;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->init(Lorg/webrtc/ali/EglBase$Context;[ILorg/webrtc/ali/RendererCommon$GlDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$configAttributes:[I

.field final synthetic val$sharedContext:Lorg/webrtc/ali/EglBase$Context;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase$Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$3;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/EglRenderer$3;->val$sharedContext:Lorg/webrtc/ali/EglBase$Context;

    iput-object p3, p0, Lorg/webrtc/ali/EglRenderer$3;->val$configAttributes:[I

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
    .line 189
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$3;->val$sharedContext:Lorg/webrtc/ali/EglBase$Context;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$3;->this$0:Lorg/webrtc/ali/EglRenderer;

    const-string/jumbo v1, "EglBase10.create context"

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglRenderer;->access$700(Lorg/webrtc/ali/EglRenderer;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$3;->this$0:Lorg/webrtc/ali/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$3;->val$configAttributes:[I

    invoke-static {v1}, Lorg/webrtc/ali/EglBase;->createEgl10([I)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglRenderer;->access$002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$3;->this$0:Lorg/webrtc/ali/EglRenderer;

    const-string/jumbo v1, "EglBase.create shared context"

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglRenderer;->access$700(Lorg/webrtc/ali/EglRenderer;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$3;->this$0:Lorg/webrtc/ali/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$3;->val$sharedContext:Lorg/webrtc/ali/EglBase$Context;

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer$3;->val$configAttributes:[I

    invoke-static {v1, v2}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglRenderer;->access$002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;

    goto :goto_0
.end method
