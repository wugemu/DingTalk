.class public final Ldoe;
.super Ljava/lang/Object;
.source "DtImageParseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    return-object v1

    .line 29
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "decodedText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 33
    :try_start_1
    const-class v3, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    invoke-static {v0, v3}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    .line 34
    .local v1, "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    if-nez v1, :cond_0

    .line 35
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 38
    .end local v1    # "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 43
    .end local v0    # "decodedText":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 44
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v1

    goto :goto_0
.end method
