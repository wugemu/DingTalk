.class public final Lgon$62;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lghk;

.field final synthetic d:Lcma;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lgon;


# direct methods
.method public constructor <init>(Lgon;Ljava/lang/String;Ljava/lang/String;Lghk;Lcma;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 512
    iput-object p1, p0, Lgon$62;->h:Lgon;

    iput-object p2, p0, Lgon$62;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$62;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$62;->c:Lghk;

    iput-object p5, p0, Lgon$62;->d:Lcma;

    iput-object p6, p0, Lgon$62;->e:Ljava/lang/String;

    iput p7, p0, Lgon$62;->f:I

    iput-object p8, p0, Lgon$62;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 521
    iget-object v1, p0, Lgon$62;->d:Lcma;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lgon$62;->d:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "listFiles: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$62;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$62;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", sortType: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lgon$62;->f:I

    .line 527
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", loadMoreId: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lgon$62;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", categoryType: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lgon$62;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 524
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 531
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 512
    move-object v1, p1

    check-cast v1, Lghz;

    .line 1515
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "listFiles"

    invoke-static {v0, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lgon$62;->h:Lgon;

    iget-object v2, p0, Lgon$62;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lgon$62;->b:Ljava/lang/String;

    iget-object v5, p0, Lgon$62;->c:Lghk;

    iget-object v5, v5, Lghk;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lgon$62;->d:Lcma;

    invoke-static/range {v0 .. v6}, Lgon;->a(Lgon;Lghz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 512
    return-void
.end method
