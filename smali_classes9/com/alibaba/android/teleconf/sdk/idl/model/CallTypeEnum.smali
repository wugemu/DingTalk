.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;
.super Ljava/lang/Enum;
.source "CallTypeEnum.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field public static final enum TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_VOIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_PSTN"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_SYS"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_CONF_CALL"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 9
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_VIDEO_P2P"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 10
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_VIDEO_CONF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 11
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_BIZ_CALL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 12
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_VOIP_TO_PSTN"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 13
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const-string/jumbo v1, "TYPE_VOIP_CONF"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 4
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->value:I

    .line 18
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 33
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 39
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 41
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 43
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->value:I

    return v0
.end method
