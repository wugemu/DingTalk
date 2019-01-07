.class public final enum Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
.super Ljava/lang/Enum;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioRecordStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string/jumbo v1, "AUDIO_RECORD_START_EXCEPTION"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    .line 68
    new-instance v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string/jumbo v1, "AUDIO_RECORD_START_STATE_MISMATCH"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    sget-object v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    invoke-virtual {v0}, [Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object v0
.end method
