.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;
.super Ljava/lang/Enum;
.source "TeleVideoMemberObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BusyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

.field public static final enum USER_BUSY_STATE_CONFCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

.field public static final enum USER_BUSY_STATE_PHONECALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

.field public static final enum USER_BUSY_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

.field public static final enum USER_BUSY_STATE_VOIPCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    const-string/jumbo v1, "USER_BUSY_STATE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 58
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    const-string/jumbo v1, "USER_BUSY_STATE_PHONECALL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_PHONECALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 59
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    const-string/jumbo v1, "USER_BUSY_STATE_VOIPCALL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_VOIPCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 60
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    const-string/jumbo v1, "USER_BUSY_STATE_CONFCALL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_CONFCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_PHONECALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_VOIPCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_CONFCALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    return-object v0
.end method
