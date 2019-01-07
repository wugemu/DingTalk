.class public Lcom/alibaba/android/user/presenter/region/RegionV2;
.super Ljava/lang/Object;
.source "RegionV2.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final code:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private fullKey:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private level:I

.field private final parentCode:Ljava/lang/String;

.field private final subRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "parentCode"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->key:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->code:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->parentCode:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->displayName:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->subRegionList:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public addSubRegion(Lcom/alibaba/android/user/presenter/region/RegionV2;)V
    .locals 1
    .param p1, "regionV2"    # Lcom/alibaba/android/user/presenter/region/RegionV2;

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->subRegionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public clearSubRegionList()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->subRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->fullKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->level:I

    return v0
.end method

.method public getParentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->parentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSubRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->subRegionList:Ljava/util/List;

    return-object v0
.end method

.method public setFullKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullKey"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->fullKey:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->level:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "RegionV2{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "key=\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", fullKey=\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->fullKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", level=\'"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->level:I

    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, ", code=\'"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->code:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, ", parentCode=\'"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->parentCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, ", displayName=\'"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/alibaba/android/user/presenter/region/RegionV2;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 79
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
