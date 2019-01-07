.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;
.super Ljava/lang/Object;
.source "SpaceShareSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->dismissLoadingDialog()V

    .line 488
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 472
    .line 1475
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    :cond_0
    return-void
.end method
