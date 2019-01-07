.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7$1;->a:Landroid/graphics/drawable/Drawable;

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
    .line 929
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setDecorateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    return-void
.end method
