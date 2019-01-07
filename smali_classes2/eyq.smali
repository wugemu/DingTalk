.class public final Leyq;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "colorStr"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    move-object v0, p0

    .line 28
    .local v0, "destColorStr":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 20
    .end local v0    # "destColorStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 21
    .local v1, "startIndex":I
    const-string/jumbo v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "0X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    :cond_1
    const/4 v1, 0x2

    .line 24
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "destColorStr":Ljava/lang/String;
    goto :goto_0
.end method
