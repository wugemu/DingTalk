.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptVideoContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1781e926a8eda1c0L


# instance fields
.field public mBitrate:I


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;I)V
    .locals 1
    .param p1, "content"    # Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    .param p2, "bitrate"    # I

    .prologue
    .line 1715
    const/16 v0, 0xcd

    invoke-direct {p0, v0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;)V

    .line 1716
    iput p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mBitrate:I

    .line 1717
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;JLjava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "bitrate"    # I
    .param p8, "fileName"    # Ljava/lang/String;
    .param p9, "fileSize"    # J
    .param p11, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1710
    const/16 v2, 0xcd

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    .line 1711
    move/from16 v0, p7

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mBitrate:I

    .line 1712
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 1737
    if-nez p0, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-object v2

    .line 1740
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-result-object v1

    .line 1741
    .local v1, "encryptContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    if-eqz v1, :cond_0

    .line 1742
    const-string/jumbo v2, "bitrate"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1743
    .local v0, "bitrate":I
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;I)V

    goto :goto_0
.end method


# virtual methods
.method public bitrate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1721
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mBitrate:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    .locals 1

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1750
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mPicUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mDuration:J

    iget v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mWidth:I

    iget v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mHeight:I

    iget v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mBitrate:I

    iget-object v9, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mFileName:Ljava/lang/String;

    iget-wide v10, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mSize:J

    iget-object v12, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mFileType:Ljava/lang/String;

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;JLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    .locals 1

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1725
    invoke-super {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 1726
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1728
    :try_start_0
    const-string/jumbo v2, "bitrate"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->mBitrate:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :cond_0
    :goto_0
    return-object v1

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
