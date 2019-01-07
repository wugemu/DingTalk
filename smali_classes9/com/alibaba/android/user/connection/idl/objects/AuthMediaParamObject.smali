.class public Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
.super Ljava/lang/Object;
.source "AuthMediaParamObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1a183532d5346affL


# instance fields
.field public authCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transient mOriginUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfeb;)Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
    .locals 2
    .param p0, "model"    # Lfeb;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    .line 37
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
    iget-object v1, p0, Lfeb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lfeb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;)Lfeb;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lfeb;

    invoke-direct {v0}, Lfeb;-><init>()V

    .line 47
    .local v0, "result":Lfeb;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lfeb;->a:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lfeb;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getOriginUrl()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 67
    .local v1, "imgUrl":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 69
    .local v2, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v2, :cond_2

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .end local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mediaId is invalid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lffe;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "some error when decode mediaId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2060
    invoke-static {v5, v3}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public toIdl()Lfeb;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;)Lfeb;

    move-result-object v0

    return-object v0
.end method
