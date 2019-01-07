.class public Lorg/webrtc/utils/AlivcLog;
.super Ljava/lang/Object;
.source "AlivcLog.java"


# static fields
.field private static mInstance:Lorg/webrtc/utils/AlivcLog;

.field private static m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/utils/AlivcLog;->mInstance:Lorg/webrtc/utils/AlivcLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _FILE_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 96
    .local v0, "traceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static _FUNC_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 101
    .local v0, "traceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static _LINE_()I
    .locals 3

    .prologue
    .line 105
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 106
    .local v0, "traceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    return v1
.end method

.method private static _TIME_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 111
    .local v0, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized create(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;)Lorg/webrtc/utils/AlivcLog;
    .locals 2
    .param p0, "mAliRTCInterface"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .prologue
    .line 14
    const-class v1, Lorg/webrtc/utils/AlivcLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->mInstance:Lorg/webrtc/utils/AlivcLog;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lorg/webrtc/utils/AlivcLog;

    invoke-direct {v0}, Lorg/webrtc/utils/AlivcLog;-><init>()V

    sput-object v0, Lorg/webrtc/utils/AlivcLog;->mInstance:Lorg/webrtc/utils/AlivcLog;

    .line 16
    sput-object p0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .line 17
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->mInstance:Lorg/webrtc/utils/AlivcLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->mInstance:Lorg/webrtc/utils/AlivcLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_FILE_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_LINE_()I

    move-result v2

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->AliRTCSDK_LOG_DEBUG:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->LogDestroy()V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .line 75
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_FILE_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_LINE_()I

    move-result v2

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->AliRTCSDK_LOG_ERROR:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->getLineMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static enableUpload(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 23
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnableUpload(Z)V

    .line 26
    :cond_0
    return-void
.end method

.method private static getFileLineMethod()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 79
    .local v1, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 81
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 82
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 83
    .local v0, "toStringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLineMethod()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 88
    .local v1, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 90
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 91
    .local v0, "toStringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_FILE_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_LINE_()I

    move-result v2

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->AliRTCSDK_LOG_INFO:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static setUploadAppID(Ljava/lang/String;)V
    .locals 1
    .param p0, "appID"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SetUploadAppID(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static setUploadSessionID(Ljava/lang/String;)V
    .locals 1
    .param p0, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SetUploadSessionID(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_FILE_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_LINE_()I

    move-result v2

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->AliRTCSDK_LOG_VERBOSE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/webrtc/utils/AlivcLog;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_FILE_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->_LINE_()I

    move-result v2

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->AliRTCSDK_LOG_WARNING:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method
