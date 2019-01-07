.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->b:Ljava/lang/String;

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
    .line 642
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z

    .line 643
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->u(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    return-void
.end method
