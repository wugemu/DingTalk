.class public Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;
.super Ljava/lang/Object;
.source "H5PermissionInfo.java"


# instance fields
.field private level:Ljava/lang/String;

.field private whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->level:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->whiteList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->whiteList:Ljava/util/List;

    return-object v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->level:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebula/permission/H5PermissionInfo;->whiteList:Ljava/util/List;

    .line 29
    return-void
.end method
