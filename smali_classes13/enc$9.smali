.class final Lenc$9;
.super Ljava/lang/Object;
.source "SearchAPIImpl.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmb",
        "<",
        "Lccj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcmb;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcmb;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 545
    iput-object p1, p0, Lenc$9;->e:Lenc;

    iput-object p2, p0, Lenc$9;->a:Lcmb;

    iput-object p3, p0, Lenc$9;->b:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object p4, p0, Lenc$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lenc$9;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    invoke-interface {v0, p1, p2}, Lcmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 545
    check-cast p1, Lccj;

    .line 2048
    if-nez p1, :cond_1

    .line 1549
    :goto_0
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    invoke-interface {v0, v2}, Lcmb;->onDataReceived(Ljava/lang/Object;)V

    .line 545
    :cond_0
    return-void

    .line 2051
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;-><init>()V

    .line 2052
    iget-object v0, p1, Lccj;->a:Ljava/util/List;

    .line 2112
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcci;

    .line 2115
    invoke-static {v0}, Lcci;->a(Lcci;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v0

    .line 2116
    if-eqz v0, :cond_2

    .line 2117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2052
    :goto_2
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 2053
    iget v0, p1, Lccj;->b:I

    iput v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    .line 2054
    iget-object v0, p1, Lccj;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->nextCursor:Ljava/lang/String;

    .line 2055
    iget-boolean v0, p1, Lccj;->d:Z

    iput-boolean v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    .line 2056
    iget-object v0, p1, Lccj;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    .line 2057
    iget-object v0, p1, Lccj;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p1, Lccj;->f:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_4
    iput-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->realQueries:Ljava/util/List;

    move-object v2, v3

    .line 2058
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 2122
    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 563
    iget-object v1, p0, Lenc$9;->a:Lcmb;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lenc$9;->a:Lcmb;

    invoke-interface {v1, p1, p2}, Lcmb;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string/jumbo v2, "filter"

    iget-object v1, p0, Lenc$9;->b:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lenc$9;->b:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v1, "contactSearchUnion"

    iget-object v2, p0, Lenc$9;->c:Ljava/lang/String;

    iget-object v3, p0, Lenc$9;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 572
    return-void

    .line 570
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lenc$9;->a:Lcmb;

    invoke-interface {v0, p1, p2}, Lcmb;->onProgress(Ljava/lang/Object;I)V

    .line 559
    :cond_0
    return-void
.end method
