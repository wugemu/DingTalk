.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;
.super Ljava/lang/Object;
.source "SpaceStatisticActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
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
        "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->a:Ljava/lang/String;

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
    .line 258
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V

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
    const/4 v4, 0x0

    .line 274
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getUsersUnread: loadSpace"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceStatisticActivity"

    .line 278
    invoke-static {v0, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 270
    return-void
.end method
