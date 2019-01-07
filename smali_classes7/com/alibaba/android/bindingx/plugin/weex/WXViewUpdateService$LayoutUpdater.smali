.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutUpdater"
.end annotation


# instance fields
.field private propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public final update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
    .locals 6
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cmd"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "translator"    # Laoa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Laoa$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 559
    .local p5, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    .end local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 562
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_1
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 563
    .local v0, "d":D
    const/4 v2, 0x0

    .line 564
    .local v2, "property":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 598
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    invoke-static {v0, v1, p4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLaoa$b;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {p1, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V

    .line 602
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    goto :goto_0

    .line 564
    :sswitch_0
    const-string/jumbo v5, "width"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "height"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "margin-left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "margin-right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "margin-top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "margin-bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "padding-left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "padding-right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v5, "padding-top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v5, "padding-bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_1

    .line 566
    :pswitch_0
    const-string/jumbo v2, "width"

    .line 567
    goto/16 :goto_2

    .line 569
    :pswitch_1
    const-string/jumbo v2, "height"

    .line 570
    goto/16 :goto_2

    .line 572
    :pswitch_2
    const-string/jumbo v2, "marginLeft"

    .line 573
    goto/16 :goto_2

    .line 575
    :pswitch_3
    const-string/jumbo v2, "marginRight"

    .line 576
    goto/16 :goto_2

    .line 578
    :pswitch_4
    const-string/jumbo v2, "marginTop"

    .line 579
    goto/16 :goto_2

    .line 581
    :pswitch_5
    const-string/jumbo v2, "marginBottom"

    .line 582
    goto/16 :goto_2

    .line 584
    :pswitch_6
    const-string/jumbo v2, "paddingLeft"

    .line 585
    goto/16 :goto_2

    .line 587
    :pswitch_7
    const-string/jumbo v2, "paddingRight"

    .line 588
    goto/16 :goto_2

    .line 590
    :pswitch_8
    const-string/jumbo v2, "paddingTop"

    .line 591
    goto/16 :goto_2

    .line 593
    :pswitch_9
    const-string/jumbo v2, "paddingBottom"

    goto/16 :goto_2

    .line 564
    :sswitch_data_0
    .sparse-switch
        -0x5987fe67 -> :sswitch_8
        -0x48c76ed9 -> :sswitch_1
        -0x34ed1ec3 -> :sswitch_3
        -0x17a0fea0 -> :sswitch_7
        0x6be2dc6 -> :sswitch_0
        0x88e4367 -> :sswitch_9
        0x28846843 -> :sswitch_6
        0x381698c6 -> :sswitch_2
        0x756c34b6 -> :sswitch_4
        0x7c565f2a -> :sswitch_5
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
    .end packed-switch
.end method
