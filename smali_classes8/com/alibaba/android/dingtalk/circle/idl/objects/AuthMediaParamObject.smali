.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;)Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .prologue
    .line 32
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;-><init>()V

    .line 34
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .prologue
    .line 40
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;-><init>()V

    .line 42
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;->authCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getOriginUrl()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v1

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 58
    .local v1, "imgUrl":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 60
    .local v2, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v2, :cond_2

    .line 61
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .end local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->mOriginUrl:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mediaId is invalid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1076
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lbqh;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
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

    .line 2076
    invoke-static {v5, v3}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    move-result-object v0

    return-object v0
.end method
