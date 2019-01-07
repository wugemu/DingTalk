.class final enum Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;
.super Ljava/lang/Enum;
.source "TeleConfDirectCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProtocolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

.field public static final enum PROTOCOL_CHOOSE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

.field public static final enum PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    const-string/jumbo v1, "PROTOCOL_CREATE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    .line 80
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    const-string/jumbo v1, "PROTOCOL_CHOOSE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CHOOSE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CHOOSE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->$VALUES:[Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->$VALUES:[Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    return-object v0
.end method
