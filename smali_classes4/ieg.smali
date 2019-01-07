.class public final Lieg;
.super Ljava/lang/Object;
.source "AVLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "OpenAV"

    invoke-static {v0, p0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 20
    invoke-static {}, Liel;->a()Liel;

    move-result-object v1

    .line 1065
    iget-object v0, v1, Liel;->a:Liel$a;

    .line 21
    .local v0, "logListener":Liel$a;
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "["

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string/jumbo v2, "]"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liel$a;->a(Ljava/lang/String;)V

    .line 1085
    :cond_0
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[VoIP] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "OpenAV"

    invoke-static {v0, p0}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 37
    invoke-static {}, Liel;->a()Liel;

    move-result-object v1

    .line 2065
    iget-object v0, v1, Liel;->a:Liel$a;

    .line 38
    .local v0, "logListener":Liel$a;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "["

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string/jumbo v2, "]"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liel$a;->a(Ljava/lang/String;)V

    .line 2085
    :cond_0
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[VoIP] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "OpenAV"

    invoke-static {v0, p0}, Lieg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 54
    invoke-static {}, Liel;->a()Liel;

    move-result-object v2

    .line 3065
    iget-object v0, v2, Liel;->a:Liel$a;

    .line 55
    .local v0, "logListener":Liel$a;
    if-eqz v0, :cond_0

    .line 56
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string/jumbo v3, "]"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Liel$a;->a(Ljava/lang/String;)V

    .line 3085
    :cond_0
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[VoIP] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "strLog":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "OpenAV"

    invoke-static {v0, p0}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 71
    invoke-static {}, Liel;->a()Liel;

    move-result-object v2

    .line 4065
    iget-object v0, v2, Liel;->a:Liel$a;

    .line 72
    .local v0, "logListener":Liel$a;
    if-eqz v0, :cond_0

    .line 73
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string/jumbo v3, "]"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Liel$a;->a(Ljava/lang/String;)V

    .line 4085
    :cond_0
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[VoIP] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "strLog":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
