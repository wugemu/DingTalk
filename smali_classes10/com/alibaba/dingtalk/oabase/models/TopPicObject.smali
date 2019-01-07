.class public Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
.super Ljava/lang/Object;
.source "TopPicObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lgtq;)Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    .locals 2
    .param p0, "model"    # Lgtq;

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;-><init>()V

    .line 32
    .local v0, "topPicObject":Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    if-eqz p0, :cond_0

    .line 33
    iget-object v1, p0, Lgtq;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->pic:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lgtq;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picLink:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lgtq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picText:Ljava/lang/String;

    .line 38
    :cond_0
    return-object v0
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    .locals 2
    .param p0, "topJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;-><init>()V

    .line 43
    .local v0, "topPicObject":Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    const-string/jumbo v1, "pic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->pic:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "picText"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picText:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "picLink"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picLink:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method public static fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/TopPicObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/TopPicObject;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 54
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 56
    .local v4, "topJSON":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    move-result-object v3

    .line 58
    .local v3, "object":Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    iget-object v5, v3, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->pic:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picLink:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picText:Ljava/lang/String;

    .line 59
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 60
    .local v1, "invalid":Z
    :goto_1
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "invalid":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    .end local v3    # "object":Lcom/alibaba/dingtalk/oabase/models/TopPicObject;
    .end local v4    # "topJSON":Lorg/json/JSONObject;
    :cond_2
    return-object v2
.end method
