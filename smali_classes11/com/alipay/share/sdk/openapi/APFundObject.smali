.class public Lcom/alipay/share/sdk/openapi/APFundObject;
.super Ljava/lang/Object;
.source "APFundObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# instance fields
.field public extraDesc1:Ljava/lang/String;

.field public extraDesc2:Ljava/lang/String;

.field public extraValue1:Ljava/lang/String;

.field public extraValue2:Ljava/lang/String;

.field public fundCode:Ljava/lang/String;

.field public fundName:Ljava/lang/String;

.field public fundPrice:Ljava/lang/String;

.field public fundTag:Ljava/lang/String;

.field public time:J

.field public ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->fundTag:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TITLE:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->fundName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_CODE:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->fundCode:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_PRICE:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->fundPrice:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_DESC1:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->extraDesc1:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_DESC2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->extraDesc2:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_VALUE1:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->extraValue1:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_VALUE2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->extraValue2:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TIME:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->time:J

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    iget-object v4, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    if-eqz v4, :cond_1

    .line 78
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 80
    .local v1, "jsonStringer":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 81
    const-string/jumbo v4, "skin"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->skin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 82
    iget-object v4, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v4, v4, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    if-eqz v4, :cond_0

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v3, "style":Lorg/json/JSONObject;
    const-string/jumbo v4, "tagBgColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->tagBgColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v4, "priceColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->priceColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v4, "tip1Color"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->tip1Color:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v4, "tip2Color"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->tip2Color:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v4, "dayIncreaseColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->dayIncreaseColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v4, "weekIncreaseColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->weekIncreaseColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v4, "timeColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APFundObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->timeColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v4, "style"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 93
    .end local v3    # "style":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "ret":Ljava/lang/String;
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_UI:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "jsonStringer":Lorg/json/JSONStringer;
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 96
    .restart local v1    # "jsonStringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x7a

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    return-void
.end method
