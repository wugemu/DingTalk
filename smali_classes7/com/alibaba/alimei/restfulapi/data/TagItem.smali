.class public Lcom/alibaba/alimei/restfulapi/data/TagItem;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "TagItem.java"


# instance fields
.field public beebox:Z

.field public color:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mailTotal:I

.field public mailUnread:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMailTotal()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->mailTotal:I

    return v0
.end method

.method public getMailUnread()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->mailUnread:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isBeebox()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->beebox:Z

    return v0
.end method

.method public setBeebox(Z)V
    .locals 0
    .param p1, "beebox"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->beebox:Z

    .line 44
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->color:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMailTotal(I)V
    .locals 0
    .param p1, "mailTotal"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->mailTotal:I

    .line 68
    return-void
.end method

.method public setMailUnread(I)V
    .locals 0
    .param p1, "mailUnread"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->mailUnread:I

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/TagItem;->name:Ljava/lang/String;

    .line 84
    return-void
.end method
