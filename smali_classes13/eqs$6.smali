.class final Leqs$6;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 1386
    iput-object p1, p0, Leqs$6;->a:Leqs;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1386
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 3036
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v3

    .line 2391
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 2392
    :goto_0
    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x1

    .line 2391
    invoke-static {v3, v4, v1, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2394
    iget-object v0, p0, Leqs$6;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3041
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->b()Z

    move-result v0

    .line 2398
    if-eqz v0, :cond_1

    .line 2402
    iget-object v0, p0, Leqs$6;->a:Leqs;

    invoke-static {v0, v2}, Leqs;->a(Leqs;Z)Z

    .line 2403
    iget-object v0, p0, Leqs$6;->a:Leqs;

    .line 3046
    iget-object v1, p0, Lerz;->c:Lesa;

    invoke-virtual {v1}, Lesa;->c()Ljava/lang/String;

    move-result-object v1

    .line 4036
    iget-object v2, p0, Lerz;->c:Lesa;

    invoke-virtual {v2}, Lesa;->a()Leoe;

    move-result-object v2

    .line 2403
    invoke-static {v0, v1, v2, p1}, Leqs;->b(Leqs;Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 1386
    :cond_1
    return-void

    .line 2391
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 2392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1414
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchExternalContacts: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 1419
    iget-object v1, p0, Leqs$6;->a:Leqs;

    invoke-static {v1, v4}, Leqs;->a(Leqs;Z)Z

    .line 1420
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v2, 0x34bd

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 1421
    const-string/jumbo v1, "[Contact]searchExternalContacts exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 2050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1409
    return-void
.end method
