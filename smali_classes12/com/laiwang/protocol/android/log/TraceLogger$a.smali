.class public Lcom/laiwang/protocol/android/log/TraceLogger$a;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/log/TraceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-string/jumbo v0, "lwp"

    sput-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    .line 212
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string/jumbo v0, "lwp"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "lwp"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return-void
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    .line 225
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "lwp"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method
