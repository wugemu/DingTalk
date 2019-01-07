.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryDeleteItem.java"


# instance fields
.field private path:Ljava/lang/String;

.field private physical:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isPhysical()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->physical:Z

    return v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->path:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPhysical(Z)V
    .locals 0
    .param p1, "physical"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryDeleteItem;->physical:Z

    .line 27
    return-void
.end method
