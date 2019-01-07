.class public final Lti;
.super Ljava/lang/Object;
.source "CspaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    :goto_0
    return-wide v0

    .line 21
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    goto :goto_0
.end method
