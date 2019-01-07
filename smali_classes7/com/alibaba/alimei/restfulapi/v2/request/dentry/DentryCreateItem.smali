.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryCreateItem.java"


# instance fields
.field private autoRename:Z

.field private downloadUrl:Ljava/lang/String;

.field private extend:Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;

.field private overWrite:Z

.field private path:Ljava/lang/String;

.field private tempUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->extend:Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTempUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->tempUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->autoRename:Z

    return v0
.end method

.method public isOverWrite()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->overWrite:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->autoRename:Z

    .line 74
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->downloadUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExtend(Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;)V
    .locals 0
    .param p1, "extend"    # Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->extend:Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;

    .line 82
    return-void
.end method

.method public setOverWrite(Z)V
    .locals 0
    .param p1, "overWrite"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->overWrite:Z

    .line 66
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->path:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTempUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->tempUrl:Ljava/lang/String;

    .line 50
    return-void
.end method
