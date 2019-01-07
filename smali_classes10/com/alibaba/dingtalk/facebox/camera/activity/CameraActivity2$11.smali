.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public final a(F)V
    .locals 2
    .param p1, "score"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 267
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z

    .line 268
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method
