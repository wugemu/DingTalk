.class public Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
.super Ljava/lang/Object;
.source "CirclePhotoObject.java"

# interfaces
.implements Lfdb;
.implements Ljava/io/Serializable;


# static fields
.field public static BIZ_TYPE:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x4b65567f5272b8dbL


# instance fields
.field public authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient index:I

.field public transient mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field public transient mLocalSize:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient originUrl:Ljava/lang/String;

.field public transient postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field public transient tag:Ljava/lang/Object;

.field public transient thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "SKYNET"

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->BIZ_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCalcWithAuthMediaId(Landroid/content/Context;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayStrategy"    # Lfdc;
    .param p3, "count"    # Lfdb$a;
    .param p4, "sizeListener"    # Lfdb$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->doWithMediaId(Landroid/content/Context;Ljava/lang/String;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doCalcWithMediaId(Landroid/content/Context;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayStrategy"    # Lfdc;
    .param p3, "count"    # Lfdb$a;
    .param p4, "sizeListener"    # Lfdb$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 173
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->doWithMediaId(Landroid/content/Context;Ljava/lang/String;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doWithMediaId(Landroid/content/Context;Ljava/lang/String;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "displayStrategy"    # Lfdc;
    .param p4, "count"    # Lfdb$a;
    .param p5, "sizeListener"    # Lfdb$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 181
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v4

    .line 182
    .local v4, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v9

    .line 184
    .local v9, "w":I
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    .line 186
    .local v2, "h":I
    const-class v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-static {v10}, Lcph;->a(Ljava/lang/Class;)Lcph;

    move-result-object v8

    .line 187
    .local v8, "sizeObjectPool":Lcph;, "Lcph<Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;>;"
    iget-object v10, v8, Lcph;->a:Ljava/lang/Object;

    if-nez v10, :cond_0

    .line 188
    new-instance v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    iput-object v10, v8, Lcph;->a:Ljava/lang/Object;

    .line 190
    :cond_0
    iget-object v10, v8, Lcph;->a:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iput v9, v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 191
    iget-object v10, v8, Lcph;->a:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iput v2, v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 193
    move-object/from16 v0, p4

    iget v11, v0, Lfdb$a;->b:I

    move-object/from16 v0, p4

    iget v12, v0, Lfdb$a;->a:I

    iget-object v10, v8, Lcph;->a:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-object/from16 v0, p3

    invoke-interface {v0, p1, v11, v12, v10}, Lfdc;->a(Landroid/content/Context;IILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v5

    .line 194
    .local v5, "s":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    invoke-virtual {v8}, Lcph;->a()V

    .line 196
    new-instance v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iget v10, v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    iget v11, v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    invoke-direct {v7, v10, v11}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    .line 197
    .local v7, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iput-object v7, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->tag:Ljava/lang/Object;

    .line 198
    if-eqz p5, :cond_1

    .line 199
    iget v10, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    iget v11, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    move-object/from16 v0, p5

    invoke-interface {v0, v10, v11}, Lfdb$b;->a(II)V

    .line 202
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 203
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v10, "_"

    invoke-virtual {v6, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "q"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    iget v11, v0, Lfdb$a;->b:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lfdc;->b(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".jpg"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 204
    iget-object v10, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v10, v10, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "imgUrl":Ljava/lang/String;
    iput-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    iput-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->thumbnailUrl:Ljava/lang/String;

    .line 208
    iget-object v10, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->thumbnailUrl:Ljava/lang/String;

    .line 218
    .end local v2    # "h":I
    .end local v3    # "imgUrl":Ljava/lang/String;
    .end local v4    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v5    # "s":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .end local v6    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v7    # "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .end local v8    # "sizeObjectPool":Lcph;, "Lcph<Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;>;"
    .end local v9    # "w":I
    :goto_0
    return-object v10

    .line 211
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "mediaId is invalid = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5060
    const/4 v11, 0x0

    invoke-static {v11, v10}, Lffe;->a(ZLjava/lang/String;)V

    .line 212
    iget-object v10, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "some error when decode mediaId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6060
    const/4 v11, 0x0

    invoke-static {v11, v10}, Lffe;->a(ZLjava/lang/String;)V

    .line 218
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static fromIdl(Lfel;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .locals 2
    .param p0, "model"    # Lfel;

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 234
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;-><init>()V

    .line 235
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    iget-object v1, p0, Lfel;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lfel;->b:Lfeb;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->fromIdl(Lfeb;)Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 237
    iget-object v1, p0, Lfel;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getBizEntity(J)Ljava/lang/String;
    .locals 4
    .param p0, "postId"    # J

    .prologue
    .line 67
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 68
    const-string/jumbo v2, ""

    .line 77
    :goto_0
    return-object v2

    .line 71
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "postId"

    invoke-virtual {v1, v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 77
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lfel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 245
    :cond_0
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    .line 246
    .local v0, "result":Lfel;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lfel;->a:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;)Lfeb;

    move-result-object v1

    iput-object v1, v0, Lfel;->b:Lfeb;

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lfel;->c:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public calcOriginUrl()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    :cond_0
    const-string/jumbo v2, "calcOriginUrl but authMedia data is invalid"

    new-array v4, v4, [Ljava/lang/Object;

    .line 3243
    const-string/jumbo v5, "user_connection"

    const-string/jumbo v6, "user_connection"

    invoke-static {v5, v6, v2, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 149
    :goto_0
    return-object v2

    .line 140
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 142
    .local v1, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 4060
    invoke-static {v4, v2}, Lffe;->a(ZLjava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .line 149
    goto :goto_0
.end method

.method public calcThumbUrl(Landroid/content/Context;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayStrategy"    # Lfdc;
    .param p3, "count"    # Lfdb$a;
    .param p4, "sizeListener"    # Lfdb$b;
    .annotation build Lcom/alibaba/android/user/connection/utils/Sync;
    .end annotation

    .prologue
    .line 155
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    .line 165
    :goto_0
    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->doCalcWithAuthMediaId(Landroid/content/Context;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->doCalcWithMediaId(Landroid/content/Context;Lfdc;Lfdb$a;Lfdb$b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    const-string/jumbo v0, "authMediaId = null && mediaId = null"

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPhoto()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    return-object v0
.end method

.method public getLocalSize()Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mLocalSize:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v2

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    if-nez v4, :cond_1

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v0, v4, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 91
    .local v0, "authMediaId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 94
    .local v2, "imgUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 96
    .local v3, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v3, :cond_2

    .line 97
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    .end local v3    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mediaId is invalid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2060
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lffe;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "some error when decode mediaId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3060
    invoke-static {v6, v4}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public getRequestParams(J)Ljava/util/Map;
    .locals 5
    .param p1, "postId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-object v1

    .line 226
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->getBizEntity(J)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "bizEntity":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->BIZ_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->authMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    invoke-static {v2, v0, v3, v1}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isMockPost()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
