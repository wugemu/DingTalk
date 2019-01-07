.class public Lcom/alipay/android/app/safepaylog/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x8

.field public static final INFO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "safepaybase"

.field public static final VERBOSE:I = 0xf

.field public static final WARNING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 85
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 111
    :sswitch_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :sswitch_2
    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static printExceptionStackTrace(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    invoke-static {}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    const-string/jumbo v1, "safepaybase"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "exception":Ljava/lang/Throwable;
    const-string/jumbo v1, "safepaybase"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static record(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "[%1$s][%2$s][%3$s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "info":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 46
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "info":Ljava/lang/String;
    :goto_0
    return-void

    .line 26
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    .restart local v2    # "info":Ljava/lang/String;
    :sswitch_0
    invoke-static {v2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "info":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 44
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    .restart local v2    # "info":Ljava/lang/String;
    :sswitch_1
    :try_start_1
    invoke-static {v2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :sswitch_2
    invoke-static {v2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :sswitch_3
    invoke-static {v2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :sswitch_4
    invoke-static {v2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 24
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 53
    const/16 v0, 0xf

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method private static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "safepaybase"

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method
