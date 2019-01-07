.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;
.super Ljava/lang/Enum;
.source "TeleVideoMemberObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_AUDIO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_AUDIO_UNMUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_VIDEO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field public static final enum USER_RUN_STATE_VIDEO_STOPPED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 65
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_AUDIO_MUTED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_AUDIO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 66
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_AUDIO_UNMUTED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_AUDIO_UNMUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 67
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_VIDEO_MUTED"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 68
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_VIDEO_RUN"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 69
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    const-string/jumbo v1, "USER_RUN_STATE_VIDEO_STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_STOPPED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_AUDIO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_AUDIO_UNMUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_STOPPED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    return-object v0
.end method
