.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
