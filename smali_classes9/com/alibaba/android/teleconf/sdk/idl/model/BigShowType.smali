.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;
.super Ljava/lang/Enum;
.source "BigShowType.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

.field public static final enum TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

.field public static final enum TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

.field public static final enum TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    const-string/jumbo v1, "TYPE_OPEN_BIZCALL"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    const-string/jumbo v1, "TYPE_ADD_EXTERNAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    const-string/jumbo v1, "TYPE_GENERAL_URL_JUMP"

    invoke-direct {v0, v1, v3, v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    .line 4
    new-array v0, v5, [Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

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
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->value:I

    .line 13
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->value:I

    return v0
.end method
