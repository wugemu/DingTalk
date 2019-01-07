.class public final enum Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;
.super Ljava/lang/Enum;
.source "CheckInResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/data/object/CheckInResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckInStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum CANCELED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum CHECKED_IN:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum EXPIRED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum FAILURE:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum NOT_IN_MEETING:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum NOT_START:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum QRCODE_INVAILD:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public static final enum SUCCESS:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "FAILURE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->FAILURE:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 17
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->SUCCESS:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 18
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "EXPIRED"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->EXPIRED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 19
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "NOT_IN_MEETING"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_IN_MEETING:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 20
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "NOT_START"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_START:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 21
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "CHECKED_IN"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CHECKED_IN:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 22
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "CANCELED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CANCELED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 23
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const-string/jumbo v1, "QRCODE_INVAILD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->QRCODE_INVAILD:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->FAILURE:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->SUCCESS:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->EXPIRED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_IN_MEETING:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_START:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CHECKED_IN:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CANCELED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->QRCODE_INVAILD:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->$VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->mValue:I

    .line 29
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 52
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->FAILURE:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->SUCCESS:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->EXPIRED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_IN_MEETING:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 44
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->NOT_START:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 46
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CHECKED_IN:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 48
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->CANCELED:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 50
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->QRCODE_INVAILD:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->$VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->mValue:I

    return v0
.end method
