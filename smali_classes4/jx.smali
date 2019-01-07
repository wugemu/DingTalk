.class public final Ljx;
.super Ljava/lang/Object;
.source "HttpDnsAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v1

    invoke-interface {v1, p0}, Lka;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy;

    invoke-interface {v1}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
