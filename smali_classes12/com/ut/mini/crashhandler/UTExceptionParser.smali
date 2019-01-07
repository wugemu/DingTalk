.class public Lcom/ut/mini/crashhandler/UTExceptionParser;
.super Ljava/lang/Object;
.source "UTExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static parse(Ljava/lang/Throwable;)Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .locals 13
    .param p0, "pException"    # Ljava/lang/Throwable;

    .prologue
    const/4 v12, 0x0

    .line 13
    if-eqz p0, :cond_7

    .line 15
    new-instance v2, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;

    invoke-direct {v2}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;-><init>()V

    .line 17
    .local v2, "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 19
    .local v1, "lCause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 20
    move-object v1, p0

    .line 22
    :cond_0
    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 24
    .local v8, "stes":[Ljava/lang/StackTraceElement;
    array-length v10, v8

    if-lez v10, :cond_4

    .line 25
    aget-object v7, v8, v12

    .line 26
    .local v7, "ste":Ljava/lang/StackTraceElement;
    if-eqz v7, :cond_4

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "sException":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 30
    .local v4, "message":Ljava/lang/String;
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 31
    .local v9, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 34
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 38
    :try_start_1
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 39
    invoke-virtual {v9}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 45
    :goto_0
    const-string/jumbo v10, "}:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "kPos":I
    if-lez v0, :cond_5

    .line 46
    add-int/lit8 v10, v0, 0x2

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {v2, v6}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->setExpName(Ljava/lang/String;)V

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 54
    const-string/jumbo v10, "\n"

    const-string/jumbo v11, "++"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    :cond_2
    invoke-virtual {v2, v4}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->setCrashDetail(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lamv;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "lMd5":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->setMd5(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v10, "com.taobao.statistic"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "com.ut"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "org.usertrack"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 68
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->setmCrashedByUT(Z)V

    .line 77
    .end local v0    # "kPos":I
    .end local v1    # "lCause":Ljava/lang/Throwable;
    .end local v2    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .end local v3    # "lMd5":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .end local v6    # "sException":Ljava/lang/String;
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    .end local v8    # "stes":[Ljava/lang/StackTraceElement;
    .end local v9    # "sw":Ljava/io/StringWriter;
    :cond_4
    :goto_2
    return-object v2

    .restart local v1    # "lCause":Ljava/lang/Throwable;
    .restart local v2    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "sException":Ljava/lang/String;
    .restart local v7    # "ste":Ljava/lang/StackTraceElement;
    .restart local v8    # "stes":[Ljava/lang/StackTraceElement;
    .restart local v9    # "sw":Ljava/io/StringWriter;
    :catch_0
    move-exception v10

    .line 38
    :try_start_2
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 39
    invoke-virtual {v9}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 43
    :catch_1
    move-exception v10

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v10

    .line 38
    :try_start_3
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 39
    invoke-virtual {v9}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 42
    :goto_3
    throw v10

    .line 47
    .restart local v0    # "kPos":I
    :cond_5
    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 70
    .restart local v3    # "lMd5":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v12}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->setmCrashedByUT(Z)V

    goto :goto_2

    .line 77
    .end local v0    # "kPos":I
    .end local v1    # "lCause":Ljava/lang/Throwable;
    .end local v2    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .end local v3    # "lMd5":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .end local v6    # "sException":Ljava/lang/String;
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    .end local v8    # "stes":[Ljava/lang/StackTraceElement;
    .end local v9    # "sw":Ljava/io/StringWriter;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .restart local v1    # "lCause":Ljava/lang/Throwable;
    .restart local v2    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "sException":Ljava/lang/String;
    .restart local v7    # "ste":Ljava/lang/StackTraceElement;
    .restart local v8    # "stes":[Ljava/lang/StackTraceElement;
    .restart local v9    # "sw":Ljava/io/StringWriter;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 43
    :catch_3
    move-exception v10

    goto/16 :goto_0
.end method
