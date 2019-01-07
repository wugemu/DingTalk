.class public final enum Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
.super Ljava/lang/Enum;
.source "ImageStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

.field public static final enum FIXED_16_9:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

.field public static final enum FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    const-string/jumbo v1, "FIXED_URL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    const-string/jumbo v1, "FIXED_16_9"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_16_9:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_16_9:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->value:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    return-object v0
.end method
