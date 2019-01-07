.class public final Lgon$75;
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
        "Lghq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lghp;

.field final synthetic c:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Lghp;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3805
    iput-object p1, p0, Lgon$75;->c:Lgon;

    iput-object p2, p0, Lgon$75;->a:Lcma;

    iput-object p3, p0, Lgon$75;->b:Lghp;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3823
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "cspaceMonitor: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "(scene: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgon$75;->b:Lghp;

    iget-object v3, v3, Lghp;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", method: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lgon$75;->b:Lghp;

    iget-object v3, v3, Lghp;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", success: "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lgon$75;->b:Lghp;

    iget-object v3, v3, Lghp;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3825
    .local v0, "info":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 3826
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3825
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    iget-object v1, p0, Lgon$75;->a:Lcma;

    if-eqz v1, :cond_0

    .line 3828
    iget-object v1, p0, Lgon$75;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3805
    check-cast p1, Lghq;

    .line 4808
    if-nez p1, :cond_1

    .line 4809
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$75;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4814
    :cond_0
    :goto_0
    return-void

    .line 4812
    :cond_1
    iget-object v0, p1, Lghq;->a:Ljava/lang/Boolean;

    .line 5022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4812
    if-nez v0, :cond_2

    .line 4813
    iget-object v0, p1, Lghq;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghq;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$75;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4816
    :cond_2
    iget-object v0, p0, Lgon$75;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4817
    iget-object v0, p0, Lgon$75;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
