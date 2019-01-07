.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;->a:Ljava/lang/String;

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
    .line 793
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Ljava/lang/String;)V

    .line 794
    return-void
.end method
