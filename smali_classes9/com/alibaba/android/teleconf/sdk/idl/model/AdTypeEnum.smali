.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;
.super Ljava/lang/Enum;
.source "AdTypeEnum.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

.field public static final enum TYPE_CONTEXT:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

.field public static final enum TYPE_CONTEXT_AND_PIC:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

.field public static final enum TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

.field public static final enum TYPE_PICTURE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

.field public static final enum TYPE_SHOW_ONCE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    const-string/jumbo v1, "TYPE_NOT_UPDATE"

    invoke-direct {v0, v1, v7, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    const-string/jumbo v1, "TYPE_CONTEXT"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    const-string/jumbo v1, "TYPE_PICTURE"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_PICTURE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    const-string/jumbo v1, "TYPE_CONTEXT_AND_PIC"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT_AND_PIC:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    .line 9
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    const-string/jumbo v1, "TYPE_SHOW_ONCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_SHOW_ONCE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_PICTURE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT_AND_PIC:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_SHOW_ONCE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

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
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->value:I

    .line 15
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_PICTURE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_CONTEXT_AND_PIC:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    goto :goto_0

    .line 32
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_SHOW_ONCE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->value:I

    return v0
.end method
