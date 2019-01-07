.class Lcom/taobao/weex/ui/component/AbstractEditComponent$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .locals 0
    .param p1, "computedWidth"    # F
    .param p2, "computedHeight"    # F

    .prologue
    .line 124
    return-void
.end method

.method public layoutBefore()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->updateStyleAndAttrs()V

    .line 118
    return-void
.end method

.method public measureInternal(FFII)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "widthMeasureMode"    # I
    .param p4, "heightMeasureMode"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, v0, :cond_1

    .line 108
    :cond_0
    const/4 p1, 0x0

    .line 110
    :cond_1
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->mMeasureWidth:F

    .line 111
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasureHeight()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->mMeasureHeight:F

    .line 112
    return-void
.end method
