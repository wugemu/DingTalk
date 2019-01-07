.class final Lhge$1;
.super Lcmi;
.source "BeaconStatRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhge;->a(Lhgd$a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lhij;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgd$a$a;

.field final synthetic b:Lhge;


# direct methods
.method constructor <init>(Lhge;Lhgd$a$a;)V
    .locals 0
    .param p1, "this$0"    # Lhge;

    .prologue
    .line 65
    iput-object p1, p0, Lhge$1;->b:Lhge;

    iput-object p2, p0, Lhge$1;->a:Lhgd$a$a;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "listMonitorBeacon"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "listMonitorBeacon onException "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 82
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lhge$1;->b:Lhge;

    invoke-static {v0}, Lhge;->b(Lhge;)Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "beacon_query_list"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lhge$1;->b:Lhge;

    iget-object v1, p0, Lhge$1;->b:Lhge;

    invoke-static {v1}, Lhge;->c(Lhge;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lhge;->b(Lhge;Ljava/util/List;)Ljava/util/List;

    .line 87
    iget-object v0, p0, Lhge$1;->a:Lhgd$a$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lhge$1;->a:Lhgd$a$a;

    iget-object v1, p0, Lhge$1;->b:Lhge;

    invoke-static {v1}, Lhge;->a(Lhge;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgd$a$a;->a(Ljava/util/List;)V

    .line 90
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    check-cast p1, Ljava/util/List;

    .line 1068
    iget-object v0, p0, Lhge$1;->b:Lhge;

    invoke-static {v0, p1}, Lhge;->a(Lhge;Ljava/util/List;)Z

    .line 1069
    iget-object v0, p0, Lhge$1;->b:Lhge;

    invoke-static {v0, p1}, Lhge;->b(Lhge;Ljava/util/List;)Ljava/util/List;

    .line 1070
    iget-object v0, p0, Lhge$1;->a:Lhgd$a$a;

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    iget-object v1, p0, Lhge$1;->b:Lhge;

    invoke-static {v1}, Lhge;->a(Lhge;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1073
    iget-object v1, p0, Lhge$1;->a:Lhgd$a$a;

    invoke-interface {v1, v0}, Lhgd$a$a;->a(Ljava/util/List;)V

    .line 1076
    :cond_0
    iget-object v0, p0, Lhge$1;->b:Lhge;

    invoke-static {v0}, Lhge;->b(Lhge;)Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "beacon_query_list"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
