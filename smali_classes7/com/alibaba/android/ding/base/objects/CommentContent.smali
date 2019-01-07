.class public Lcom/alibaba/android/ding/base/objects/CommentContent;
.super Ljava/lang/Object;
.source "CommentContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    }
.end annotation


# instance fields
.field public f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lazh;)V
    .locals 1
    .param p1, "model"    # Lazh;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p1, Lazh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p1, Lazh;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->valueOf(I)Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 43
    :cond_0
    iget-object v0, p1, Lazh;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p1, Lazh;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    .line 47
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/CommentContent;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    .line 98
    :goto_0
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "contentType"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->valueOf(I)Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    move-result-object v2

    .line 80
    .local v2, "contentType":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v2, v6, :cond_2

    .line 81
    new-instance v1, Layz;

    invoke-direct {v1}, Layz;-><init>()V

    .line 82
    .local v1, "commentText":Layz;
    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    iput-object v6, v1, Layz;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 83
    const-string/jumbo v6, "atOpenIds"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcob;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v1, Layz;->g:Ljava/util/Map;

    .line 84
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Layz;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "commentText":Layz;
    .end local v2    # "contentType":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    move-object v1, v5

    .line 98
    goto :goto_0

    .line 86
    .restart local v2    # "contentType":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v2, v6, :cond_1

    .line 87
    new-instance v0, Layy;

    invoke-direct {v0}, Layy;-><init>()V

    .line 88
    .local v0, "commentAudio":Layy;
    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    iput-object v6, v0, Layy;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 89
    const-string/jumbo v6, "atOpenIds"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcob;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Layy;->g:Ljava/util/Map;

    .line 90
    const-string/jumbo v6, "mediaId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Layy;->a:Ljava/lang/String;

    .line 91
    const-string/jumbo v6, "duration"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Layy;->b:J

    .line 92
    const-string/jumbo v6, "volumns"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcob;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Layy;->c:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 93
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/CommentContent;)Ljava/lang/String;
    .locals 8
    .param p0, "commentContent"    # Lcom/alibaba/android/ding/base/objects/CommentContent;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const-string/jumbo v4, ""

    .line 70
    .end local p0    # "commentContent":Lcom/alibaba/android/ding/base/objects/CommentContent;
    :goto_0
    return-object v4

    .line 53
    .restart local p0    # "commentContent":Lcom/alibaba/android/ding/base/objects/CommentContent;
    :cond_0
    instance-of v4, p0, Layz;

    if-nez v4, :cond_1

    instance-of v4, p0, Layy;

    if-nez v4, :cond_1

    .line 54
    const-string/jumbo v4, ""

    goto :goto_0

    .line 56
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "contentType"

    iget-object v5, p0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->getValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v4, "atOpenIds"

    iget-object v5, p0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    invoke-static {v5}, Lcob;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    instance-of v4, p0, Layz;

    if-eqz v4, :cond_2

    .line 61
    const-string/jumbo v4, "text"

    check-cast p0, Layz;

    .end local p0    # "commentContent":Lcom/alibaba/android/ding/base/objects/CommentContent;
    iget-object v5, p0, Layz;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 63
    .restart local p0    # "commentContent":Lcom/alibaba/android/ding/base/objects/CommentContent;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "mediaId"

    move-object v0, p0

    check-cast v0, Layy;

    move-object v4, v0

    iget-object v4, v4, Layy;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v5, "duration"

    move-object v0, p0

    check-cast v0, Layy;

    move-object v4, v0

    iget-wide v6, v4, Layy;->b:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v4, "volumns"

    check-cast p0, Layy;

    .end local p0    # "commentContent":Lcom/alibaba/android/ding/base/objects/CommentContent;
    iget-object v5, p0, Layy;->c:Ljava/util/List;

    invoke-static {v5}, Lcob;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
