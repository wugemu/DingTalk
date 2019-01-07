.class final Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;
.super Ljava/lang/Object;
.source "CameraTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a(Lgsm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsm$a;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;Lgsm$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;->c:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;->a:Lgsm$a;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;->a:Lgsm$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lgsm$a;->a(Landroid/graphics/Bitmap;)V

    .line 161
    return-void
.end method
