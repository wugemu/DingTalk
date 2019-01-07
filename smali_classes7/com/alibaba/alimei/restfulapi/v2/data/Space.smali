.class public Lcom/alibaba/alimei/restfulapi/v2/data/Space;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Space.java"


# instance fields
.field private bizType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mimeBoxKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->bizType:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeBoxKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->mimeBoxKey:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->bizType:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMimeBoxKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeBoxKey"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->mimeBoxKey:Ljava/lang/String;

    .line 50
    return-void
.end method
