.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;
.super Ljava/lang/Object;
.source "BaseItemsUpdateResult.java"


# instance fields
.field protected itemId:Ljava/lang/String;

.field protected resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;->resultCode:I

    return v0
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;->itemId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;->resultCode:I

    .line 35
    return-void
.end method
