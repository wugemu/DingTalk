.class public Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
.super Ljava/lang/Object;
.source "ChannelAppModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agentId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public appId:J
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

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rawHomepage:Ljava/lang/String;
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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static fromJSON(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .locals 4
    .param p0, "serviceWindowAppModel"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 p0, 0x0

    .line 113
    .end local p0    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    :cond_0
    if-nez p0, :cond_1

    .line 82
    new-instance p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .end local p0    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;-><init>()V

    .line 85
    .restart local p0    # "serviceWindowAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    :cond_1
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->corpId:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "cs_order"

    iget v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->csOrder:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->csOrder:I

    .line 88
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "icon"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->icon:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "rawHomepage"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->rawHomepage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->rawHomepage:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "agentId"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->agentId:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->agentId:J

    .line 94
    const-string/jumbo v0, "appId"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->appId:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->appId:J

    .line 96
    const-string/jumbo v0, "senderUid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    .line 97
    const-string/jumbo v0, "hintShow"

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintShow:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintShow:Z

    .line 98
    const-string/jumbo v0, "hintVersion"

    iget v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintVersion:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintVersion:I

    .line 99
    const-string/jumbo v0, "hintText"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "groupName"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->groupName:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "groupKey"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->groupKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->groupKey:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "securityTag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->securityTag:I

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
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "imConvTypes":Ljava/util/ArrayList;
    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 122
    .local v2, "jsonArrayLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
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
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "imMsgTypes":Ljava/util/ArrayList;
    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 135
    .local v2, "jsonArrayLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "i":I
    .end local v2    # "jsonArrayLength":I
    :cond_0
    return-object v1
.end method
