.class public Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;
.super Landroid/text/style/QuoteSpan;
.source "MarkDownQuoteSpan.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_WIDTH:I

.field private static final STRIPE_WIDTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->STRIPE_WIDTH:I

    .line 19
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->GAP_WIDTH:I

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/style/QuoteSpan;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/text/style/QuoteSpan;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 36
    .local v7, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 38
    .local v6, "color":I
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    int-to-float v1, p3

    int-to-float v2, p5

    sget v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->STRIPE_WIDTH:I

    mul-int/2addr v0, p4

    add-int/2addr v0, p3

    int-to-float v3, v0

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    sget v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->STRIPE_WIDTH:I

    sget v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownQuoteSpan;->GAP_WIDTH:I

    add-int/2addr v0, v1

    return v0
.end method
