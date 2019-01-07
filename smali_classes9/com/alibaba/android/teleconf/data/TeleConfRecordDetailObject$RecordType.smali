.class public final enum Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;
.super Ljava/lang/Enum;
.source "TeleConfRecordDetailObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public static final enum BizCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public static final enum PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public static final enum PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public static final enum VideoCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

.field public static final enum VoipCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    const-string/jumbo v1, "VoipCall"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VoipCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 15
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    const-string/jumbo v1, "PstnCall"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 16
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    const-string/jumbo v1, "VideoCall"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VideoCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 17
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    const-string/jumbo v1, "PhoneCall"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 18
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    const-string/jumbo v1, "BizCall"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->BizCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VoipCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VideoCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->BizCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    return-object v0
.end method
