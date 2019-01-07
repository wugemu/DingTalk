.class public final Lajh;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 23
    const-string/jumbo v0, "zh_CN"

    .line 25
    .local v0, "language":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 26
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 30
    :cond_0
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "AppUtils"

    const-string/jumbo v4, "getLanguage fail"

    invoke-static {v3, v4, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
