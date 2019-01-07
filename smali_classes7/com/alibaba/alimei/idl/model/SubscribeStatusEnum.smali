.class public final enum Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;
.super Ljava/lang/Enum;
.source "SubscribeStatusEnum.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

.field public static final enum SUB_STATUS_OFF:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

.field public static final enum SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    const-string/jumbo v1, "SUB_STATUS_OFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_OFF:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    .line 7
    new-instance v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    const-string/jumbo v1, "SUB_STATUS_ON"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_OFF:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->$VALUES:[Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

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
    iput p3, p0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->value:I

    .line 13
    return-void
.end method

.method public static get(I)Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;
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
    sget-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_OFF:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->$VALUES:[Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->value:I

    return v0
.end method
