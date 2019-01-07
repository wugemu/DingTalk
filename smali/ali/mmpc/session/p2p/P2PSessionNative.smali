.class public Lali/mmpc/session/p2p/P2PSessionNative;
.super Ljava/lang/Object;
.source "P2PSessionNative.java"


# static fields
.field private static m_instance:Lali/mmpc/session/p2p/P2PSessionNative;


# instance fields
.field isRunning:Z

.field private nativeSessionAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lali/mmpc/session/p2p/P2PSessionNative;->m_instance:Lali/mmpc/session/p2p/P2PSessionNative;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lali/mmpc/session/p2p/P2PSessionNative;->nativeSessionAddress:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lali/mmpc/session/p2p/P2PSessionNative;->isRunning:Z

    .line 27
    sput-object p0, Lali/mmpc/session/p2p/P2PSessionNative;->m_instance:Lali/mmpc/session/p2p/P2PSessionNative;

    .line 28
    return-void
.end method

.method private static native acceptCall(JLali/mmpc/session/p2p/P2PSessionNativeSettings;)I
.end method

.method private static native disconnectPs(J)V
.end method

.method private static native getCurCallId(J)Ljava/lang/String;
.end method

.method public static getP2PSessionNativeInstance()Lali/mmpc/session/p2p/P2PSessionNative;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lali/mmpc/session/p2p/P2PSessionNative;->m_instance:Lali/mmpc/session/p2p/P2PSessionNative;

    return-object v0
.end method

.method private static native hungUpCall(J)I
.end method

.method private static native init(JLali/mmpc/session/AppInfo;)I
.end method

.method private static native initDsServer(JLjava/lang/String;)I
.end method

.method private static native isRunning(J)Z
.end method

.method private static native reconnectPs(J)V
.end method

.method private static native registerNewPsSelfId(JLjava/lang/String;)V
.end method

.method private static native resetDsServer(J)I
.end method

.method private static native sendAppInfoUpdateNotify(JI)I
.end method

.method private static native sendDataByPs(JLjava/lang/String;[BI)Z
.end method

.method private static native sendRejectProjection(JI)I
.end method

.method private static native sendStopProjection(J)I
.end method

.method private static native setStateToStartingCall(J)V
.end method

.method private static native setupCall(JLali/mmpc/session/p2p/P2PSessionNativeSettings;)I
.end method

.method private static native termiate(J)I
.end method

.method private static native terminateDsServer(J)I
.end method


# virtual methods
.method public native disableAudioNetenginTransport(J)V
.end method

.method public native disableNetenginTransport(J)V
.end method

.method public native disableVideoNetenginTransport(J)V
.end method

.method public init()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public native setNetenginLogLevelAsInfo()V
.end method

.method public native setNetenginLogLevelAsVerbose()V
.end method

.method public native startRecordAudioRtpStream()V
.end method

.method public native startRecordVideoRtpStream()V
.end method

.method public native stopRecordAudioRtpStream()V
.end method

.method public native stopRecordVideoRtpStream()V
.end method
