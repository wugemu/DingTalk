.class public Lcom/dbappsecurity/entity/DomainCasheEntity;
.super Ljava/lang/Object;
.source "DomainCasheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isLoading:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dbappsecurity/entity/DomainCasheEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading:Z

    return v0
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading:Z

    .line 27
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dbappsecurity/entity/DomainCasheEntity;->url:Ljava/lang/String;

    .line 19
    return-void
.end method
