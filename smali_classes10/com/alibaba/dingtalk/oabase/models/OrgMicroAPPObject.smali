.class public Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
.super Ljava/lang/Object;
.source "OrgMicroAPPObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public auth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasDefaultOA:Z

.field public isCustomed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public microAPPList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field public oaHomePage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public officialTopPicList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/TopPicObject;",
            ">;"
        }
    .end annotation
.end field

.field public order:I

.field public orgCid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgNameAlias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgSenderUid:J

.field public sectionInfos:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field public shortCutsList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;",
            ">;"
        }
    .end annotation
.end field

.field public showMarketToAll:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public topPicList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/TopPicObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;Lorg/json/JSONObject;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 12
    .param p0, "appObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    const-string/jumbo v6, "cs_order"

    iget v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->order:I

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->order:I

    .line 72
    const-string/jumbo v6, "isCustomed"

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    .line 73
    const-string/jumbo v6, "showMarketToAll"

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->showMarketToAll:Z

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->showMarketToAll:Z

    .line 74
    const-string/jumbo v6, "orgId"

    iget-wide v8, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-virtual {p1, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 75
    const-string/jumbo v6, "orgCid"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    .line 76
    const-string/jumbo v6, "orgIcon"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    .line 77
    const-string/jumbo v6, "corpId"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    .line 78
    const-string/jumbo v6, "auth"

    iget v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->auth:I

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->auth:I

    .line 79
    const-string/jumbo v6, "hasDefaultOA"

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->hasDefaultOA:Z

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->hasDefaultOA:Z

    .line 80
    const-string/jumbo v6, "oaHomePage"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    .line 81
    const-string/jumbo v6, "orgName"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    .line 82
    const-string/jumbo v6, "orgNameAlias"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    .line 83
    const-string/jumbo v6, "orgSenderUid"

    iget-wide v8, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgSenderUid:J

    invoke-virtual {p1, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgSenderUid:J

    .line 84
    const-string/jumbo v6, "extension"

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->extension:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->extension:Ljava/lang/String;

    .line 86
    const-string/jumbo v6, "topPicList"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    const-string/jumbo v6, "topPicList"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->topPicList:Ljava/util/List;

    .line 90
    :cond_0
    const-string/jumbo v6, "officialTopPicList"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    const-string/jumbo v6, "officialTopPicList"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->officialTopPicList:Ljava/util/List;

    .line 94
    :cond_1
    const-string/jumbo v6, "oa_app"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-string/jumbo v6, "oa_app"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, "appJSON":Lorg/json/JSONObject;
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, ""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "OrgMicroAppObject fromJson orgId="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    iget-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 99
    invoke-static {v6}, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->parseToAppMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    .line 98
    invoke-static {v0, v6, v7}, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->handlerOAAppJSON(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 103
    .end local v0    # "appJSON":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v6, "marketInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    const-string/jumbo v6, "marketInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 105
    .local v3, "marketJSON":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 107
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 108
    .local v2, "market":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 112
    const-string/jumbo v6, "sectionId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 113
    .local v4, "sectionId":I
    if-nez v1, :cond_4

    .line 114
    iget-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    iget-object v7, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v6, v2, v7}, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->fromJSON(Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .line 106
    .end local v4    # "sectionId":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .restart local v4    # "sectionId":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v8, v2, v9}, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->fromJSON(Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    .end local v2    # "market":Lorg/json/JSONObject;
    .end local v3    # "marketJSON":Lorg/json/JSONArray;
    .end local v4    # "sectionId":I
    :cond_5
    const-string/jumbo v6, "oaShortcuts"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 122
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->f()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 123
    const-string/jumbo v6, "oaShortcuts"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 124
    .local v5, "shortCutJSON":Lorg/json/JSONArray;
    iget-wide v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v5, v6, v7}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->fromJSONArray(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    .line 127
    .end local v5    # "shortCutJSON":Lorg/json/JSONArray;
    :cond_6
    return-object p0
.end method

.method private static handlerOAAppJSON(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "appJSON"    # Lorg/json/JSONObject;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "iterators":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 161
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    const-string/jumbo v6, "cs_action"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    const-string/jumbo v6, "cs_action"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "deleted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, "OrgMicroAPPObject"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "remove appId:"

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 167
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 176
    .local v4, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, "OrgMicroAPPObject"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "update appId:"

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_1
    iput-object v2, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->key:Ljava/lang/String;

    .line 183
    invoke-static {v4, v5, p2}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->fromJSON(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 185
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    .end local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_2
    new-instance v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 179
    .restart local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, "OrgMicroAPPObject"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "add appId:"

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    return-object v3
.end method

.method private static parseToAppMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 140
    .local v1, "org":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 141
    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1    # "org":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-object v0
.end method
