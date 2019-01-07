.class final Lbnj$3;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnj;
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
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcov;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbnj;


# direct methods
.method constructor <init>(Lbnj;Ljava/util/List;Lcov;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbnj;

    .prologue
    .line 216
    iput-object p1, p0, Lbnj$3;->d:Lbnj;

    iput-object p2, p0, Lbnj$3;->a:Ljava/util/List;

    iput-object p3, p0, Lbnj$3;->b:Lcov;

    iput-object p4, p0, Lbnj$3;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 216
    check-cast p1, Ljava/util/List;

    .line 1219
    iget-object v0, p0, Lbnj$3;->a:Ljava/util/List;

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lbnj$3;->d:Lbnj;

    iget-object v1, p0, Lbnj$3;->b:Lcov;

    .line 2329
    iget-object v2, v0, Lbnj;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2330
    new-instance v2, Ljava/util/TreeMap;

    iget-object v0, v0, Lbnj;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lbnj;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2331
    if-eqz v1, :cond_0

    .line 2332
    invoke-interface {v1, v2}, Lcov;->a(Ljava/lang/Object;)V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lbnj$3;->d:Lbnj;

    iget-object v1, p0, Lbnj$3;->a:Ljava/util/List;

    iget-object v2, p0, Lbnj$3;->b:Lcov;

    invoke-static {v0, v1, p1, v2}, Lbnj;->a(Lbnj;Ljava/util/List;Ljava/util/List;Lcov;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 233
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 234
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "myself = "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbnj$3;->d:Lbnj;

    .line 1047
    iget-wide v2, v2, Lbnj;->b:J

    .line 234
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sameOrgUsers count = "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbnj$3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 235
    const-string/jumbo v1, "getUserEmployeeInfos"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 229
    return-void
.end method
