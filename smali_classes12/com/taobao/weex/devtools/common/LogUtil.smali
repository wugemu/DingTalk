.class public Lcom/taobao/weex/devtools/common/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "weex"

.field private static final sLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    sput-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "verbose"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->LOG:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "info"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->LOG:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "assert"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->LOG:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "debug"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->DEBUG:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "warning"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->WARNING:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "error"

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "weex"

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "weex"

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 127
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->i(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static i(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "weex"

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 145
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # Ljava/lang/String;
    .param p1, "messageText"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/taobao/weex/devtools/common/LogUtil;->sLevelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->JAVASCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->v(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static v(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "weex"

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "weex"

    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static w(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "weex"

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 52
    return-void
.end method
