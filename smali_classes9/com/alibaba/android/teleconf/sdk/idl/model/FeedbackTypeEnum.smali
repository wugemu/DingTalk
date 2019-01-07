.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
.super Ljava/lang/Enum;
.source "FeedbackTypeEnum.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum CONNECT_SLOW:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum CROSSTALK:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum INTERRUPT:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum MUTED:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum QUALITY_POOR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public static final enum SHOW_NUM_ERROR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "CONNECT_SLOW"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CONNECT_SLOW:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "SHOW_NUM_ERROR"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->SHOW_NUM_ERROR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "INTERRUPT"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->INTERRUPT:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "CROSSTALK"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CROSSTALK:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 9
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "MUTED"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->MUTED:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 10
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    const-string/jumbo v1, "QUALITY_POOR"

    const/4 v2, 0x5

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->QUALITY_POOR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 4
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CONNECT_SLOW:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->SHOW_NUM_ERROR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->INTERRUPT:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CROSSTALK:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->MUTED:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->QUALITY_POOR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->value:I

    .line 16
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 23
    sparse-switch p0, :sswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CONNECT_SLOW:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 27
    :sswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->SHOW_NUM_ERROR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 29
    :sswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->INTERRUPT:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 31
    :sswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CROSSTALK:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 33
    :sswitch_4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->MUTED:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 35
    :sswitch_5
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->QUALITY_POOR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0

    .line 23
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->value:I

    return v0
.end method
