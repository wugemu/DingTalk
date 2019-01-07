.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiMessageContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x87d3cbd4866a65fL


# instance fields
.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "customType"    # I

    .prologue
    .line 1219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(ILjava/util/List;)V

    .line 1220
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "customType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    .line 1224
    if-eqz p2, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1227
    :cond_0
    return-void
.end method

.method static synthetic access$1600(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 1213
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
    .locals 15
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1265
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1295
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    const-string/jumbo v0, "tp"

    const/4 v14, -0x1

    invoke-virtual {p0, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1267
    .local v7, "contentType":I
    const-string/jumbo v0, "multi"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1268
    .local v6, "array":Lorg/json/JSONArray;
    if-nez v6, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 1270
    .local v10, "len":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_8

    .line 1272
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1273
    .local v12, "oo":Lorg/json/JSONObject;
    if-eqz v12, :cond_3

    .line 1276
    const-string/jumbo v0, "tp"

    const/4 v14, -0x1

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 1277
    .local v13, "type":I
    const-string/jumbo v0, "customType"

    const/4 v14, -0x1

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1278
    .local v8, "customType":I
    const/16 v0, 0x66

    if-eq v13, v0, :cond_2

    const/16 v0, 0x66

    if-ne v8, v0, :cond_4

    .line 1279
    :cond_2
    invoke-static {v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->access$000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    .end local v8    # "customType":I
    .end local v13    # "type":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1280
    .restart local v8    # "customType":I
    .restart local v13    # "type":I
    :cond_4
    const/16 v0, 0x10

    if-ne v8, v0, :cond_7

    .line 1281
    const-string/jumbo v0, "url"

    const/4 v14, 0x0

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1282
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1283
    .local v4, "picUrl":Ljava/lang/String;
    const-string/jumbo v0, "ext"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 1284
    .local v5, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    .line 1285
    const-string/jumbo v0, "title"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "title":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1286
    .restart local v2    # "title":Ljava/lang/String;
    const-string/jumbo v0, "txt"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "text":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1287
    .restart local v3    # "text":Ljava/lang/String;
    const-string/jumbo v0, "picUrl"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "picUrl":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1289
    .restart local v4    # "picUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v5, :cond_3

    .line 1290
    :cond_6
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1292
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "picUrl":Ljava/lang/String;
    .end local v5    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-static {v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;->access$100(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1295
    .end local v8    # "customType":I
    .end local v12    # "oo":Lorg/json/JSONObject;
    .end local v13    # "type":I
    :cond_8
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    invoke-direct {v0, v7, v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(ILjava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Lcom/alibaba/wukong/im/MessageContent;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    return-void
.end method

.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1301
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mType:I

    invoke-direct {v1, v2, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(ILjava/util/List;)V

    return-object v1
.end method

.method public contents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    return-object v0
.end method

.method public remove(Lcom/alibaba/wukong/im/MessageContent;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1235
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1248
    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    if-nez v5, :cond_0

    move-object v3, v4

    .line 1261
    :goto_0
    return-object v3

    .line 1249
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1251
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1252
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mContents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent;

    .line 1253
    .local v1, "cc":Lcom/alibaba/wukong/im/MessageContent;
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    .end local v1    # "cc":Lcom/alibaba/wukong/im/MessageContent;
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1258
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v4

    .line 1261
    goto :goto_0

    .line 1255
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "tp"

    iget v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->mType:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1256
    const-string/jumbo v5, "multi"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
