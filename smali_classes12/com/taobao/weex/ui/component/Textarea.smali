.class public Lcom/taobao/weex/ui/component/Textarea;
.super Lcom/taobao/weex/ui/component/AbstractEditComponent;
.source "Textarea.java"


# static fields
.field public static final DEFAULT_ROWS:I = 0x2


# instance fields
.field private mNumberOfLines:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    .line 40
    return-void
.end method


# virtual methods
.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 5
    .param p1, "editText"    # Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string/jumbo v4, "rows"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "rowsStr":Ljava/lang/String;
    const/4 v1, 0x2

    .line 55
    .local v1, "rows":I
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    .line 64
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setMinLines(I)V

    .line 65
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getMeasureHeight()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getMeasuredLineHeight()F

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getVerticalGravity()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x30

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/Textarea;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 1
    .param p1, "host"    # Lcom/taobao/weex/ui/view/WXEditText;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowDisableMovement(Z)V

    .line 45
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 46
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 74
    :pswitch_0
    const-string/jumbo v2, "rows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    .local v0, "rows":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/Textarea;->setRows(I)V

    .line 79
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x3581d9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setRows(I)V
    .locals 1
    .param p1, "rows"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "rows"
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 87
    .local v0, "text":Lcom/taobao/weex/ui/view/WXEditText;
    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    goto :goto_0
.end method

.method protected updateStyleAndAttrs()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-super {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->updateStyleAndAttrs()V

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "rows"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "raw":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 118
    .end local v2    # "raw":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v2    # "raw":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "rowsStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "lines":I
    if-lez v1, :cond_0

    .line 110
    iput v1, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "lines":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "rowsStr":Ljava/lang/String;
    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 116
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "raw":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    goto :goto_0
.end method
