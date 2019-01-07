.class public Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "FavoriteRequestItem.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->content:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->type:Ljava/lang/String;

    .line 20
    return-void
.end method
