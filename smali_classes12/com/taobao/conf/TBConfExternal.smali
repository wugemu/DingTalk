.class public Lcom/taobao/conf/TBConfExternal;
.super Ljava/lang/Object;
.source "TBConfExternal.java"


# static fields
.field private static AppName:Ljava/lang/String; = null

.field private static AppVersion:Ljava/lang/String; = null

.field private static final LWPRequestAudioBulkDelay:I = 0x4

.field private static final LWPRequestLog:I = 0x3

.field private static final LWPRequestSignal:I = 0x1

.field private static final LWPRequestTurnAdmin:I = 0x2

.field private static final LWPRequestUsrConfig:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TBConfExternal"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "wukong-av"

    sput-object v0, Lcom/taobao/conf/TBConfExternal;->AppName:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "2.0.8"

    sput-object v0, Lcom/taobao/conf/TBConfExternal;->AppVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ApplyUserConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native CheckInviteMsg(Ljava/lang/String;)Z
.end method

.method public static native OnAppLog(Ljava/lang/String;)V
.end method

.method public static native OnLWPResponse(Ljava/lang/String;I)V
.end method

.method public static native OnNetworkStatusChanged(I)V
.end method

.method public static native OnReceiveSignalMsg(Ljava/lang/String;Z)V
.end method

.method private static OnSaveLog(Ljava/lang/String;)V
    .locals 5
    .param p0, "logData"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 107
    invoke-static {}, Liel;->a()Liel;

    move-result-object v4

    .line 3065
    iget-object v3, v4, Liel;->a:Liel$a;

    .line 108
    .local v3, "listener":Liel$a;
    if-eqz v3, :cond_0

    .line 109
    invoke-interface {v3, v2}, Liel$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "listener":Liel$a;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private static OnSendLWPRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "lwpReqType"    # I
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "keyValues"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 92
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v6, "mapParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v7, "msgJson":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v5

    .line 59
    .local v5, "length":I
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v8

    .line 60
    .local v8, "names":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 61
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v7    # "msgJson":Lorg/json/JSONObject;
    .end local v8    # "names":Lorg/json/JSONArray;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "msgJson":Lorg/json/JSONObject;
    .restart local v8    # "names":Lorg/json/JSONArray;
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "domian int type not defined:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lieg;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-static {v6}, Liex;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 1093
    :pswitch_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1094
    :cond_2
    const-string/jumbo v10, "Invalid parameter when requestTurnAdmin"

    invoke-static {v10}, Lieg;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_3
    new-instance v11, Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;

    invoke-direct {v11}, Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;-><init>()V

    .line 1099
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1100
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;->domain:Ljava/lang/String;

    .line 1102
    :cond_4
    const-string/jumbo v10, "jsonMsg"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1103
    const-string/jumbo v10, "jsonMsg"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;->jsonMsg:Ljava/lang/String;

    .line 1106
    :cond_5
    :try_start_1
    const-class v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    new-instance v12, Liex$2;

    move/from16 v0, p0

    invoke-direct {v12, v0}, Liex$2;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;->getRoute(Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;Liyv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1119
    :catch_1
    move-exception v10

    .line 1120
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1125
    :pswitch_2
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1126
    :cond_6
    const-string/jumbo v10, "Invalid parameter when requestAudioBulkDelay"

    invoke-static {v10}, Lieg;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :cond_7
    new-instance v11, Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;

    invoke-direct {v11}, Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;-><init>()V

    .line 1131
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1132
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;->domain:Ljava/lang/String;

    .line 1134
    :cond_8
    const-string/jumbo v10, "deviceId"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 1135
    const-string/jumbo v10, "deviceId"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;->deviceId:Ljava/lang/String;

    .line 1138
    :cond_9
    :try_start_2
    const-class v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    new-instance v12, Liex$3;

    move/from16 v0, p0

    invoke-direct {v12, v0}, Liex$3;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;->getAudioBulkDeley(Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;Liyv;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1151
    :catch_2
    move-exception v10

    .line 1152
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1157
    :pswitch_3
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1158
    :cond_a
    const-string/jumbo v10, "Invalid parameter when requestUsrConfig"

    invoke-static {v10}, Lieg;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    :cond_b
    const-string/jumbo v10, "expire_time"

    .line 1413
    invoke-static {}, Liex;->b()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1414
    if-nez v11, :cond_d

    .line 1415
    const-wide/16 v10, 0x0

    .line 1258
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_c

    .line 1438
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1442
    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 1444
    const/16 v14, 0x10

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 1446
    const/16 v15, 0xe

    add-int/2addr v13, v14

    neg-int v13, v13

    invoke-virtual {v12, v15, v13}, Ljava/util/Calendar;->add(II)V

    .line 1448
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 1258
    cmp-long v10, v10, v12

    if-gez v10, :cond_e

    .line 1259
    :cond_c
    const/4 v10, 0x1

    .line 1161
    :goto_3
    if-nez v10, :cond_f

    .line 1163
    invoke-static {}, Liex;->a()V

    goto/16 :goto_0

    .line 1417
    :cond_d
    const-wide/16 v12, 0x0

    invoke-interface {v11, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_2

    .line 1261
    :cond_e
    const/4 v10, 0x0

    goto :goto_3

    .line 1167
    :cond_f
    new-instance v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;

    invoke-direct {v11}, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;-><init>()V

    .line 1168
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 1169
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->domain:Ljava/lang/String;

    .line 1171
    :cond_10
    const-string/jumbo v10, "deviceId"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 1172
    const-string/jumbo v10, "deviceId"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->deviceId:Ljava/lang/String;

    .line 1174
    :cond_11
    const-string/jumbo v10, "os"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 1175
    const-string/jumbo v10, "os"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->os:Ljava/lang/String;

    .line 1177
    :cond_12
    const-string/jumbo v10, "sdkVersion"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1178
    const-string/jumbo v10, "sdkVersion"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->sdkVersion:Ljava/lang/String;

    .line 1180
    :cond_13
    const-string/jumbo v10, "nettype"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 1181
    const-string/jumbo v10, "nettype"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->netType:Ljava/lang/String;

    .line 1183
    :cond_14
    const-string/jumbo v10, "params"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 1184
    const-string/jumbo v10, "params"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;->params:Ljava/lang/String;

    .line 1188
    :cond_15
    :try_start_3
    const-class v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;

    new-instance v12, Liex$4;

    invoke-direct {v12}, Liex$4;-><init>()V

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;->getUserConfig(Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;Liyv;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1202
    :catch_3
    move-exception v10

    .line 1203
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2208
    :pswitch_4
    if-eqz v6, :cond_16

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2209
    :cond_16
    const-string/jumbo v10, "Invalid parameter when requestLog"

    invoke-static {v10}, Lieg;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2212
    :cond_17
    new-instance v11, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;

    invoke-direct {v11}, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;-><init>()V

    .line 2213
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_18

    .line 2214
    const-string/jumbo v10, "domain"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;->domain:Ljava/lang/String;

    .line 2216
    :cond_18
    const-string/jumbo v10, "data"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 2217
    const-string/jumbo v10, "data"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;->data:Ljava/lang/String;

    .line 2220
    :cond_19
    :try_start_4
    const-class v10, Lcom/alibaba/wukong/openav/internal/channel/service/VlogService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/openav/internal/channel/service/VlogService;

    new-instance v12, Liex$5;

    move/from16 v0, p0

    invoke-direct {v12, v0}, Liex$5;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/openav/internal/channel/service/VlogService;->postLog(Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;Liyv;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 2233
    :catch_4
    move-exception v10

    .line 2234
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static native SetCallExtraMsg(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native SetCrashHolderEnable(Ljava/lang/String;Z)V
.end method

.method public static native SetNetworkStatus(I)V
.end method

.method private static getLocalValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v1

    .line 4106
    iget-object v1, v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b:Landroid/content/Context;

    .line 140
    invoke-static {v1, p0}, Liep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, ""

    .line 144
    :cond_0
    return-object v0
.end method

.method private static getUserConfigVerNum(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 168
    .line 5242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5243
    :cond_0
    :goto_0
    return v0

    .line 5245
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "_ver"

    aput-object v3, v1, v2

    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5395
    invoke-static {}, Liex;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5396
    if-eqz v2, :cond_0

    .line 5399
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getWifiSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v1

    .line 3106
    iget-object v1, v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b:Landroid/content/Context;

    .line 126
    invoke-static {v1}, Liep;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "wifi":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, ""

    .line 130
    :cond_0
    return-object v0
.end method

.method private static setLocalValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    .line 5106
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b:Landroid/content/Context;

    .line 155
    invoke-static {v0, p0, p1}, Liep;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    return v0
.end method
