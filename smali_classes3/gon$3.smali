.class final Lgon$3;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcma;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lgon;


# direct methods
.method constructor <init>(Lgon;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 835
    iput-object p1, p0, Lgon$3;->f:Lgon;

    iput-object p2, p0, Lgon$3;->a:Ljava/util/List;

    iput-object p3, p0, Lgon$3;->b:Ljava/util/List;

    iput-object p4, p0, Lgon$3;->c:Ljava/util/List;

    iput-object p5, p0, Lgon$3;->d:Lcma;

    iput-object p6, p0, Lgon$3;->e:Ljava/util/List;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 880
    const-string/jumbo v0, "deleteDentry: dentryModels: null or empty"

    .line 881
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lgon$3;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgon$3;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "deleteDentry: dentryModels.size: "

    aput-object v1, v2, v5

    const/4 v1, 0x1

    iget-object v3, p0, Lgon$3;->e:Ljava/util/List;

    .line 883
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    const-string/jumbo v4, "dentryModels.get(0)"

    iget-object v1, p0, Lgon$3;->e:Ljava/util/List;

    .line 884
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4, v1}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 882
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 887
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 886
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 873
    iget-object v0, p0, Lgon$3;->d:Lcma;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lgon$3;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 835
    check-cast p1, Lghz;

    .line 1838
    if-eqz p1, :cond_0

    .line 1839
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1840
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1841
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v2, "delete"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lgon$3;->a:Ljava/util/List;

    iget-object v1, p0, Lgon$3;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1845
    iget-object v0, p0, Lgon$3;->a:Ljava/util/List;

    iget-object v1, p0, Lgon$3;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1847
    iget-object v0, p0, Lgon$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1848
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lgon$3;->a:Ljava/util/List;

    iget-object v2, p0, Lgon$3;->d:Lcma;

    invoke-virtual {v0, v1, v2}, Lgoj;->a(Ljava/util/List;Lcma;)V

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v0, p0, Lgon$3;->d:Lcma;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lgon$3;->d:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v0, p0, Lgon$3;->d:Lcma;

    if-eqz v0, :cond_3

    .line 1856
    iget-object v1, p0, Lgon$3;->d:Lcma;

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 1857
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    .line 1856
    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_3
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lgon$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1857
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_1

    .line 1860
    :cond_5
    const-string/jumbo v0, "(resultCode is null)"

    goto :goto_2

    .line 1864
    :cond_6
    iget-object v0, p0, Lgon$3;->d:Lcma;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lgon$3;->d:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
