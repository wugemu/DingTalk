.class public final Lbka;
.super Ljava/lang/Object;
.source "DingTextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "withEllipsis"    # Z

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    const/4 p0, 0x0

    .line 32
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 20
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    .line 21
    const-string/jumbo p0, ""

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 24
    .local v0, "codePointCount":I
    if-ge p1, v0, :cond_0

    .line 27
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    .line 28
    .local v1, "codePointOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 31
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "ret":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "\u2026"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
