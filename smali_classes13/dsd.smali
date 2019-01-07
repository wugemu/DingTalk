.class public final Ldsd;
.super Ljava/lang/Object;
.source "SubConversationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldsd$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/util/SparseBooleanArray;

.field public f:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldsd$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)Ldsd$a;
    .locals 3
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 237
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ldsd$a;

    invoke-direct {v0}, Ldsd$a;-><init>()V

    .line 239
    .local v0, "button":Ldsd$a;
    const-string/jumbo v2, "url"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->a:Ljava/lang/String;

    .line 242
    :try_start_0
    const-string/jumbo v2, "media_id"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    :try_start_1
    const-string/jumbo v2, "hl_media_id"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->c:Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :goto_2
    const-string/jumbo v2, "name_CN"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->d:Ljava/lang/String;

    .line 254
    const-string/jumbo v2, "name_TW"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->e:Ljava/lang/String;

    .line 255
    const-string/jumbo v2, "name_HK"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->f:Ljava/lang/String;

    .line 256
    const-string/jumbo v2, "name_EN"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->g:Ljava/lang/String;

    .line 257
    const-string/jumbo v2, "name_VN"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->h:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "name_JP"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ldsd$a;->i:Ljava/lang/String;

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_1
    move-exception v1

    .line 250
    .restart local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ldsd;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 180
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v6

    .line 182
    :cond_1
    invoke-static {p0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 183
    .local v3, "json":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 185
    new-instance v6, Ldsd;

    invoke-direct {v6}, Ldsd;-><init>()V

    .line 186
    .local v6, "model":Ldsd;
    const-string/jumbo v7, "entrance_id"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Ldsd;->h:J

    .line 187
    const-string/jumbo v7, "enable"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_1
    iput-boolean v7, v6, Ldsd;->a:Z

    .line 188
    const-string/jumbo v7, "o2o_setting_schema"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ldsd;->c:Ljava/lang/String;

    .line 189
    const-string/jumbo v7, "group_setting_schema"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ldsd;->d:Ljava/lang/String;

    .line 190
    const-string/jumbo v7, "navi_right_phone_button"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v9, v8

    :cond_2
    iput-boolean v9, v6, Ldsd;->b:Z

    .line 192
    const-string/jumbo v7, "base_buttons"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 194
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_4

    .line 195
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 196
    .local v5, "len":I
    if-lez v5, :cond_4

    .line 197
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v7, v6, Ldsd;->e:Landroid/util/SparseBooleanArray;

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 199
    iget-object v7, v6, Ldsd;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getIntValue(I)I

    move-result v9

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "len":I
    :cond_3
    move v7, v9

    .line 187
    goto :goto_1

    .line 204
    .restart local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    const-string/jumbo v7, "microapp_buttons"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_5

    .line 206
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 207
    .restart local v5    # "len":I
    if-lez v5, :cond_5

    .line 208
    new-instance v7, Lfp;

    invoke-direct {v7, v5}, Lfp;-><init>(I)V

    iput-object v7, v6, Ldsd;->f:Lfp;

    .line 209
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v5, :cond_5

    .line 210
    iget-object v7, v6, Ldsd;->f:Lfp;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getLongValue(I)J

    move-result-wide v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v10, v11, v9}, Lfp;->b(JLjava/lang/Object;)V

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 215
    .end local v2    # "i":I
    .end local v5    # "len":I
    :cond_5
    const-string/jumbo v7, "custom_buttons"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 216
    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 218
    .restart local v5    # "len":I
    if-lez v5, :cond_0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v1, "customButtonList":Ljava/util/List;, "Ljava/util/List<Ldsd$a;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v5, :cond_7

    .line 222
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-static {v7}, Ldsd;->a(Lcom/alibaba/fastjson/JSONObject;)Ldsd$a;

    move-result-object v0

    .line 223
    .local v0, "button":Ldsd$a;
    if-eqz v0, :cond_6

    .line 224
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 227
    .end local v0    # "button":Ldsd$a;
    :cond_7
    iput-object v1, v6, Ldsd;->g:Ljava/util/List;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 267
    iget-object v0, p0, Ldsd;->e:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldsd;->f:Lfp;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldsd;->e:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldsd;->e:Landroid/util/SparseBooleanArray;

    .line 268
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
