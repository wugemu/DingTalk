.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$VideoContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41ca2ab0e9d2234aL


# instance fields
.field private mBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "bitrate"    # J
    .param p12, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 865
    const/16 v6, 0x67

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p12

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 866
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mBitrate:J

    .line 867
    return-void
.end method

.method static synthetic access$700(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 859
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
    .locals 19
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 900
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 942
    :goto_0
    return-object v2

    .line 901
    :cond_0
    const-string/jumbo v18, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v18, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 903
    .local v4, "size":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 904
    const-string/jumbo v18, "multi"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 905
    .local v15, "array":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 906
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 907
    .local v17, "oo":Lorg/json/JSONObject;
    if-nez v17, :cond_1

    .line 908
    const/4 v2, 0x0

    goto :goto_0

    .line 909
    :cond_1
    const-string/jumbo v18, "url"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    const-string/jumbo v18, "size"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 911
    const/4 v6, 0x0

    .local v6, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "fileType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 912
    .local v14, "picUrl":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .local v8, "duration":J
    const-wide/16 v12, 0x0

    .line 913
    .local v12, "bitrate":J
    const/4 v10, 0x0

    .local v10, "width":I
    const/4 v11, 0x0

    .line 914
    .local v11, "height":I
    const-string/jumbo v18, "ext"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    .line 915
    .local v16, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v16, :cond_2

    .line 916
    const-string/jumbo v18, "fileName"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "fileName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 917
    .restart local v6    # "fileName":Ljava/lang/String;
    const-string/jumbo v18, "fileType"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "fileType":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 918
    .restart local v7    # "fileType":Ljava/lang/String;
    const-string/jumbo v18, "duration"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v8

    .line 919
    const-string/jumbo v18, "width"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lieb;->f(Ljava/lang/String;)I

    move-result v10

    .line 920
    const-string/jumbo v18, "height"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lieb;->f(Ljava/lang/String;)I

    move-result v11

    .line 921
    const-string/jumbo v18, "bitrate"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v12

    .line 922
    const-string/jumbo v18, "picUrl"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 924
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    if-eqz v16, :cond_3

    .line 925
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V

    goto/16 :goto_0

    .line 929
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileType":Ljava/lang/String;
    .end local v8    # "duration":J
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "bitrate":J
    .end local v14    # "picUrl":Ljava/lang/String;
    .end local v15    # "array":Lorg/json/JSONArray;
    .end local v16    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "oo":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v18, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 930
    .restart local v6    # "fileName":Ljava/lang/String;
    const-string/jumbo v18, "fileType"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 931
    .restart local v7    # "fileType":Ljava/lang/String;
    const-string/jumbo v18, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 932
    .restart local v8    # "duration":J
    const-string/jumbo v18, "width"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 933
    .restart local v10    # "width":I
    const-string/jumbo v18, "height"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 934
    .restart local v11    # "height":I
    const-string/jumbo v18, "bitrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 935
    .restart local v12    # "bitrate":J
    const-string/jumbo v18, "picUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 936
    .restart local v14    # "picUrl":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V

    .line 937
    .local v2, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
    const-string/jumbo v18, "authMediaId"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 938
    const-string/jumbo v18, "authCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthCode:Ljava/lang/String;

    .line 939
    const-string/jumbo v18, "picAuthMediaId"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    .line 940
    const-string/jumbo v18, "picAuthCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    .line 941
    const-string/jumbo v18, "ext"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mExtension:Ljava/util/Map;

    goto/16 :goto_0
.end method


# virtual methods
.method public bitrate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 871
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mBitrate:J

    return-wide v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 947
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mUrl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mSize:J

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mFileType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mDuration:J

    iget v8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mWidth:I

    iget v9, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mHeight:I

    iget-wide v10, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mBitrate:J

    iget-object v12, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V

    .line 949
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 950
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthCode:Ljava/lang/String;

    .line 951
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    .line 952
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    .line 953
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mExtension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mExtension:Ljava/util/Map;

    .line 954
    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 875
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 877
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "tp"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 880
    const-string/jumbo v2, "fileName"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    const-string/jumbo v2, "fileType"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 882
    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mDuration:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 883
    const-string/jumbo v2, "width"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 884
    const-string/jumbo v2, "height"

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    const-string/jumbo v2, "bitrate"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mBitrate:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 886
    const-string/jumbo v2, "picUrl"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string/jumbo v2, "authMediaId"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string/jumbo v2, "authCode"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string/jumbo v2, "picAuthMediaId"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string/jumbo v2, "picAuthCode"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string/jumbo v2, "ext"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mExtension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 893
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 896
    const/4 v1, 0x0

    goto :goto_0
.end method
