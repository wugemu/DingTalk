.class final Lcom/taobao/weex/dom/transition/WXTransition$7;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$propertyName:Ljava/lang/String;

.field final synthetic val$propertyValue:F

.field final synthetic val$ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyName:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 637
    :goto_1
    return-void

    .line 577
    :sswitch_0
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "marginTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "marginLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "marginRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "marginBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "paddingTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "paddingBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "paddingLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "paddingRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    .line 579
    :pswitch_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 583
    :pswitch_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 587
    :pswitch_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 591
    :pswitch_3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 595
    :pswitch_4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 599
    :pswitch_5
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 603
    :pswitch_6
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 607
    :pswitch_7
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 611
    :pswitch_8
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 615
    :pswitch_9
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 619
    :pswitch_a
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 623
    :pswitch_b
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 627
    :pswitch_c
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 631
    :pswitch_d
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1

    .line 577
    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_c
        -0x527265d5 -> :sswitch_8
        -0x48c76ed9 -> :sswitch_1
        -0x3e464339 -> :sswitch_2
        -0x113c6e87 -> :sswitch_5
        0x1c155 -> :sswitch_9
        0x32a007 -> :sswitch_6
        0x55f4784 -> :sswitch_a
        0x677c21c -> :sswitch_7
        0x6be2dc6 -> :sswitch_0
        0xc0fb19c -> :sswitch_b
        0x2a8c788b -> :sswitch_d
        0x3a1ea90e -> :sswitch_4
        0x757a12d5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
