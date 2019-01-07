.class public Lcom/taobao/weex/wson/WsonUtils;
.super Ljava/lang/Object;
.source "WsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseWson([B)Ljava/lang/Object;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-object v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "weex wson parse error "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_0

    .line 51
    :goto_0
    return-object v1

    .line 48
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->toWson(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "weex wson to wson error "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
