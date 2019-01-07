.class public final Lilc;
.super Ljava/lang/Object;
.source "MdapTrafficController.java"


# direct methods
.method public static a(ZZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 95
    if-eqz p0, :cond_1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "MdapTraffic"

    const-string/jumbo v2, "doUpdateConsume, do not update by positive."

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lilz;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "MdapTraffic"

    const-string/jumbo v2, "doUpdateConsume, do not update by disconnected."

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
