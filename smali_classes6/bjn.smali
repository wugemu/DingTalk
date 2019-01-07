.class public final Lbjn;
.super Ljava/lang/Object;
.source "DingColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 25
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    const-string/jumbo v1, ""

    goto :goto_0

    .line 29
    :cond_1
    move-object v1, p0

    .line 31
    .local v1, "ret":Ljava/lang/CharSequence;
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "<font color=\"#F25643\">"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "</font>"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "[DingColorUtil]change2Red failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
