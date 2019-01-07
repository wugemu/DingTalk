.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;
.super Ljava/lang/Enum;
.source "BtnActType.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

.field public static final enum ACT_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

.field public static final enum ACT_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    const-string/jumbo v1, "ACT_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    const-string/jumbo v1, "ACT_JUMP"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->value:I

    .line 12
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 25
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->value:I

    return v0
.end method
