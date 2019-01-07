.class public final enum Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
.super Ljava/lang/Enum;
.source "RenderStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field public static final enum EXTEND:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field public static final enum MINI_APP:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field public static final enum NORMAL_WHITE:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;


# instance fields
.field private imageStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textColorProvider:Ldnx;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    const-string/jumbo v1, "NORMAL"

    sget-object v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    sget-object v4, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    new-instance v5, Ldnr;

    invoke-direct {v5}, Ldnr;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;-><init>(Ljava/lang/String;ILcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;Ldnx;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 15
    new-instance v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    const-string/jumbo v4, "EXTEND"

    sget-object v6, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    sget-object v7, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    new-instance v8, Ldnr;

    invoke-direct {v8}, Ldnr;-><init>()V

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;-><init>(Ljava/lang/String;ILcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;Ldnx;)V

    sput-object v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->EXTEND:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 16
    new-instance v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    const-string/jumbo v4, "MINI_APP"

    sget-object v6, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    sget-object v7, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    new-instance v8, Ldnr;

    invoke-direct {v8}, Ldnr;-><init>()V

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;-><init>(Ljava/lang/String;ILcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;Ldnx;)V

    sput-object v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->MINI_APP:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 18
    new-instance v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    const-string/jumbo v4, "NORMAL_WHITE"

    sget-object v6, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NO_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    sget-object v7, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    new-instance v8, Ldny;

    invoke-direct {v8}, Ldny;-><init>()V

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;-><init>(Ljava/lang/String;ILcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;Ldnx;)V

    sput-object v3, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL_WHITE:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->EXTEND:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->MINI_APP:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL_WHITE:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    aput-object v1, v0, v11

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;Ldnx;)V
    .locals 0
    .param p3, "textStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .param p4, "imageStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .param p5, "textColorProvider"    # Ldnx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;",
            "Ldnx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->textStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 28
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->imageStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    .line 29
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->textColorProvider:Ldnx;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    return-object v0
.end method


# virtual methods
.method public final getImageStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->imageStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    return-object v0
.end method

.method public final getTextColorProvider()Ldnx;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->textColorProvider:Ldnx;

    return-object v0
.end method

.method public final getTextStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->textStyle:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    return-object v0
.end method

.method public final setTextColorProvider(Ldnx;)V
    .locals 0
    .param p1, "textColorProvider"    # Ldnx;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->textColorProvider:Ldnx;

    .line 49
    return-void
.end method
