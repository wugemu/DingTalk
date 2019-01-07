.class Lorg/webrtc/ali/EglRenderer$9;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->clearImage(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$a:F

.field final synthetic val$b:F

.field final synthetic val$g:F

.field final synthetic val$r:F


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 527
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$9;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput p2, p0, Lorg/webrtc/ali/EglRenderer$9;->val$r:F

    iput p3, p0, Lorg/webrtc/ali/EglRenderer$9;->val$g:F

    iput p4, p0, Lorg/webrtc/ali/EglRenderer$9;->val$b:F

    iput p5, p0, Lorg/webrtc/ali/EglRenderer$9;->val$a:F

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
    .line 530
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$9;->this$0:Lorg/webrtc/ali/EglRenderer;

    iget v1, p0, Lorg/webrtc/ali/EglRenderer$9;->val$r:F

    iget v2, p0, Lorg/webrtc/ali/EglRenderer$9;->val$g:F

    iget v3, p0, Lorg/webrtc/ali/EglRenderer$9;->val$b:F

    iget v4, p0, Lorg/webrtc/ali/EglRenderer$9;->val$a:F

    invoke-static {v0, v1, v2, v3, v4}, Lorg/webrtc/ali/EglRenderer;->access$1200(Lorg/webrtc/ali/EglRenderer;FFFF)V

    .line 531
    return-void
.end method
