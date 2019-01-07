.class public final Lfux;
.super Ljava/lang/Object;
.source "ApTerminalPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfux$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfrp;",
            ">;"
        }
    .end annotation
.end field

.field b:Lfux$a;


# direct methods
.method public constructor <init>(Lfux$a;)V
    .locals 1
    .param p1, "apTerminalInfoFetchCallback"    # Lfux$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfux;->a:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lfux;->b:Lfux$a;

    .line 30
    return-void
.end method

.method private static c(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "uid"    # J

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    iget-object v1, p0, Lfux;->b:Lfux$a;

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lfxk;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ApTerminalPresenter"

    aput-object v2, v1, v3

    const-string/jumbo v2, " getApTerminalInfo end no bind smart device orgId = "

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lfux;->b:Lfux$a;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lfux$a;->a(JLfrp;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lfux;->c(JJ)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lfux;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ApTerminalPresenter"

    aput-object v2, v1, v3

    const-string/jumbo v2, " getApTerminalInfo end from mApTerminalObjectMap orgId = "

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lfux;->b:Lfux$a;

    iget-object v1, p0, Lfux;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrp;

    invoke-interface {v2, p1, p2, v1}, Lfux$a;->a(JLfrp;)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v6, Lfux$1;

    invoke-direct {v6, p0, v0, p1, p2}, Lfux$1;-><init>(Lfux;Ljava/lang/String;J)V

    .line 79
    .local v6, "callback":Lcma;, "Lcma<Lfrp;>;"
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ApTerminalPresenter"

    aput-object v2, v1, v3

    const-string/jumbo v2, " getApTerminalInfo start orgId = "

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lfbf;->a()Lfbf;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lfbf;->a(JJLcma;)V

    goto/16 :goto_0
.end method

.method public final b(JJ)Lfrp;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 85
    iget-object v0, p0, Lfux;->a:Ljava/util/Map;

    invoke-static {p1, p2, p3, p4}, Lfux;->c(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrp;

    return-object v0
.end method
