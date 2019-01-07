.class public final Ljtn;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljts;->a(Landroid/content/Context;Ljava/lang/String;)Ljts;

    move-result-object v0

    const-string/jumbo v1, "Common_HttpRetryCount"

    invoke-virtual {v0, v1}, Ljts;->a(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x2

    .line 109
    :cond_0
    return v0
.end method
