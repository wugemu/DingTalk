.class public final Lyp;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 26
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, v0, Lxt;->d:Lym;

    .line 28
    .local v1, "logger":Lym;
    if-eqz v1, :cond_0

    .line 29
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "tag:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", desc:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lym;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v1    # "logger":Lym;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 46
    .local v0, "config":Lxt;
    if-eqz v0, :cond_4

    .line 2112
    iget-object v2, v0, Lxt;->e:Lyi;

    .line 48
    .local v2, "logger":Lyi;
    if-eqz v2, :cond_4

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 51
    const-string/jumbo v3, "email"

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    const-string/jumbo v3, "server"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    if-eqz p3, :cond_2

    .line 57
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    if-eqz p4, :cond_3

    .line 60
    const-string/jumbo v3, "message"

    invoke-virtual {v1, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    invoke-interface {v2, v1, p0}, Lyi;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 66
    .end local v1    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "logger":Lyi;
    :cond_4
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 36
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 2096
    iget-object v1, v0, Lxt;->d:Lym;

    .line 38
    .local v1, "logger":Lym;
    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v2, "CSpace"

    invoke-interface {v1, v2, p0, p1}, Lym;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "logger":Lym;
    :cond_0
    return-void
.end method
