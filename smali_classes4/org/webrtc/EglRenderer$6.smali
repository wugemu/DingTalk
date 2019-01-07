.class Lorg/webrtc/EglRenderer$6;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$listener:Lorg/webrtc/EglRenderer$FrameListener;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$FrameListener;F)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/webrtc/EglRenderer$6;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$6;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

    iput p3, p0, Lorg/webrtc/EglRenderer$6;->val$scale:F

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
    .line 379
    iget-object v0, p0, Lorg/webrtc/EglRenderer$6;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$1100(Lorg/webrtc/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v2, p0, Lorg/webrtc/EglRenderer$6;->val$listener:Lorg/webrtc/EglRenderer$FrameListener;

    iget v3, p0, Lorg/webrtc/EglRenderer$6;->val$scale:F

    iget-object v4, p0, Lorg/webrtc/EglRenderer$6;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v4}, Lorg/webrtc/EglRenderer;->access$800(Lorg/webrtc/EglRenderer;)Lorg/webrtc/RendererCommon$GlDrawer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/EglRenderer$FrameListenerAndParams;-><init>(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method
