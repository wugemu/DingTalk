.class public final enum Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;
.super Ljava/lang/Enum;
.source "EmotionShowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmotionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

.field public static final enum GIF:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

.field public static final enum SILENT:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    const-string/jumbo v1, "SILENT"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    .line 106
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    const-string/jumbo v1, "GIF"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    .line 104
    new-array v0, v4, [Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->value:I

    .line 112
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 119
    packed-switch p0, :pswitch_data_0

    .line 125
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    goto :goto_0

    .line 123
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;->value:I

    return v0
.end method
