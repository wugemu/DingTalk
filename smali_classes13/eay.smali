.class public final Leay;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 8
    .param p0, "textColor"    # Ljava/lang/String;
    .param p1, "defColor"    # I

    .prologue
    .line 24
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 25
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 27
    .local v1, "res":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 43
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 32
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    :try_start_0
    const-string/jumbo v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v2, v1

    .line 43
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 35
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 39
    :catch_0
    move-exception v3

    const-string/jumbo v3, "im"

    const-string/jumbo v4, "ColorUtils"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "textColor:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    .line 40
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
