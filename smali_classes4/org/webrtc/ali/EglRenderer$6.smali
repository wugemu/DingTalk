.class Lorg/webrtc/ali/EglRenderer$6;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->addFrameListener(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$applyFpsReduction:Z

.field final synthetic val$drawerParam:Lorg/webrtc/ali/RendererCommon$GlDrawer;

.field final synthetic val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/RendererCommon$GlDrawer;Lorg/webrtc/ali/EglRenderer$FrameListener;FZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$6;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/EglRenderer$6;->val$drawerParam:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    iput-object p3, p0, Lorg/webrtc/ali/EglRenderer$6;->val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    iput p4, p0, Lorg/webrtc/ali/EglRenderer$6;->val$scale:F

    iput-boolean p5, p0, Lorg/webrtc/ali/EglRenderer$6;->val$applyFpsReduction:Z

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
    .line 403
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$6;->val$drawerParam:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$6;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v1}, Lorg/webrtc/ali/EglRenderer;->access$800(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;

    move-result-object v0

    .line 404
    .local v0, "listenerDrawer":Lorg/webrtc/ali/RendererCommon$GlDrawer;
    :goto_0
    iget-object v1, p0, Lorg/webrtc/ali/EglRenderer$6;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v1}, Lorg/webrtc/ali/EglRenderer;->access$1100(Lorg/webrtc/ali/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;

    iget-object v3, p0, Lorg/webrtc/ali/EglRenderer$6;->val$listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    iget v4, p0, Lorg/webrtc/ali/EglRenderer$6;->val$scale:F

    iget-boolean v5, p0, Lorg/webrtc/ali/EglRenderer$6;->val$applyFpsReduction:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;-><init>(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void

    .line 403
    .end local v0    # "listenerDrawer":Lorg/webrtc/ali/RendererCommon$GlDrawer;
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$6;->val$drawerParam:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    goto :goto_0
.end method
