.class public Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "TagRequestData.java"


# static fields
.field public static final TAG_STAR:Ljava/lang/String; = "1"


# instance fields
.field private beebox:Z

.field private color:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isBeebox()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->beebox:Z

    return v0
.end method

.method public setBeebox(Z)V
    .locals 0
    .param p1, "beebox"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->beebox:Z

    .line 60
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->color:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->name:Ljava/lang/String;

    .line 52
    return-void
.end method
