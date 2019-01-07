.class public Lcom/taobao/weex/utils/WXLogUtils;
.super Ljava/lang/Object;
.source "WXLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;,
        Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;
    }
.end annotation


# static fields
.field private static final CLAZZ_NAME_LOG_UTIL:Ljava/lang/String; = "com.taobao.weex.devtools.common.LogUtil"

.field public static final WEEX_PERF_TAG:Ljava/lang/String; = "weex_perf"

.field public static final WEEX_TAG:Ljava/lang/String; = "weex"

.field private static builder:Ljava/lang/StringBuilder;

.field private static clazzMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static jsLogWatcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "com.taobao.weex.devtools.common.LogUtil"

    const-string/jumbo v2, "com.taobao.weex.devtools.common.LogUtil"

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 127
    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 129
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    const-string/jumbo v2, "jsLog"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 131
    sget-object v2, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;

    .line 132
    .local v0, "jsLogWatcher":Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;
    const-string/jumbo v3, "__DEBUG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string/jumbo v3, "__DEBUG"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    const-string/jumbo v3, "__INFO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const-string/jumbo v3, "__INFO"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v3, "__WARN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    const-string/jumbo v3, "__WARN"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string/jumbo v3, "__ERROR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    const-string/jumbo v3, "__ERROR"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-interface {v0, v5, p1}, Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;->onJsLog(ILjava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v0    # "jsLogWatcher":Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;
    :cond_4
    const-string/jumbo v2, "debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, " | __"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    const-string/jumbo v2, " | __"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "msgs":[Ljava/lang/String;
    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v1, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 152
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getLogLevel(Ljava/lang/String;)Lcom/taobao/weex/utils/LogLevel;

    .line 158
    .end local v1    # "msgs":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [B

    .prologue
    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 190
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method private static getLogLevel(Ljava/lang/String;)Lcom/taobao/weex/utils/LogLevel;
    .locals 3
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 173
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    :goto_1
    return-object v0

    .line 161
    :sswitch_0
    const-string/jumbo v2, "__ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "__WARN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "__INFO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "__LOG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "__DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 163
    :pswitch_0
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 165
    :pswitch_1
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 167
    :pswitch_2
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 169
    :pswitch_3
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 171
    :pswitch_4
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x58868772 -> :sswitch_2
        -0x5880599a -> :sswitch_1
        0x5670f44 -> :sswitch_3
        0x476afe53 -> :sswitch_4
        0x477f3a08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    const-string/jumbo v5, ""

    .line 277
    :goto_0
    return-object v5

    .line 257
    :cond_0
    const/4 v3, 0x0

    .line 258
    .local v3, "sw":Ljava/io/StringWriter;
    const/4 v1, 0x0

    .line 260
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v3    # "sw":Ljava/io/StringWriter;
    .local v4, "sw":Ljava/io/StringWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 264
    invoke-virtual {v4}, Ljava/io/StringWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 268
    :try_start_3
    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 274
    :goto_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 268
    :try_start_4
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 273
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v5

    .line 269
    :catch_1
    move-exception v0

    .line 270
    .restart local v0    # "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 266
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    goto :goto_2

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    goto :goto_2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 178
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->info(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazzName"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    sget-object v1, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/taobao/weex/utils/LogLevel;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;->onLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getPriority()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getPriority()I

    move-result v0

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/weex/utils/LogLevel;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 87
    invoke-virtual {p2}, Lcom/taobao/weex/utils/LogLevel;->getPriority()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string/jumbo v0, "weex_perf"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->p(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static renderPerformanceLog(Ljava/lang/String;J)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[render time]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "debug"

    sget-object v1, Lcom/taobao/weex/utils/WXLogUtils;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-void
.end method

.method public static setJsLogWatcher(Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;)V
    .locals 1
    .param p0, "watcher"    # Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;

    .prologue
    .line 297
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/taobao/weex/utils/WXLogUtils;->jsLogWatcherList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    return-void
.end method

.method public static setLogWatcher(Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;)V
    .locals 0
    .param p0, "watcher"    # Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    .prologue
    .line 303
    sput-object p0, Lcom/taobao/weex/utils/WXLogUtils;->sLogWatcher:Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;

    .line 304
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 182
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 217
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 186
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private static writeConsoleLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "level"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    sget-object v2, Lcom/taobao/weex/utils/WXLogUtils;->clazzMaps:Ljava/util/HashMap;

    const-string/jumbo v3, "com.taobao.weex.devtools.common.LogUtil"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 286
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v2, "log"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 288
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->WTF:Lcom/taobao/weex/utils/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/utils/LogLevel;)V

    .line 194
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 233
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->wtf(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method
