.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;
.super Ljava/lang/Object;
.source "SpacePreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->a:Z

    if-ne v0, v1, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z

    .line 1565
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1566
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1567
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setAdmin(Z)V

    .line 1568
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1569
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    .line 1574
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    goto :goto_0

    .line 1572
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V

    goto :goto_1
.end method
