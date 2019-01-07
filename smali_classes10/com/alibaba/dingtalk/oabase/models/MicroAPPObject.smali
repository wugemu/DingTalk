.class public Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
.super Ljava/lang/Object;
.source "MicroAPPObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPEN_APP_CHECK:I = 0x1

.field public static final OPEN_APP_H5:I = 0x0

.field public static final OPEN_APP_MINI:I = 0x2


# instance fields
.field public agent:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public appId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public config:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hintShow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hintText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hintVersion:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public homepage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hpmInfoStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconIM:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imConvTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public imIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imMsgTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public imMuti:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imShow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isIntercept:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isOnlyHpm:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isSafeLogin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isSafeTunnel:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public localtion:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public migrationStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public miniAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public miniAppIdV2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameEnUs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameJaJp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameZhCn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameZhTw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public order:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rawHomepage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public safeLoginPaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public safeOpenLinkPaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public safePaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public safeThirdPaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sectionId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sectionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sectionOrder:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public securityTag:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public senderUid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 4
    .param p0, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 236
    .end local p0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :goto_0
    return-object p0

    .line 185
    .restart local p0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_0
    if-nez p0, :cond_1

    .line 186
    new-instance p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .end local p0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 188
    .restart local p0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    iput-object p2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "cs_order"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    .line 190
    const-string/jumbo v0, "author"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->author:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->author:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "icon"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "homepage"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->homepage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->homepage:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "rawHomepage"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "desc"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->desc:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "agent"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    .line 197
    const-string/jumbo v0, "appId"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 198
    const-string/jumbo v0, "location"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    .line 199
    const-string/jumbo v0, "senderUid"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    .line 200
    const-string/jumbo v0, "hintShow"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintShow:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintShow:Z

    .line 201
    const-string/jumbo v0, "hintVersion"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    .line 202
    const-string/jumbo v0, "hintText"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "hpmInfo"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hpmInfoStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hpmInfoStr:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "groupName"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupName:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "groupKey"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "config"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->config:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->config:J

    .line 207
    const-string/jumbo v0, "imShow"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    .line 208
    const-string/jumbo v0, "imName"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imName:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "imIcon"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "imAction"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imAction:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "imMuti"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imMuti:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imMuti:Z

    .line 212
    const-string/jumbo v0, "imConvTypes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseConvTypes(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imConvTypes:Ljava/util/List;

    .line 213
    const-string/jumbo v0, "imMsgTypes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseMsgTypes(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imMsgTypes:Ljava/util/List;

    .line 214
    const-string/jumbo v0, "securityTag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->securityTag:I

    .line 215
    const-string/jumbo v0, "sectionId"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    .line 216
    const-string/jumbo v0, "sectionOrder"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionOrder:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionOrder:I

    .line 217
    const-string/jumbo v0, "sectionName"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionName:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "isSafeTunnel"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeTunnel:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeTunnel:Z

    .line 219
    const-string/jumbo v0, "safePaths"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseSafePaths(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safePaths:Ljava/util/List;

    .line 220
    const-string/jumbo v0, "safeThirdPaths"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseSafePaths(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safeThirdPaths:Ljava/util/List;

    .line 221
    const-string/jumbo v0, "safeOpenLinkPaths"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseSafePaths(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safeOpenLinkPaths:Ljava/util/List;

    .line 222
    const-string/jumbo v0, "isIntercept"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isIntercept:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isIntercept:Z

    .line 223
    const-string/jumbo v0, "isOnlyHpm"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isOnlyHpm:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isOnlyHpm:Z

    .line 224
    const-string/jumbo v0, "isSafeLogin"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeLogin:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeLogin:Z

    .line 225
    const-string/jumbo v0, "safeLoginPaths"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->parseSafePaths(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safeLoginPaths:Ljava/util/List;

    .line 226
    const-string/jumbo v0, "iconIM"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->iconIM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->iconIM:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "nameZhCn"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    .line 228
    const-string/jumbo v0, "nameZhTw"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    .line 229
    const-string/jumbo v0, "nameEnUs"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "nameJaJp"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    .line 231
    const-string/jumbo v0, "miniAppId"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    .line 232
    const-string/jumbo v0, "miniAppIdV2"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "migrationStatus"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    .line 234
    const-string/jumbo v0, "extension"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->extension:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static parseConvTypes(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "imConvTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 292
    .local v2, "jsonArrayLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    .end local v2    # "jsonArrayLength":I
    :cond_0
    return-object v1
.end method

.method private static parseMsgTypes(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v1, "imMsgTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 308
    .local v2, "jsonArrayLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    .end local v2    # "jsonArrayLength":I
    :cond_0
    return-object v1
.end method

.method private static parseSafePaths(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, "safePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 276
    .local v1, "jsonArrayLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    .end local v1    # "jsonArrayLength":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getLocalizedName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x5

    .line 240
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    .line 263
    :goto_0
    return-object v1

    .line 249
    :cond_1
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_2
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    goto :goto_0
.end method
