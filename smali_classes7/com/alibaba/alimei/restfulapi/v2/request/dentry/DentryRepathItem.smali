.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryRepathItem.java"


# instance fields
.field private autoRename:Z

.field private newPath:Ljava/lang/String;

.field private oldPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->newPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->oldPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->autoRename:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->autoRename:Z

    .line 50
    return-void
.end method

.method public setNewPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->newPath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOldPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldPath"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->oldPath:Ljava/lang/String;

    .line 34
    return-void
.end method
