.class final Lfux$1;
.super Ljava/lang/Object;
.source "ApTerminalPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfux;->a(JJ)V
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
        "Lfrp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lfux;


# direct methods
.method constructor <init>(Lfux;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lfux;

    .prologue
    .line 52
    iput-object p1, p0, Lfux$1;->c:Lfux;

    iput-object p2, p0, Lfux$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfux$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 52
    check-cast p1, Lfrp;

    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iget-object v0, p0, Lfux$1;->c:Lfux;

    .line 2023
    iget-object v0, v0, Lfux;->a:Ljava/util/Map;

    .line 1056
    iget-object v1, p0, Lfux$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :cond_0
    iget-object v0, p0, Lfux$1;->c:Lfux;

    .line 3023
    iget-object v0, v0, Lfux;->b:Lfux$a;

    .line 1059
    if-eqz v0, :cond_2

    .line 1060
    if-eqz p1, :cond_1

    .line 1061
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ApTerminalPresenter"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, " getApTerminalInfo end from network orgId = "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lfux$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "; terminalCount = "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Lfrp;->b:I

    .line 1062
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "; existAp = "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p1, Lfrp;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1061
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    :cond_1
    iget-object v0, p0, Lfux$1;->c:Lfux;

    .line 4023
    iget-object v0, v0, Lfux;->b:Lfux$a;

    .line 1064
    iget-wide v2, p0, Lfux$1;->b:J

    invoke-interface {v0, v2, v3, p1}, Lfux$a;->a(JLfrp;)V

    .line 52
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lfux$1;->c:Lfux;

    .line 1023
    iget-object v0, v0, Lfux;->b:Lfux$a;

    .line 75
    iget-wide v2, p0, Lfux$1;->b:J

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lfux$a;->a(JLfrp;)V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getApTerminalInfo error: code = "

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " errorMsg = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 71
    return-void
.end method
