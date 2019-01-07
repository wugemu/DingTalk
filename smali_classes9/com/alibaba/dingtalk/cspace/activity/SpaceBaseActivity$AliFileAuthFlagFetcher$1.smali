.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;Ljava/lang/String;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->b:Lcma;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 2185
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgpr;->d(Landroid/content/Context;)V

    .line 3190
    if-nez p1, :cond_0

    .line 3191
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    :goto_0
    return-void

    .line 3195
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    .line 3196
    if-nez v0, :cond_1

    .line 3197
    const-string/jumbo v0, ""

    .line 3199
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3200
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2209
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lgpr;->d(Landroid/content/Context;)V

    .line 2211
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "AliFileAuthFlagFetcher"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2213
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2214
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2211
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceBaseActivity"

    const/4 v3, 0x0

    .line 2216
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2215
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher$1;->b:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2205
    return-void
.end method
