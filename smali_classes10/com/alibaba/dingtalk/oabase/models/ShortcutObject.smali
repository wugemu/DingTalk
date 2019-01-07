.class public Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
.super Ljava/lang/Object;
.source "ShortcutObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMMON_MINIAPP:J = 0x3L

.field public static final TYPE_URL_MINIAPP:J = 0x2L

.field public static final TYPE_WORK_TAB_MINIAPP:J = 0x1L


# instance fields
.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchAgentsByOrgId(J)Ljava/util/List;
    .locals 9
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "agents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    .line 252
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_1

    .line 253
    iget-object v2, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 254
    .local v2, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 256
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 257
    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_1
    return-object v0
.end method

.method public static fromJSON(Lorg/json/JSONObject;J)Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    .locals 5
    .param p0, "topJSON"    # Lorg/json/JSONObject;
    .param p1, "orgId"    # J

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;-><init>()V

    .line 57
    .local v0, "topPicObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz p0, :cond_0

    .line 58
    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->title:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    .line 62
    :cond_0
    iput-wide p1, v0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    .line 63
    return-object v0
.end method

.method public static fromJSONArray(Lorg/json/JSONArray;J)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "shortcutObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 80
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 81
    .local v3, "topJSON":Lorg/json/JSONObject;
    invoke-static {v3, p1, p2}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->fromJSON(Lorg/json/JSONObject;J)Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    move-result-object v1

    .line 82
    .local v1, "object":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v1    # "object":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    .end local v3    # "topJSON":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method

.method private getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    const-wide/16 v0, -0x1

    .line 227
    .local v0, "agent":J
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 232
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 233
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    iget-wide v8, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v5

    .line 234
    .local v5, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v5, :cond_1

    .line 235
    iget-object v4, v5, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 236
    .local v4, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 238
    .local v3, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    cmp-long v7, v8, v0

    if-nez v7, :cond_0

    .line 246
    .end local v3    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v4    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v5    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_1
    return-object v3

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v2, ""

    .line 140
    .local v2, "workTabIcon":Ljava/lang/String;
    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 141
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 142
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_0

    .line 143
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    .line 151
    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_0
    return-object v2

    .line 145
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 147
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 148
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    goto :goto_0
.end method

.method public getJumpUrl()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v1, ""

    .line 162
    .local v1, "jumpUrl":Ljava/lang/String;
    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v2

    .line 166
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_0

    .line 167
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->d(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "homePage":Ljava/lang/String;
    invoke-static {v0}, Lcpx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNewWorkTabJumpUrl()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    const-string/jumbo v1, ""

    .line 213
    .local v1, "jumpUrl":Ljava/lang/String;
    iget-wide v4, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v2

    .line 215
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_0

    .line 216
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->d(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "homePage":Ljava/lang/String;
    invoke-static {v0}, Lcpx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .end local v0    # "homePage":Ljava/lang/String;
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_0
    return-object v1
.end method

.method public getNewWorkTabName()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    const-string/jumbo v1, ""

    .line 197
    .local v1, "workTabName":Ljava/lang/String;
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 199
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 203
    .end local v0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_0
    return-object v1
.end method

.method public getWorkTabName()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    const-string/jumbo v1, ""

    .line 121
    .local v1, "workTabName":Ljava/lang/String;
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 122
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->title:Ljava/lang/String;

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getMircoAPPObject()Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 125
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNewWorkTabShow()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "isShortCutDisplay":Z
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-direct {p0, v2, v3}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->fetchAgentsByOrgId(J)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "orgAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 183
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 188
    :cond_0
    return v0
.end method

.method public isShortCutDisplay()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "isShortCutDisplay":Z
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-direct {p0, v2, v3}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->fetchAgentsByOrgId(J)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "orgAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 103
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 110
    :cond_1
    :goto_0
    return v0

    .line 106
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ShortcutObject{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", value="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", type="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    .line 273
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", orgId="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    .line 275
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 267
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
