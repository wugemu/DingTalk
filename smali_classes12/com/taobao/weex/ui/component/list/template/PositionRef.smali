.class public Lcom/taobao/weex/ui/component/list/template/PositionRef;
.super Ljava/lang/Number;
.source "PositionRef.java"

# interfaces
.implements Lgxl;


# instance fields
.field private renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V
    .locals 0
    .param p1, "renderState"    # Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/PositionRef;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 34
    return-void
.end method

.method private getPosition()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/PositionRef;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/PositionRef;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    iget v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    goto :goto_0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
