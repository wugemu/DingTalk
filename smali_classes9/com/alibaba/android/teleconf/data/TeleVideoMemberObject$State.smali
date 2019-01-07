.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
.super Ljava/lang/Enum;
.source "TeleVideoMemberObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_KICKOFF:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_MAX:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field public static final enum USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 39
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_JOINING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 40
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_JOINING_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_REJECTED"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 42
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_BUSY"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 43
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_NO_SUPPORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 44
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_NO_PERMISSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 45
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_CONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 46
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_RUNNING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 47
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_RUNNING_AUDIO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_RUNNING_CALL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 49
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_RUNNING_HOLD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 50
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_LEAVED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 51
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_KICKOFF"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_KICKOFF:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 52
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    const-string/jumbo v1, "USER_STATE_MAX"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_MAX:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 37
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_KICKOFF:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_MAX:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    return-object v0
.end method
