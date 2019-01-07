.class public final enum Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;
.super Ljava/lang/Enum;
.source "MeetingUserStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum BUSY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum CALL_DISCONNECTED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum CALL_FAILED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum IDLE:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum REJECT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum TIME_OUT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

.field public static final enum UNDERWAY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->IDLE:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 13
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "UNDERWAY"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->UNDERWAY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 15
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "BUSY"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->BUSY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 17
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "REJECT"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->REJECT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 19
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "TIME_OUT"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->TIME_OUT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 21
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "CALL_FAILED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->CALL_FAILED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 23
    new-instance v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    const-string/jumbo v1, "CALL_DISCONNECTED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->CALL_DISCONNECTED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    sget-object v1, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->IDLE:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->UNDERWAY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->BUSY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->REJECT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->TIME_OUT:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->CALL_FAILED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->CALL_DISCONNECTED:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->$VALUES:[Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->value:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->$VALUES:[Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->value:I

    return v0
.end method
