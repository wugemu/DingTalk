.class public Lcom/alibaba/wukong/auth/bj;
.super Ljava/lang/Object;
.source "DebugTools.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v2, :cond_0

    .line 32
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 19
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alibaba/wukong/auth/bj$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/wukong/auth/bj$1;-><init>([Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
