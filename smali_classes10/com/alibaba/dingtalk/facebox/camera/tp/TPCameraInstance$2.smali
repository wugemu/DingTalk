.class final Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;
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
    .line 157
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v1

    invoke-virtual {v1}, Lgsd;->e()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 161
    .local v0, "previewSize":Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$2;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgse;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1274
    iget-object v4, v1, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput v2, v4, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    .line 1275
    iget-object v2, v1, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput v3, v2, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    .line 1282
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v2

    invoke-virtual {v2}, Lgsd;->f()Z

    move-result v2

    iput-boolean v2, v1, Lgse;->f:Z

    .line 1283
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v2

    .line 1425
    iget v2, v2, Lgsd;->g:I

    .line 1283
    iput v2, v1, Lgse;->e:I

    .line 164
    :cond_0
    return-void
.end method
