.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;
.super Ljava/lang/Object;
.source "SpacePreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b(Z)V
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
    .line 1542
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->a:Z

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
    .line 1545
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->a:Z

    if-ne v0, v1, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z

    .line 1549
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->a:Z

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->t(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    goto :goto_0
.end method
