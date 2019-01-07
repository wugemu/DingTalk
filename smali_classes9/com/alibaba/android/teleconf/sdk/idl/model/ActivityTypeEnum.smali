.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;
.super Ljava/lang/Enum;
.source "ActivityTypeEnum.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

.field public static final enum TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    const-string/jumbo v1, "TYPE_CONF_2_8_0"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    .line 4
    new-array v0, v3, [Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->value:I

    .line 11
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->value:I

    return v0
.end method
