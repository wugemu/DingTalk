.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
.super Ljava/lang/Object;
.source "SNPhotoContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x162606346c8d722cL


# instance fields
.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    .prologue
    .line 22
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;-><init>()V

    .line 24
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;->photos:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->fromSNPhotoModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    goto :goto_0
.end method

.method private static fromSNPhotoModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpn;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lbpn;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 36
    :cond_1
    return-object v1

    .line 30
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpn;

    .line 32
    .local v0, "model":Lbpn;
    if-eqz v0, :cond_3

    .line 33
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->fromIdl(Lbpn;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;-><init>()V

    .line 53
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->toSNPhotoObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;->photos:Ljava/util/List;

    goto :goto_0
.end method

.method private static toSNPhotoObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbpn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 47
    :cond_1
    return-object v1

    .line 41
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lbpn;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 43
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    if-eqz v0, :cond_3

    .line 44
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lbpn;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
