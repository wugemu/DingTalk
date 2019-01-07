.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
.super Ljava/lang/Enum;
.source "ObjectDing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DingOperationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field public static final enum CLEARED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field public static final enum DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field public static final enum NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field public static final enum RECALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field public static final enum UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 391
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    const-string/jumbo v1, "DELETED"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 392
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    const-string/jumbo v1, "CLEARED"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->CLEARED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 393
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    const-string/jumbo v1, "RECALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->RECALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 394
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    const-string/jumbo v1, "UNKNOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 389
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->CLEARED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->RECALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

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
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->value:I

    .line 400
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 407
    packed-switch p0, :pswitch_data_0

    .line 417
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    :goto_0
    return-object v0

    .line 409
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    goto :goto_0

    .line 411
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    goto :goto_0

    .line 413
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->CLEARED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    goto :goto_0

    .line 415
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->RECALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 389
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->value:I

    return v0
.end method
