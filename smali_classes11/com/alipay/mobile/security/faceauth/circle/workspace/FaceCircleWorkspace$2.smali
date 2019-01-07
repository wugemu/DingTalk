.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->startTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final countdown(I)V
    .locals 2
    .param p1, "lefttime"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FaceTimerTask countdown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 203
    if-gtz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    goto :goto_0
.end method
