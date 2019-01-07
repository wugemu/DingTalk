.class public Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Favorite.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private modifiedTime:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->modifiedTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->content:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->modifiedTime:J

    .line 44
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->type:Ljava/lang/String;

    .line 28
    return-void
.end method
