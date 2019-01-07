.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Lgtz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

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
    .line 292
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)V

    .line 295
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(F)V

    .line 288
    return-void
.end method
