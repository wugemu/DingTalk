.class public Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;
.super Ljava/lang/Object;
.source "UTCrashHandlerWapper.java"

# interfaces
.implements Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;


# instance fields
.field private crashCaughtListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;


# direct methods
.method public constructor <init>(Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;)V
    .locals 0
    .param p1, "crashCaughtListener"    # Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;->crashCaughtListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;

    .line 15
    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 1
    .param p1, "pThread"    # Ljava/lang/Thread;
    .param p2, "pException"    # Ljava/lang/Throwable;
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
    .line 18
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;->crashCaughtListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;->crashCaughtListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;

    invoke-interface {v0, p1, p2}, Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
