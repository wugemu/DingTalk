.class public final Lbnu;
.super Ljava/lang/Object;
.source "PostCreater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "uploadResponses":Ljava/util/List;, "Ljava/util/List<Lifx;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    .line 131
    :goto_0
    return-object v4

    .line 113
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "photoObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lifx;

    .line 115
    .local v3, "response":Lifx;
    if-eqz v3, :cond_1

    .line 116
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;-><init>()V

    .line 1026
    .local v1, "photoObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    iget-object v5, v3, Lifx;->a:Ljava/lang/String;

    .line 117
    iput-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->mediaId:Ljava/lang/String;

    .line 118
    new-instance v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->authMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .line 119
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->authMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .line 1034
    iget-object v7, v3, Lifx;->b:Ljava/lang/String;

    .line 119
    iput-object v7, v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 2018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "isGif"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->mediaId:Ljava/lang/String;

    invoke-static {v5}, Lcru;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->extension:Ljava/util/Map;

    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 129
    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "photoObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .end local v3    # "response":Lifx;
    :cond_3
    new-instance v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;-><init>()V

    .line 130
    .local v4, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    iput-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;Lcma;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 79
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    .line 80
    .local v0, "api":Lbou;
    new-instance v1, Lbnu$1;

    invoke-direct {v1, p0, p2}, Lbnu$1;-><init>(Lbnu;Lcma;)V

    invoke-interface {v0, p1, v1}, Lbou;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;Lcma;)V

    .line 109
    return-void
.end method
