.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;
.super Ljava/lang/Object;
.source "DOM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RGBAColor"
.end annotation


# instance fields
.field public a:Ljava/lang/Double;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public g:I
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public r:I
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 745
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;->a:Ljava/lang/Double;

    if-nez v3, :cond_1

    .line 752
    .local v2, "alpha":B
    :cond_0
    :goto_0
    iget v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;->r:I

    iget v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;->g:I

    iget v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;->b:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 748
    .end local v2    # "alpha":B
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;->a:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 749
    .local v0, "aLong":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0xff

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    long-to-int v3, v0

    int-to-byte v2, v3

    goto :goto_0
.end method
