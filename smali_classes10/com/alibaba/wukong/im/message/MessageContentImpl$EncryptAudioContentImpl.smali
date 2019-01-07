.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptAudioContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x50d1c8f98ba61070L


# instance fields
.field public mDuration:J

.field public mVolumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;JLjava/util/List;)V
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1559
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v0, 0xcc

    invoke-direct {p0, v0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;)V

    .line 1560
    iput-wide p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mDuration:J

    .line 1561
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mVolumns:Ljava/util/List;

    .line 1562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "fileSize"    # J
    .param p8, "fileType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1553
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0xcc

    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1554
    iput-wide p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mDuration:J

    .line 1555
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mVolumns:Ljava/util/List;

    .line 1556
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 1588
    if-nez p0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-object v4

    .line 1591
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v2

    .line 1592
    .local v2, "encryptContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    if-eqz v2, :cond_0

    .line 1593
    const-string/jumbo v4, "duration"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 1594
    .local v0, "duration":J
    const-string/jumbo v4, "volumns"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->getVolumnList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1595
    .local v3, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;JLjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1602
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mUrl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mDuration:J

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mVolumns:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mFileName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mSize:J

    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mFileType:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    .locals 1

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public duration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1566
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mDuration:J

    return-wide v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1575
    invoke-super {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 1576
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1578
    :try_start_0
    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mDuration:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1579
    const-string/jumbo v2, "volumns"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mVolumns:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->toVolumnString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    :cond_0
    :goto_0
    return-object v1

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public volumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->mVolumns:Ljava/util/List;

    return-object v0
.end method
