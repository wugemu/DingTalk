.class public Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;
.super Ljava/lang/Object;
.source "APTaobaoGoodsObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.APTaobaoObject"


# instance fields
.field public tag1:Ljava/lang/String;

.field public tag2:Ljava/lang/String;

.field public ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "webpageUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string/jumbo v0, "APSDK.APTaobaoObject"

    const-string/jumbo v1, "checkArgs fail, webpageUrl is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_TAOBAO_TAG1:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->tag1:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_TAOBAO_TAG2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->tag2:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v4, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    if-eqz v4, :cond_1

    .line 39
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 41
    .local v1, "jsonStringer":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 42
    const-string/jumbo v4, "skin"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->skin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 43
    iget-object v4, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v4, v4, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    if-eqz v4, :cond_0

    .line 44
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v3, "style":Lorg/json/JSONObject;
    const-string/jumbo v4, "midTitleColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->midTitleColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v4, "mColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->mColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v4, "mWithoutLine"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget-boolean v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->mWithoutLine:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    const-string/jumbo v4, "tip1BgColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->tip1BgColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v4, "tip2BgColor"

    iget-object v5, p0, Lcom/alipay/share/sdk/openapi/APTaobaoGoodsObject;->ui:Lcom/alipay/share/sdk/openapi/ui/Ui;

    iget-object v5, v5, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    iget v5, v5, Lcom/alipay/share/sdk/openapi/ui/Style;->tip2BgColor:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v4, "style"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 52
    .end local v3    # "style":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "ret":Ljava/lang/String;
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_UI:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "jsonStringer":Lorg/json/JSONStringer;
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 55
    .restart local v1    # "jsonStringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x3f2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    return-void
.end method
