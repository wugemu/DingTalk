.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptCommonVideoContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x137fd6600334c8b7L


# instance fields
.field public mDuration:J

.field public mHeight:I

.field public mPicUrl:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "content"    # Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    .prologue
    .line 1638
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;)V

    .line 1639
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->picUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    .line 1640
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    .line 1641
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    .line 1642
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    .line 1643
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "fileName"    # Ljava/lang/String;
    .param p9, "fileSize"    # J
    .param p11, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1618
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1619
    iput-wide p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    .line 1620
    iput-object p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    .line 1621
    iput p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    .line 1622
    iput p7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    .line 1623
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;Ljava/lang/String;JII)V
    .locals 1
    .param p1, "content"    # Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 1630
    const/16 v0, 0xce

    invoke-direct {p0, v0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;)V

    .line 1631
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    .line 1632
    iput-wide p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    .line 1633
    iput p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    .line 1634
    iput p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    .line 1635
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "fileName"    # Ljava/lang/String;
    .param p8, "fileSize"    # J
    .param p10, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1626
    const/16 v1, 0xce

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    .line 1627
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 1681
    if-nez p0, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-object v1

    .line 1684
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v2

    .line 1685
    .local v2, "encryptContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    if-eqz v2, :cond_0

    .line 1686
    const-string/jumbo v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 1687
    .local v4, "duration":J
    const-string/jumbo v0, "picUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1688
    .local v3, "picUrl":Ljava/lang/String;
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1689
    .local v6, "width":I
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1690
    .local v7, "height":I
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;Ljava/lang/String;JII)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1697
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    iget v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    iget v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    iget-object v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mFileName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mSize:J

    iget-object v10, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mFileType:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    .locals 1

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public duration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1647
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1657
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1652
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    return v0
.end method

.method public picUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1666
    invoke-super {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 1667
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1669
    :try_start_0
    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mDuration:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1670
    const-string/jumbo v2, "picUrl"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1671
    const-string/jumbo v2, "width"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1672
    const-string/jumbo v2, "height"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :cond_0
    :goto_0
    return-object v1

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
