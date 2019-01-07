.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;->a:Landroid/net/Uri;

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
    .line 663
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/net/Uri;)V

    .line 664
    return-void
.end method
