.class public final enum Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

.field public static final enum NO_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

.field public static final enum WITH_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

.field public static final enum WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    const-string/jumbo v1, "WITH_MARGIN"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 10
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    const-string/jumbo v1, "NO_MARGIN"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NO_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    const-string/jumbo v1, "WITH_MARGIN_HEADER"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NO_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->value:I

    .line 17
    return-void
.end method

.method public static hasMargin(Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;)Z
    .locals 1
    .param p0, "textStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->WITH_MARGIN_HEADER:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->$VALUES:[Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    return-object v0
.end method
