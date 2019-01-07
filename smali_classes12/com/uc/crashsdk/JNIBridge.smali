.class public Lcom/uc/crashsdk/JNIBridge;
.super Ljava/lang/Object;
.source "JNIBridge.java"


# static fields
.field static logFileNamePart1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "native"

    sput-object v0, Lcom/uc/crashsdk/JNIBridge;->logFileNamePart1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCachedInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method private static addDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
    .locals 1
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramBoolean1"    # Z
    .param p3, "paramBoolean2"    # Z
    .param p4, "paramInt"    # I
    .param p5, "paramBoolean3"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method private static addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method private static createCachedInfo(Ljava/lang/String;II)I
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method private static generateCustomLog(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Z
    .locals 1
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramBoolean1"    # Z
    .param p3, "paramBoolean2"    # Z
    .param p4, "paramBoolean3"    # Z
    .param p5, "paramBoolean4"    # Z
    .param p6, "paramBoolean5"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected static getCallbackInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static getJavaMemory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static getJavaStackTrace(Ljava/lang/Thread;I)Ljava/lang/String;
    .locals 10
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "pid"    # I

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne p1, v8, :cond_0

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    .line 37
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v6, "localStringBuffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_5

    .line 39
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 41
    .local v0, "arrayOfStackTraceElement1":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 42
    .local v2, "i":I
    if-eqz v0, :cond_3

    array-length v8, v0

    if-lez v8, :cond_3

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "j":I
    move-object v1, v0

    .line 45
    .local v1, "arrayOfStackTraceElement2":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .line 46
    .local v4, "k":I
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_0
    if-ge v7, v4, :cond_3

    .line 47
    aget-object v5, v1, v7

    .line 48
    .local v5, "localStackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    const-string/jumbo v8, "  at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "getJavaStackTrace"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 55
    const/4 v3, 0x1

    .line 46
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "arrayOfStackTraceElement2":[Ljava/lang/StackTraceElement;
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "localStackTraceElement":Ljava/lang/StackTraceElement;
    .end local v7    # "m":I
    :cond_3
    if-nez v2, :cond_4

    .line 60
    const-string/jumbo v8, "  (no java stack)\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .end local v0    # "arrayOfStackTraceElement1":[Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    :goto_1
    return-object v8

    .line 64
    :cond_5
    const-string/jumbo v8, "  (thread is null)\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private static getLogFileNamePart1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/uc/crashsdk/JNIBridge;->logFileNamePart1:Ljava/lang/String;

    invoke-static {v0}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/JNIBridge;->logFileNamePart1:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "native"

    goto :goto_0
.end method

.method private static getMaxHeapSize()J
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getProcessList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static native nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeAddCallbackInfo(Ljava/lang/String;ZZJ)I
.end method

.method public static native nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZZZZ)I
.end method

.method public static native nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeBreakpadInited(Ljava/lang/String;)V
.end method

.method public static native nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static native nativeCloseFile(I)V
.end method

.method public static native nativeCrash(II)V
.end method

.method public static native nativeCreateCachedInfo(Ljava/lang/String;I)Z
.end method

.method public static native nativeDumpThreads(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGenerateUnexpLog(J)I
.end method

.method public static native nativeGetCallbackInfo(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public static native nativeGetNativeBuildseq()Ljava/lang/String;
.end method

.method public static native nativeInitNative()V
.end method

.method public static native nativeInstallBreakpad()V
.end method

.method public static native nativeIsCrashing()Z
.end method

.method public static native nativeLockFile(IZ)Z
.end method

.method public static native nativeLog(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeOpenFile(Ljava/lang/String;)I
.end method

.method public static native nativePrepareUnexpInfos(Z)V
.end method

.method public static native nativeRegisterCurrentThread(Ljava/lang/String;)V
.end method

.method public static native nativeReserveFileHandle(II)V
.end method

.method public static native nativeSetCrashCustoms(ZZIIIIZZZZIZ)V
.end method

.method public static native nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetCrashLogFilesUploaded()V
.end method

.method public static native nativeSetFolderNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetForeground(Z)V
.end method

.method public static native nativeSetLogStrategy(ZZJ)V
.end method

.method public static native nativeSetMobileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetProcessNames(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetProcessType(Z)V
.end method

.method public static native nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetZip(ZLjava/lang/String;I)V
.end method

.method public static native nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z
.end method

.method public static native nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static native nativeUninstallBreakpad()V
.end method

.method public static native nativeUpdateCrashLogNames()V
.end method

.method public static native nativeUpdateSignals(III)V
.end method

.method public static native nativeUpdateUnexpInfo(I)V
.end method

.method private static onCrashLogGenerated(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 72
    return-void
.end method

.method private static onCrashRestarting()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method private static onKillProcess(Ljava/lang/String;II)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 120
    return-void
.end method

.method private static registerCurrentThread(Ljava/lang/String;I)I
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method private static registerInfoCallback(Ljava/lang/String;IJ)I
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I
    .param p2, "paramLong"    # J

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogFileNamePart1(Ljava/lang/String;)V
    .locals 0
    .param p0, "logFileNamePart1"    # Ljava/lang/String;

    .prologue
    .line 13
    sput-object p0, Lcom/uc/crashsdk/JNIBridge;->logFileNamePart1:Ljava/lang/String;

    .line 14
    return-void
.end method
