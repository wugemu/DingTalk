.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;
.super Ljava/lang/Enum;
.source "GraySwitchStatus.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

.field public static final enum GRAY_CLOSE:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

.field public static final enum GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    const-string/jumbo v1, "GRAY_OPEN"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    const-string/jumbo v1, "GRAY_CLOSE"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_CLOSE:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    .line 5
    new-array v0, v4, [Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_CLOSE:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->value:I

    .line 13
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_CLOSE:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->value:I

    return v0
.end method
