.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;
.super Ljava/lang/Object;
.source "SpaceCooperationFolderInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    sget v1, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->showLoadingDialog(I)V

    .line 377
    :cond_0
    return-void
.end method
