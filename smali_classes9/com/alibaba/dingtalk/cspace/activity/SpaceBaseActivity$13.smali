.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;
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

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->b:Z

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1690
    check-cast p1, Ljava/lang/Boolean;

    .line 2693
    if-nez p1, :cond_0

    .line 2694
    const-string/jumbo v0, "null result"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    :goto_0
    return-void

    .line 3022
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2698
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->b:Z

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->c:Z

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->b:Z

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$13;->c:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    .line 1708
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1703
    return-void
.end method
