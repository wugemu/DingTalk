.class public final enum Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;
.super Ljava/lang/Enum;
.source "TeleConfRecordDetailObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

.field public static final enum Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

.field public static final enum CallingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

.field public static final enum Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

.field public static final enum IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    const-string/jumbo v1, "Calling"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 22
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    const-string/jumbo v1, "Incoming"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 23
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    const-string/jumbo v1, "CallingEx"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->CallingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 24
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    const-string/jumbo v1, "IncomingEx"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->CallingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    return-object v0
.end method
