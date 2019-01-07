.class public final Lann;
.super Ljava/lang/Object;
.source "AdsTraceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v0, p1

    .line 39
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_1
    const-string/jumbo v2, "ads"

    invoke-static {v2, p0, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "mfae":Ljava/util/MissingFormatArgumentException;
    invoke-virtual {v1}, Ljava/util/MissingFormatArgumentException;->printStackTrace()V

    goto :goto_1
.end method
