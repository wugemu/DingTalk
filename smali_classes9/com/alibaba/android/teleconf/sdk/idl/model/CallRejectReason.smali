.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;
.super Ljava/lang/Enum;
.source "CallRejectReason.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

.field public static final enum NOT_ACTIVE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

.field public static final enum NO_RELATION:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

.field public static final enum SUPER_USER:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

.field public static final enum USER_BUSY:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    const-string/jumbo v1, "NOT_ACTIVE"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NOT_ACTIVE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    const-string/jumbo v1, "SUPER_USER"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->SUPER_USER:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    const-string/jumbo v1, "NO_RELATION"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NO_RELATION:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    .line 9
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    const-string/jumbo v1, "USER_BUSY"

    invoke-direct {v0, v1, v4, v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->USER_BUSY:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    .line 5
    new-array v0, v6, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NOT_ACTIVE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->SUPER_USER:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NO_RELATION:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->USER_BUSY:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->value:I

    .line 15
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NOT_ACTIVE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->SUPER_USER:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->NO_RELATION:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->USER_BUSY:Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRejectReason;->value:I

    return v0
.end method
