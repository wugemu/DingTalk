.class public final Lknp;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lkmx;


# instance fields
.field public final a:Lkna;


# direct methods
.method public constructor <init>(Lkna;)V
    .locals 0
    .param p1, "client"    # Lkna;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lknp;->a:Lkna;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lkmx$a;)Lkne;
    .locals 8
    .param p1, "chain"    # Lkmx$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    move-object v3, p1

    check-cast v3, Lkob;

    .line 1117
    .local v3, "realChain":Lkob;
    iget-object v4, v3, Lkob;->d:Lknc;

    .line 2101
    .local v4, "request":Lknc;
    iget-object v5, v3, Lkob;->a:Lknu;

    .line 3053
    .local v5, "streamAllocation":Lknu;
    iget-object v6, v4, Lknc;->b:Ljava/lang/String;

    .line 41
    const-string/jumbo v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 42
    .local v1, "doExtensiveHealthChecks":Z
    :goto_0
    iget-object v6, p0, Lknp;->a:Lkna;

    invoke-virtual {v5, v6, p1, v1}, Lknu;->a(Lkna;Lkmx$a;Z)Lknx;

    move-result-object v2

    .line 43
    .local v2, "httpCodec":Lknx;
    invoke-virtual {v5}, Lknu;->b()Lknr;

    move-result-object v0

    .line 45
    .local v0, "connection":Lknr;
    invoke-virtual {v3, v4, v5, v2, v0}, Lkob;->a(Lknc;Lknu;Lknx;Lknr;)Lkne;

    move-result-object v6

    return-object v6

    .line 41
    .end local v0    # "connection":Lknr;
    .end local v1    # "doExtensiveHealthChecks":Z
    .end local v2    # "httpCodec":Lknx;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
