.class final Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;
.super Ljava/lang/Object;
.source "MotuCrashReporter.java"

# interfaces
.implements Lcom/alibaba/motu/crashreporter/CatcherManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

.field final synthetic b:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/crashreporter/MotuCrashReporter;Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;->b:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    iput-object p2, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;->a:Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

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
    .line 58
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;->a:Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;->a:Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;->a:Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
