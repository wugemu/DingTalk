.class public final Llgw;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llgw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Llgw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgw$a",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Llgx;)Llgz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgx",
            "<-TT;>;)",
            "Llgz;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1979
    .local p0, "this":Llgw;, "Llgw<TT;>;"
    .local p1, "te":Llgx;, "Llgx<-TT;>;"
    :try_start_0
    iget-object v3, p0, Llgw;->a:Llgw$a;

    invoke-static {p0, v3}, Llkm;->a(Llgw;Llgw$a;)Llgw$a;

    move-result-object v3

    invoke-interface {v3, p1}, Llgw$a;->call(Ljava/lang/Object;)V

    .line 1980
    invoke-static {p1}, Llkm;->b(Llgz;)Llgz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1996
    :goto_0
    return-object v3

    .line 1981
    :catch_0
    move-exception v1

    .line 1982
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1985
    :try_start_1
    invoke-static {v1}, Llkm;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Llgx;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1996
    invoke-static {}, Llkz;->a()Llgz;

    move-result-object v3

    goto :goto_0

    .line 1986
    :catch_1
    move-exception v0

    .line 1987
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1990
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1992
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Llkm;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1994
    throw v2
.end method
