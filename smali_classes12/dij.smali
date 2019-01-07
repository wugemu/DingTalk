.class public final Ldij;
.super Ljava/lang/Object;
.source "GroupTag.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;)Ldij;
    .locals 9
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 57
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 99
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    new-instance v1, Ldij;

    invoke-direct {v1}, Ldij;-><init>()V

    .line 60
    .local v1, "groupTag":Ldij;
    :try_start_0
    const-string/jumbo v5, "tagPicGlobal"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->d:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    const-string/jumbo v5, "tagPic"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 66
    .local v3, "tagPicJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_2

    .line 68
    :try_start_1
    const-string/jumbo v5, "zh_CN"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->a:Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_2
    :try_start_2
    const-string/jumbo v5, "zh_TW"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->b:Ljava/lang/String;
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :goto_3
    :try_start_3
    const-string/jumbo v5, "zh_HK"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->c:Ljava/lang/String;
    :try_end_3
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 84
    :cond_2
    :goto_4
    const-string/jumbo v5, "groupTypeName"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 85
    .local v2, "tagDecJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_3

    .line 86
    const-string/jumbo v5, "zh_CN"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->e:Ljava/lang/String;

    .line 87
    const-string/jumbo v5, "zh_TW"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->f:Ljava/lang/String;

    .line 88
    const-string/jumbo v5, "zh_HK"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->g:Ljava/lang/String;

    .line 89
    const-string/jumbo v5, "en_US"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->h:Ljava/lang/String;

    .line 90
    const-string/jumbo v5, "ja_JP"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->i:Ljava/lang/String;

    .line 91
    const-string/jumbo v5, "vi_VN"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldij;->j:Ljava/lang/String;

    .line 94
    :cond_3
    const-string/jumbo v5, "msgFilterUserTags"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 95
    .local v4, "tags":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ldij$1;

    invoke-direct {v6}, Ldij$1;-><init>()V

    invoke-virtual {v6}, Ldij$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, v1, Ldij;->k:Ljava/util/List;

    goto/16 :goto_0

    .line 61
    .end local v2    # "tagDecJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "tagPicJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "tags":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "GroupTag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "GroupTag build error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 69
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v3    # "tagPicJson":Lcom/alibaba/fastjson/JSONObject;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "GroupTag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "GroupTag build error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 74
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_2
    move-exception v0

    .line 75
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "GroupTag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "GroupTag build error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 79
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_3
    move-exception v0

    .line 80
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "GroupTag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "GroupTag build error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
