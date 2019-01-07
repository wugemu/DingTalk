.class public Lcom/laiwang/protocol/file/h;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# direct methods
.method public static a(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
