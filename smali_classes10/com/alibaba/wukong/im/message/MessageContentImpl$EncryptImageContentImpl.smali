.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptImageContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44cf13b10de52e2eL


# instance fields
.field public mOrientation:I

.field public mPicHeight:I

.field public mPicType:I

.field public mPicWidth:I

.field public mThumbId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;IIIILjava/lang/String;)V
    .locals 1
    .param p1, "content"    # Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    .param p2, "picType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "thumbId"    # Ljava/lang/String;

    .prologue
    .line 1465
    const/16 v0, 0xcb

    invoke-direct {p0, v0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;)V

    .line 1466
    iput p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicType:I

    .line 1467
    iput p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mOrientation:I

    .line 1468
    iput p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicWidth:I

    .line 1469
    iput p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicHeight:I

    .line 1470
    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    .line 1471
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "picType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "fileSize"    # J
    .param p9, "fileType"    # Ljava/lang/String;
    .param p10, "thumbId"    # Ljava/lang/String;

    .prologue
    .line 1456
    const/16 v3, 0xcb

    move-object v2, p0

    move-object v4, p1

    move-object v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1457
    iput p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicType:I

    .line 1458
    iput p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mOrientation:I

    .line 1459
    iput p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicWidth:I

    .line 1460
    iput p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicHeight:I

    .line 1461
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    .line 1462
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 1522
    if-nez p0, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-object v0

    .line 1525
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v1

    .line 1526
    .local v1, "encryptContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    if-eqz v1, :cond_0

    .line 1527
    const-string/jumbo v0, "picType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1528
    .local v2, "picType":I
    const-string/jumbo v0, "orientation"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1529
    .local v5, "orientation":I
    const-string/jumbo v0, "p_width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1530
    .local v3, "width":I
    const-string/jumbo v0, "p_height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1531
    .local v4, "height":I
    const-string/jumbo v0, "thumb_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1532
    .local v6, "thumbId":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;IIIILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1539
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mUrl:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicType:I

    iget v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicWidth:I

    iget v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicHeight:I

    iget v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mOrientation:I

    iget-object v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mFileName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mSize:J

    iget-object v10, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mFileType:Ljava/lang/String;

    iget-object v11, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    .locals 1

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1480
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mOrientation:I

    return v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 1490
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicHeight:I

    return v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 1485
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicWidth:I

    return v0
.end method

.method public getThumbId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    return-object v0
.end method

.method public picType()I
    .locals 1

    .prologue
    .line 1475
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicType:I

    return v0
.end method

.method public setThumbId(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbId"    # Ljava/lang/String;

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    .line 1501
    return-void
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1504
    invoke-super {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 1505
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1507
    :try_start_0
    const-string/jumbo v2, "picType"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1508
    const-string/jumbo v2, "orientation"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1509
    const-string/jumbo v2, "p_width"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1510
    const-string/jumbo v2, "p_height"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mPicHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1511
    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1512
    const-string/jumbo v2, "thumb_id"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->mThumbId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :cond_0
    :goto_0
    return-object v1

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
