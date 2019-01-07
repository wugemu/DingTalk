.class public Lcom/alibaba/alimei/restfulapi/v2/response/FileUpdateResultItem;
.super Ljava/lang/Object;
.source "FileUpdateResultItem.java"


# instance fields
.field private success:Z

.field private value:Lcom/alibaba/alimei/restfulapi/v2/data/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/File;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/FileUpdateResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/File;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/FileUpdateResultItem;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/FileUpdateResultItem;->success:Z

    .line 18
    return-void
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/File;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/File;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/FileUpdateResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/File;

    .line 26
    return-void
.end method
