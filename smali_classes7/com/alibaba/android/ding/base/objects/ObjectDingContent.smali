.class public Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
.super Ljava/lang/Object;
.source "ObjectDingContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;,
        Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;,
        Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;,
        Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    }
.end annotation


# static fields
.field public static final KEY_PARENT_DING_ID:Ljava/lang/String; = "parentDingId"

.field public static final KEY_REFERENCE_CID:Ljava/lang/String; = "cid"

.field public static final KEY_REFERENCE_ID:Ljava/lang/String; = "msgId"


# instance fields
.field public mAuthCode:Ljava/lang/String;

.field public mAuthMediaId:Ljava/lang/String;

.field public mMediaId:Ljava/lang/String;

.field public mMsgCreatedAt:J

.field public mParentDingId:Ljava/lang/String;

.field public mReference:Ljava/lang/String;

.field public mReferenceCid:Ljava/lang/String;

.field public mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

.field public mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 541
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 544
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 547
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mParentDingId:Ljava/lang/String;

    .line 550
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 553
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 556
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    .line 558
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 560
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lazl;)V
    .locals 3
    .param p1, "content"    # Lazl;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 541
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 544
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 547
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mParentDingId:Ljava/lang/String;

    .line 550
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 553
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 556
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    .line 558
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 560
    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lazl;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p1, Lazl;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 153
    :cond_0
    iget-object v0, p1, Lazl;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p1, Lazl;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 157
    :cond_1
    iget-object v0, p1, Lazl;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p1, Lazl;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 161
    :cond_2
    iget-object v0, p1, Lazl;->e:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p1, Lazl;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 165
    :cond_3
    iget-object v0, p1, Lazl;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->parseCIDFromJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static fromDingEntityModel(Lazl;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .locals 1
    .param p0, "model"    # Lazl;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->fromDingEntityModel(Lazl;Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    return-object v0
.end method

.method public static fromDingEntityModel(Lazl;Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .locals 3
    .param p0, "model"    # Lazl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingContent;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lazl;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    iget-object v2, p0, Lazl;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 121
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;-><init>(Lazl;Ljava/util/Map;)V

    .line 127
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    iget-object v2, p0, Lazl;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 123
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;-><init>(Lazl;)V

    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    goto :goto_0
.end method

.method private parseCIDFromJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "cid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "o":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 179
    const-string/jumbo v3, "cid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 516
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 518
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 521
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 524
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 534
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-object v3

    .line 528
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    move-object v3, v4

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public static toJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 496
    .local v1, "ret":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 498
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 500
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 501
    .local v2, "tmp":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 504
    .end local v2    # "tmp":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    return-object v0
.end method

.method public getReferenceCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)Z
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 197
    iget-wide v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 198
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 199
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 282
    return-void
.end method

.method setContentType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 289
    return-void
.end method

.method setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 253
    return-void
.end method

.method public setMsgCreatedAt(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 267
    return-void
.end method

.method public setReferenceCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 260
    return-void
.end method
