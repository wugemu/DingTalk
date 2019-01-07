.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1439
    check-cast p1, Ljava/lang/Boolean;

    .line 2442
    if-nez p1, :cond_0

    .line 2443
    const-string/jumbo v0, "null result"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    :goto_0
    return-void

    .line 3022
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2447
    if-nez v0, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    sget v1, Lfzs$h;->dt_space_send_error_ro:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$9;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1463
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1457
    return-void
.end method
