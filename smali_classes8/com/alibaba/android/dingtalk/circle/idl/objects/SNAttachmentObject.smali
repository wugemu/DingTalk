.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
.super Ljava/lang/Object;
.source "SNAttachmentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3bda08e71b2c00a5L


# instance fields
.field public authMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;",
            ">;"
        }
    .end annotation
.end field

.field public transient contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;",
            ">;"
        }
    .end annotation
.end field

.field public transient createAt:J

.field public extension:Ljava/util/Map;
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

.field private transient mFirstImageUrl:Ljava/lang/String;

.field public transient picUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient title:Ljava/lang/String;

.field public type:I

.field public transient url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static fromAuthMediaParamModelMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 226
    :cond_0
    return-object v1

    .line 221
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;)Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
    .locals 3
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    .prologue
    .line 211
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;-><init>()V

    .line 213
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->type:Ljava/lang/Integer;

    .line 10033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 213
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->type:I

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->extension:Ljava/util/Map;

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->authMediaMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->fromAuthMediaParamModelMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->authMediaMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private static toAuthMediaParamMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 235
    :cond_0
    return-object v1

    .line 231
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .prologue
    .line 239
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;-><init>()V

    .line 241
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->type:Ljava/lang/Integer;

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->extension:Ljava/util/Map;

    .line 243
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->authMediaMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->toAuthMediaParamMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;->authMediaMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private unzipContent(Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, -0x1

    .line 183
    const-string/jumbo v9, "sort"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 184
    .local v6, "sort":I
    const-string/jumbo v9, "value"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 186
    .local v7, "type":I
    const-string/jumbo v9, "key"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "key":Ljava/lang/String;
    if-eq v6, v10, :cond_0

    if-ne v7, v10, :cond_2

    .line 188
    :cond_0
    const-string/jumbo v9, "invalid type & value"

    .line 6076
    const/4 v10, 0x0

    invoke-static {v10, v9}, Lbqh;->a(ZLjava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .line 207
    :cond_1
    :goto_0
    return-object v0

    .line 191
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;

    invoke-direct {v0, v4, v8, v6, v7}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 192
    .local v0, "content":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    const-string/jumbo v9, "isRichText"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 7057
    iput-boolean v9, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->e:Z

    .line 193
    const-string/jumbo v9, "richTextValue"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8057
    iput-object v9, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->f:Ljava/lang/String;

    .line 195
    const-string/jumbo v9, "richTextImgs"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 196
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 198
    .local v5, "len":I
    if-lez v5, :cond_1

    .line 199
    invoke-static {v5}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    .local v2, "imgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 201
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9057
    :cond_3
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->g:Ljava/util/List;

    goto :goto_0
.end method

.method private unzipContents(Ljava/lang/String;)V
    .locals 11
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    const-string/jumbo v8, "content is null"

    invoke-static {v8}, Lbqh;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3019
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;>;"
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 137
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 138
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 139
    .local v5, "jsonObject":Lorg/json/JSONObject;
    if-nez v5, :cond_2

    .line 140
    const-string/jumbo v8, "jsonObject is null"

    .line 3076
    const/4 v9, 0x0

    invoke-static {v9, v8}, Lbqh;->a(ZLjava/lang/String;)V

    .line 137
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    :cond_2
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->unzipContent(Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;

    move-result-object v0

    .line 145
    .local v0, "c":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->mFirstImageUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4057
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->g:Ljava/util/List;

    .line 149
    .local v7, "richImgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 150
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->mFirstImageUrl:Ljava/lang/String;

    .line 155
    .end local v7    # "richImgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 156
    const-string/jumbo v8, "contents is empty"

    .line 4076
    const/4 v9, 0x0

    invoke-static {v9, v8}, Lbqh;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0    # "c":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    .end local v1    # "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unzipContents error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5076
    invoke-static {v10, v8}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "c":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
    .restart local v1    # "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "len":I
    :cond_4
    :try_start_1
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->contents:Ljava/util/List;

    .line 162
    new-instance v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$1;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;)V

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private unzipPicUrls(Ljava/lang/String;)V
    .locals 10
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 2019
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 107
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 108
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 110
    const-string/jumbo v7, "image"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "picUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v5    # "picUrl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v6}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 117
    iput-object v6, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->picUrls:Ljava/util/List;

    .line 119
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->picUrls:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->mFirstImageUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unzipPicUrls error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2076
    invoke-static {v9, v7}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getFirstImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->mFirstImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstImageUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->mFirstImageUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;
    .locals 1

    .prologue
    .line 248
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method public unzip2LocalCache()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->extension:Ljava/util/Map;

    .line 88
    .local v0, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "extension is empty"

    .line 1076
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->title:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "picUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->unzipPicUrls(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "createAt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lbqm;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->createAt:J

    .line 97
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->url:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->unzipContents(Ljava/lang/String;)V

    goto :goto_0
.end method
