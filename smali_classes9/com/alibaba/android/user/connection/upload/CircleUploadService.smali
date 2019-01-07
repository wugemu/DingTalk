.class public Lcom/alibaba/android/user/connection/upload/CircleUploadService;
.super Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;
.source "CircleUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/Serializable;Ljava/util/List;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    .line 1021
    new-instance v1, Lfcl;

    invoke-direct {v1}, Lfcl;-><init>()V

    new-instance v2, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;-><init>(Lcom/alibaba/android/user/connection/upload/CircleUploadService;)V

    .line 1051
    if-eqz p1, :cond_5

    invoke-static {p2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1053
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    if-eqz v0, :cond_2

    .line 1054
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifx;

    .line 1055
    if-eqz v0, :cond_0

    .line 2034
    :try_start_0
    iget-object v4, v0, Lifx;->b:Ljava/lang/String;

    .line 1057
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v4

    .line 1058
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v5

    sget-object v6, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v5, v6}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1059
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 3026
    iget-object v5, v0, Lifx;->a:Ljava/lang/String;

    .line 1059
    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 1060
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    new-instance v5, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v5}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 1061
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 3034
    iget-object v0, v0, Lifx;->b:Ljava/lang/String;

    .line 1061
    iput-object v0, v4, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 1069
    const-string/jumbo v4, "PostCreater"

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 4026
    iget-object v5, v0, Lifx;->a:Ljava/lang/String;

    .line 1063
    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 1064
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    new-instance v5, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v5}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 1065
    iget-object v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 4034
    iget-object v0, v0, Lifx;->b:Ljava/lang/String;

    .line 1065
    iput-object v0, v4, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-nez v0, :cond_3

    .line 1075
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    iput-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 1077
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {p2}, Lfcl;->a(Ljava/util/List;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 1079
    :cond_4
    invoke-virtual {v1, p1, v2}, Lfcl;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V

    .line 18
    :cond_5
    return-void
.end method
