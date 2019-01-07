.class public final enum Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;
.super Ljava/lang/Enum;
.source "DingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/interfaces/DingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DING_REMIND_TYPE_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

.field public static final enum APP:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

.field public static final enum CALL:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

.field public static final enum SMS:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    new-instance v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    .line 495
    new-instance v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    .line 496
    new-instance v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    .line 493
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->$VALUES:[Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

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
    .line 500
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 501
    iput p3, p0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->value:I

    .line 502
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 509
    packed-switch p0, :pswitch_data_0

    .line 517
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    :goto_0
    return-object v0

    .line 511
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    goto :goto_0

    .line 513
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    goto :goto_0

    .line 515
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 493
    const-class v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;
    .locals 1

    .prologue
    .line 493
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->$VALUES:[Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;->value:I

    return v0
.end method
