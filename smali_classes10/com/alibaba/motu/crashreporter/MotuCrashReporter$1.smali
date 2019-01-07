.class final Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;
.super Ljava/lang/Object;
.source "MotuCrashReporter.java"

# interfaces
.implements Lcom/alibaba/motu/crashreporter/CatcherManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

.field final synthetic b:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/crashreporter/MotuCrashReporter;Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;->b:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    iput-object p2, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;->a:Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;->a:Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;->a:Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;->a:Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
