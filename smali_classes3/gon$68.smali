.class final Lgon$68;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgjg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3490
    iput-object p1, p0, Lgon$68;->d:Lgon;

    iput-object p2, p0, Lgon$68;->a:Lcma;

    iput-object p3, p0, Lgon$68;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$68;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3508
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "releaseEditLock: spaceId: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lgon$68;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v2, v7

    iget-object v3, p0, Lgon$68;->c:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3509
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceRPC"

    .line 3510
    invoke-static {v1, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 3509
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    if-nez p3, :cond_1

    move-object v0, p2

    .line 3513
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lgon$68;->a:Lcma;

    if-eqz v2, :cond_0

    .line 3514
    iget-object v2, p0, Lgon$68;->a:Lcma;

    invoke-interface {v2, p1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    :cond_0
    return-void

    .line 3511
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_1
    new-array v2, v8, [Ljava/lang/String;

    aput-object p2, v2, v5

    const-string/jumbo v3, " caused by "

    aput-object v3, v2, v6

    .line 3512
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 3490
    check-cast p1, Lgjg;

    .line 4493
    if-nez p1, :cond_1

    .line 4494
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$68;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4499
    :cond_0
    :goto_0
    return-void

    .line 4497
    :cond_1
    iget-object v0, p1, Lgjg;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4497
    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 4498
    iget-object v0, p1, Lgjg;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjg;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$68;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4501
    :cond_2
    iget-object v0, p0, Lgon$68;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4502
    iget-object v0, p0, Lgon$68;->a:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
