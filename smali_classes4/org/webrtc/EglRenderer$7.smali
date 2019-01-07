.class Lorg/webrtc/EglRenderer$7;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field final synthetic val$listener:Lorg/webrtc/EglRenderer$FrameListener;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 394
    iput-object p1, p0, Lorg/webrtc/EglRenderer$7;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$7;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

    iput p3, p0, Lorg/webrtc/EglRenderer$7;->val$scale:F

    iput-object p4, p0, Lorg/webrtc/EglRenderer$7;->val$drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lorg/webrtc/EglRenderer$7;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$1100(Lorg/webrtc/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v2, p0, Lorg/webrtc/EglRenderer$7;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

    iget v3, p0, Lorg/webrtc/EglRenderer$7;->val$scale:F

    iget-object v4, p0, Lorg/webrtc/EglRenderer$7;->val$drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/EglRenderer$FrameListenerAndParams;-><init>(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method
