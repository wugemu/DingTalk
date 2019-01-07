.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;
.super Ljava/lang/Enum;
.source "ObjectDing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

.field public static final enum NOT_RECEIVER:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

.field public static final enum PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

.field public static final enum PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    const-string/jumbo v1, "PRINCIPAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    .line 529
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    const-string/jumbo v1, "PARTICIPANT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    .line 534
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    const-string/jumbo v1, "NOT_RECEIVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->NOT_RECEIVER:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    .line 519
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->NOT_RECEIVER:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

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
    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 540
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->value:I

    .line 541
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 548
    packed-switch p0, :pswitch_data_0

    .line 556
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    goto :goto_0

    .line 552
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    goto :goto_0

    .line 554
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->NOT_RECEIVER:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 519
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->value:I

    return v0
.end method
