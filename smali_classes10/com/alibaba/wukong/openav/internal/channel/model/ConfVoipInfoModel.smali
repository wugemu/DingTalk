.class public final Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;
.super Ljava/lang/Object;
.source "ConfVoipInfoModel.java"

# interfaces
.implements Liyn;


# static fields
.field private static final KEY_CALLEE_COUNT:Ljava/lang/String; = "calleeCount"

.field private static final KEY_CALLEE_UIDS:Ljava/lang/String; = "calleeUids"

.field private static final KEY_CONF_ID:Ljava/lang/String; = "conferenceId"

.field private static final KEY_HOST_UID:Ljava/lang/String; = "hostUid"


# instance fields
.field public calleeCount:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public calleeUids:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public conferenceId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public hostUid:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 51
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 37
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    goto :goto_0

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    goto :goto_0

    .line 43
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    goto :goto_0

    .line 46
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final fromJsonStr(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "conferenceId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    .line 87
    const-string/jumbo v6, "hostUid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    .line 89
    const-string/jumbo v6, "calleeUids"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 90
    .local v0, "calleeArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 91
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    .line 95
    .local v4, "uid":J
    iget-object v6, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    .end local v4    # "uid":J
    :cond_0
    const-string/jumbo v6, "calleeCount"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "calleeArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object p0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final toJsonStr()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 57
    const-string/jumbo v4, "conferenceId"

    iget-object v5, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 60
    const-string/jumbo v4, "hostUid"

    iget-object v5, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 65
    .local v3, "uid":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 78
    const/4 v4, 0x0

    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 70
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "calleeUids"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 73
    const-string/jumbo v4, "calleeCount"

    iget-object v5, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
