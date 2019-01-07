.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->setResult(ILandroid/content/Intent;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->finish()V

    .line 234
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->setResult(ILandroid/content/Intent;)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->finish()V

    .line 241
    return-void
.end method
