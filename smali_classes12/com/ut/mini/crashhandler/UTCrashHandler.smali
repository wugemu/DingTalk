.class public Lcom/ut/mini/crashhandler/UTCrashHandler;
.super Ljava/lang/Object;
.source "UTCrashHandler.java"


# static fields
.field private static s_instance:Lcom/ut/mini/crashhandler/UTCrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/ut/mini/crashhandler/UTCrashHandler;

    invoke-direct {v0}, Lcom/ut/mini/crashhandler/UTCrashHandler;-><init>()V

    sput-object v0, Lcom/ut/mini/crashhandler/UTCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTCrashHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ut/mini/crashhandler/UTCrashHandler;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ut/mini/crashhandler/UTCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTCrashHandler;

    return-object v0
.end method


# virtual methods
.method public setCrashCaughtListener(Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;)V
    .locals 2
    .param p1, "pListener"    # Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    new-instance v0, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    invoke-direct {v0, p1}, Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;-><init>(Lcom/ut/mini/crashhandler/IUTCrashCaughtListener;)V

    .line 21
    .local v0, "crashHandler":Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V

    .line 23
    return-void
.end method
