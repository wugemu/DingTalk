.class public Lcom/alipay/share/sdk/openapi/APStockObject;
.super Ljava/lang/Object;
.source "APStockObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.ZFBImageObject"


# instance fields
.field public status:I

.field public stockCode:Ljava/lang/String;

.field public stockName:Ljava/lang/String;

.field public stockPrice:Ljava/lang/String;

.field public stockPriceChange:Ljava/lang/String;

.field public stockPriceChangeRatio:Ljava/lang/String;

.field public time:J

.field public webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->time:J

    .line 9
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPrice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPriceChange:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPriceChangeRatio:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->time:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->status:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x78

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockName:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockCode:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPrice:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPriceChange:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->stockPriceChangeRatio:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->webUrl:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->time:J

    .line 41
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/APStockObject;->status:I

    .line 42
    return-void
.end method
