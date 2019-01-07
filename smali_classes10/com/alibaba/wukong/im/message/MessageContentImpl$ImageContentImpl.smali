.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$ImageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x146f47858b930655L


# instance fields
.field private mData:[B

.field private mFileType:I

.field private mFilename:Ljava/lang/String;

.field private mOrientation:I

.field private mPicType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IILjava/util/Map;)V
    .locals 10
    .param p1, "mediaUrl"    # Ljava/lang/String;
    .param p2, "picSize"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "picType"    # I
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p7, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V
    .locals 2
    .param p1, "mediaUrl"    # Ljava/lang/String;
    .param p2, "picSize"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "picType"    # I
    .param p6, "fileType"    # I
    .param p7, "data"    # [B
    .param p8, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "II[BI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p9, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;-><init>(ILjava/lang/String;J)V

    .line 311
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFilename:Ljava/lang/String;

    .line 312
    iput p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mPicType:I

    .line 313
    iput p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFileType:I

    .line 314
    iput-object p7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mData:[B

    .line 315
    iput p8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mOrientation:I

    .line 316
    iput-object p9, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mExtension:Ljava/util/Map;

    .line 317
    return-void
.end method

.method static synthetic access$300(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 282
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    .locals 11
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 339
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-object v7

    .line 340
    :cond_0
    const-string/jumbo v10, "url"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v10, "size"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 342
    .local v2, "picSize":J
    const-string/jumbo v10, "fileName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "filename":Ljava/lang/String;
    const-string/jumbo v10, "picType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 344
    .local v5, "picType":I
    const-string/jumbo v10, "fileType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 345
    .local v6, "fileType":I
    const-string/jumbo v10, "picOrientation"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 346
    .local v8, "orientation":I
    const-string/jumbo v10, "picExt"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 347
    .local v9, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V

    .line 348
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    const-string/jumbo v7, "authMediaId"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 349
    const-string/jumbo v7, "authCode"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthCode:Ljava/lang/String;

    move-object v7, v0

    .line 350
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mExtension:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v9, 0x0

    .line 404
    .local v9, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mUrl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mSize:J

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFilename:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mPicType:I

    iget v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFileType:I

    iget-object v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mData:[B

    iget v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mOrientation:I

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V

    .line 405
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthCode:Ljava/lang/String;

    .line 407
    return-object v0

    .line 403
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;
    .end local v9    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mExtension:Ljava/util/Map;

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public fileType()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFileType:I

    return v0
.end method

.method public filename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mData:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 379
    .local v1, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-nez v1, :cond_0

    .line 383
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    return v2

    .line 379
    .restart local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_0
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 380
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mOrientation:I

    return v0
.end method

.method public getWidth()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 365
    .local v1, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-nez v1, :cond_0

    .line 369
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    return v2

    .line 365
    .restart local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_0
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 366
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public picType()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mPicType:I

    return v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 324
    const-string/jumbo v2, "fileName"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string/jumbo v2, "picType"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mPicType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string/jumbo v2, "fileType"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mFileType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v2, "picOrientation"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v2, "picExt"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v2, "authMediaId"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string/jumbo v2, "authCode"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 332
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 335
    const/4 v1, 0x0

    goto :goto_0
.end method
