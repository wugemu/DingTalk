.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;
.super Ljava/lang/Object;
.source "SpaceShareRenameActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    .line 1115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->dismissLoadingDialog()V

    .line 128
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 123
    return-void
.end method
