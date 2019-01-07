.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryRestoreItem.java"


# instance fields
.field private authFixPath:Z

.field private authReName:Z

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthFixPath()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->authFixPath:Z

    return v0
.end method

.method public isAuthReName()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->authReName:Z

    return v0
.end method

.method public setAuthFixPath(Z)V
    .locals 0
    .param p1, "authFixPath"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->authFixPath:Z

    .line 51
    return-void
.end method

.method public setAuthReName(Z)V
    .locals 0
    .param p1, "authReName"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->authReName:Z

    .line 43
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->path:Ljava/lang/String;

    .line 35
    return-void
.end method
