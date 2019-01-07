.class public Lcom/alibaba/alimei/restfulapi/data/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field protected action:I

.field protected itemId:Ljava/lang/String;

.field protected resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->action:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->resultCode:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->action:I

    .line 25
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->itemId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Item;->resultCode:I

    .line 41
    return-void
.end method
