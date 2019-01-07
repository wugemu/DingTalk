.class public Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
.super Ljava/lang/Object;
.source "ChannelOrgModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_CLOSE_STATUS:I = 0x0

.field public static final CHANNEL_OPEN_STATUS:I = 0x1

.field public static final MEDIATE_AUTH:I = 0x2

.field public static final PRIMARY_AUTH:I = 0x3

.field public static final SENIOR_AUTH:I = 0x1

.field public static final UN_AUTH:I


# instance fields
.field public authLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public chStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public csOrder:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasDefaultOA:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgCid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgHomePage:Ljava/lang/String;
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
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public serviceWindowAppModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static fromJSON(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 4
    .param p0, "serviceWindowOrgModel"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    const-string/jumbo v1, "csOrder"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->csOrder:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->csOrder:I

    .line 85
    const-string/jumbo v1, "orgId"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    .line 86
    const-string/jumbo v1, "orgCid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "orgIcon"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgIcon:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgIcon:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "corpId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "authPage"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "hasDefaultOA"

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->hasDefaultOA:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->hasDefaultOA:Z

    .line 91
    const-string/jumbo v1, "orgHomePage"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgHomePage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgHomePage:Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "orgName"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "orgNameAlias"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "orgSenderUid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgSenderUid:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgSenderUid:J

    .line 95
    const-string/jumbo v1, "authLevel"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authLevel:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authLevel:I

    .line 96
    const-string/jumbo v1, "chStatus"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->chStatus:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->chStatus:I

    .line 97
    const-string/jumbo v1, "isAuthed"

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    .line 106
    const-string/jumbo v1, "ch_app"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v1, "ch_app"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    .local v0, "marketJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->serviceWindowAppModels:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->parseToAppMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->handlerOAAppJSON(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->serviceWindowAppModels:Ljava/util/List;

    .line 118
    .end local v0    # "marketJSON":Lorg/json/JSONObject;
    :cond_0
    return-object p0
.end method

.method private static handlerOAAppJSON(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "appJSON"    # Lorg/json/JSONObject;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "iterators":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "list1":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    return-object v2

    .line 152
    .end local v2    # "list1":Ljava/util/ArrayList;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "list":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 154
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    const-string/jumbo v6, "cs_action"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    const-string/jumbo v6, "cs_action"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "microAPPObject":Ljava/lang/String;
    const-string/jumbo v6, "deleted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 161
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v3    # "microAPPObject":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 174
    .local v5, "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    :goto_1
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->key:Ljava/lang/String;

    .line 175
    invoke-static {v5, v4, p2}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->fromJSON(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 176
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v5    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    :cond_3
    new-instance v5, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;-><init>()V

    .restart local v5    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    goto :goto_1
.end method

.method private static parseToAppMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "map":Ljava/util/HashMap;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    .local v2, "var2":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 128
    .local v1, "org":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    if-eqz v1, :cond_0

    .line 129
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .end local v1    # "org":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .end local v2    # "var2":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method
