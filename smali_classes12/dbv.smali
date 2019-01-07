.class public final Ldbv;
.super Ljava/lang/Object;
.source "AtUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_lab_at_me_enable"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    return v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {}, Ldbv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "sp_at_me_open"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method
