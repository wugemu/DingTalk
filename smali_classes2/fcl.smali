.class public final Lfcl;
.super Ljava/lang/Object;
.source "PostCreater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;)",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "uploadResponses":Ljava/util/List;, "Ljava/util/List<Lifx;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/4 v4, 0x0

    .line 140
    :goto_0
    return-object v4

    .line 120
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "photoObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
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

    .line 122
    .local v3, "response":Lifx;
    if-eqz v3, :cond_1

    .line 125
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;-><init>()V

    .line 2026
    .local v1, "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    iget-object v5, v3, Lifx;->a:Ljava/lang/String;

    .line 126
    iput-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    .line 127
    new-instance v5, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v5}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 128
    iget-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 2034
    iget-object v7, v3, Lifx;->b:Ljava/lang/String;

    .line 128
    iput-object v7, v5, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 3018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "isGif"

    iget-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    invoke-static {v5}, Lcru;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iput-object v0, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->extension:Ljava/util/Map;

    .line 135
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 138
    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .end local v3    # "response":Lifx;
    :cond_3
    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;-><init>()V

    .line 139
    .local v4, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    iput-object v2, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1036
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    sget-object v0, Lfdm$a;->a:Lfdk;

    .line 85
    .local v0, "api":Lfdk;
    new-instance v1, Lfcl$1;

    invoke-direct {v1, p0, p2}, Lfcl$1;-><init>(Lfcl;Lcma;)V

    invoke-interface {v0, p1, v1}, Lfdk;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V

    .line 114
    return-void
.end method
