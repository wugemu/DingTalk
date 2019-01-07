.class public final Ljmy;
.super Ljava/lang/Object;
.source "MaLogger.java"


# static fields
.field private static a:Lcom/taobao/ma/common/log/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    sput-object v0, Ljmy;->a:Lcom/taobao/ma/common/log/LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "logLevel"    # Lcom/taobao/ma/common/log/LogLevel;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    .line 1101
    invoke-virtual {p0}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v0

    sget-object v1, Ljmy;->a:Lcom/taobao/ma/common/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1138
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 1101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1129
    :pswitch_1
    if-eqz p2, :cond_2

    .line 1130
    const-string/jumbo v0, "Ma"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1132
    :cond_2
    const-string/jumbo v0, "Ma"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1137
    :pswitch_2
    if-eqz p2, :cond_3

    .line 1138
    const-string/jumbo v0, "Ma"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1140
    :cond_3
    const-string/jumbo v0, "Ma"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljmy;->a(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0, p1}, Ljmy;->a(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->INFO:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljmy;->a(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
