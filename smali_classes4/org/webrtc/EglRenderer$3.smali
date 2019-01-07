.class Lorg/webrtc/EglRenderer$3;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$configAttributes:[I

.field final synthetic val$sharedContext:Lorg/webrtc/EglBase$Context;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase$Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/webrtc/EglRenderer$3;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$3;->val$sharedContext:Lorg/webrtc/EglBase$Context;

    iput-object p3, p0, Lorg/webrtc/EglRenderer$3;->val$configAttributes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lorg/webrtc/EglRenderer$3;->val$sharedContext:Lorg/webrtc/EglBase$Context;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/webrtc/EglRenderer$3;->this$0:Lorg/webrtc/EglRenderer;

    const-string/jumbo v1, "EglBase10.create context"

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$700(Lorg/webrtc/EglRenderer;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/webrtc/EglRenderer$3;->this$0:Lorg/webrtc/EglRenderer;

    new-instance v1, Lorg/webrtc/EglBase10;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/webrtc/EglRenderer$3;->val$configAttributes:[I

    invoke-direct {v1, v2, v3}, Lorg/webrtc/EglBase10;-><init>(Lorg/webrtc/EglBase10$Context;[I)V

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$002(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer$3;->this$0:Lorg/webrtc/EglRenderer;

    const-string/jumbo v1, "EglBase.create shared context"

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$700(Lorg/webrtc/EglRenderer;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/webrtc/EglRenderer$3;->this$0:Lorg/webrtc/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/EglRenderer$3;->val$sharedContext:Lorg/webrtc/EglBase$Context;

    iget-object v2, p0, Lorg/webrtc/EglRenderer$3;->val$configAttributes:[I

    invoke-static {v1, v2}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$002(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;

    goto :goto_0
.end method
