.class final Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;
.super Ljava/lang/Object;
.source "TPCameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    :try_start_0
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v2

    invoke-virtual {v2}, Lgsd;->e()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 171
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgsg;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$3;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgsg;

    move-result-object v2

    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v3

    .line 1420
    iget-object v3, v3, Lgsd;->c:Landroid/hardware/Camera;

    .line 172
    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v2, v3, v4, v5}, Lgsg;->a(Landroid/hardware/Camera;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "facebox"

    const-string/jumbo v3, "TPCameraInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Camera] CONFIGURE_CAMERA err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
