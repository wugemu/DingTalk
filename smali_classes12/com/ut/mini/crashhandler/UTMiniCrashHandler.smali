.class public Lcom/ut/mini/crashhandler/UTMiniCrashHandler;
.super Ljava/lang/Object;
.source "UTMiniCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "UTCrashHandler"

.field private static volatile mCrashing:Z

.field private static s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIsTurnOff:Z

.field private mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    invoke-direct {v0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;-><init>()V

    sput-object v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    .line 24
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    .line 32
    return-void
.end method

.method private _initialize()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 61
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    .line 64
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    return-object v0
.end method


# virtual methods
.method public isTurnOff()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    return v0
.end method

.method public setCrashCaughtListener(Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;)V
    .locals 0
    .param p1, "aListener"    # Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    .line 56
    return-void
.end method

.method public turnOff()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    .line 48
    return-void
.end method

.method public turnOn(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->_initialize()V

    .line 52
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "pThread"    # Ljava/lang/Thread;
    .param p2, "pException"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0xa

    .line 71
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z

    .line 74
    if-eqz p2, :cond_2

    .line 75
    const-string/jumbo v1, "Caught Exception By UTCrashHandler.Please see log as follows!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_2
    invoke-static {p2}, Lcom/ut/mini/crashhandler/UTExceptionParser;->parse(Ljava/lang/Throwable;)Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;

    move-result-object v8

    .line 81
    .local v8, "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    if-eqz v8, :cond_5

    iget-object v1, v8, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashDetail:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getExpName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getMd5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 86
    const/4 v6, 0x0

    .line 87
    .local v6, "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 89
    :try_start_2
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    invoke-interface {v1, p1, p2}, Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 95
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 96
    :try_start_3
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 99
    .restart local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v1, "StackTrace"

    invoke-virtual {v8}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getCrashDetail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "UT"

    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getExpName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    .local v0, "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const-string/jumbo v1, "_priority"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 108
    const-string/jumbo v1, "_sls"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 111
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v9

    .line 112
    .local v9, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v9, :cond_6

    .line 113
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v0    # "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_7

    .line 124
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 90
    .restart local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 91
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 119
    .end local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/lang/Throwable;
    .end local v8    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    :catch_1
    move-exception v10

    .line 120
    .local v10, "t2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_8

    .line 124
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 115
    .end local v10    # "t2":Ljava/lang/Throwable;
    .restart local v0    # "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .restart local v9    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_6
    :try_start_6
    const-string/jumbo v1, "Record crash stacktrace error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 123
    .end local v0    # "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .end local v9    # "lTracker":Lcom/ut/mini/UTTracker;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_9

    .line 124
    iget-object v2, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 128
    :goto_3
    throw v1

    .line 127
    .restart local v8    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 127
    .end local v8    # "lExceptionItem":Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
    .restart local v10    # "t2":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 127
    .end local v10    # "t2":Ljava/lang/Throwable;
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_3
.end method
