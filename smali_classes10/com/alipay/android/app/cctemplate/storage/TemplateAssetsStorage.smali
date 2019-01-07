.class public Lcom/alipay/android/app/cctemplate/storage/TemplateAssetsStorage;
.super Ljava/lang/Object;
.source "TemplateAssetsStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 22
    const/4 v4, 0x0

    .line 23
    .local v4, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 30
    :goto_0
    if-eqz v4, :cond_0

    .line 31
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v6, 0x800

    new-array v2, v6, [C

    .line 35
    .local v2, "data":[C
    :goto_1
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_1

    .line 36
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplAssetsReadEx"

    invoke-virtual {v6, v7, v8, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 49
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "data":[C
    :cond_0
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 26
    :catch_1
    move-exception v3

    .line 27
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplAssetsFindEx"

    invoke-virtual {v6, v7, v8, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 42
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "data":[C
    .restart local v5    # "len":I
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 43
    :catch_2
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 43
    .end local v5    # "len":I
    .local v3, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 41
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 42
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 45
    :goto_4
    throw v6

    .line 43
    :catch_4
    move-exception v3

    .line 44
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 50
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
