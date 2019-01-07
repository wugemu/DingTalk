.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->h:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->b:Z

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->c:Z

    iput-wide p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->d:J

    iput-boolean p7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->e:Z

    iput p8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->f:I

    iput-object p9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 783
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->h:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->b:Z

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->c:Z

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->d:J

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->e:Z

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->f:I

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V

    .line 784
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 759
    check-cast p1, Ljava/lang/String;

    .line 1762
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 1763
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a()V

    .line 759
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 772
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceCategoryActivity.showOperationMenuForAliFiles"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 774
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 775
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 772
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceCategoryActivity"

    const/4 v3, 0x0

    .line 777
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;->a()V

    .line 780
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 768
    return-void
.end method
