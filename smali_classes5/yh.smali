.class public final Lyh;
.super Ljava/lang/Object;
.source "CSpaceTrace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lyj;
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lxn;->n()Lxo;

    move-result-object v0

    .line 17
    .local v0, "config":Lxo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1015
    :cond_0
    iget-object v1, v0, Lxo;->a:Lyj;

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 21
    invoke-static {}, Lyh;->a()Lyj;

    move-result-object v1

    .line 22
    .local v1, "logger":Lyj;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyj;->a()I

    move-result v0

    .line 23
    .local v0, "logLevel":I
    :goto_0
    if-lt p0, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 22
    .end local v0    # "logLevel":I
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 23
    .restart local v0    # "logLevel":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
