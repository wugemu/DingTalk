.class public final Ljmj;
.super Ljava/lang/Object;
.source "GLog.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    sput v0, Ljmj;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string/jumbo v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    const/4 v0, 0x0

    sput v0, Ljmj;->a:I

    .line 49
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/taobao/gcanvas/GCanvasJNI;->setLogLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo v0, "debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    const/4 v0, 0x3

    sput v0, Ljmj;->a:I

    goto :goto_1

    .line 39
    :cond_3
    const-string/jumbo v0, "info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    const/4 v0, 0x4

    sput v0, Ljmj;->a:I

    goto :goto_1

    .line 41
    :cond_4
    const-string/jumbo v0, "warn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    const/4 v0, 0x5

    sput v0, Ljmj;->a:I

    goto :goto_1

    .line 43
    :cond_5
    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    const/4 v0, 0x6

    sput v0, Ljmj;->a:I

    goto :goto_1

    .line 45
    :cond_6
    const-string/jumbo v0, "fatal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x7

    sput v0, Ljmj;->a:I

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    sget v0, Ljmj;->a:I

    if-nez v0, :cond_0

    .line 3057
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    sget v0, Ljmj;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "CANVAS"

    .line 1065
    sget v1, Ljmj;->a:I

    if-nez v1, :cond_0

    .line 2057
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    sget v0, Ljmj;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    sget v0, Ljmj;->a:I

    if-nez v0, :cond_1

    .line 4057
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget v0, Ljmj;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
