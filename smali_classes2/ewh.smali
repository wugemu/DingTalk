.class public Lewh;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lewh$b;,
        Lewh$a;,
        Lewh$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lewh;


# instance fields
.field public b:Z

.field c:I

.field public d:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lewh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewh;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v1, p0, Lewh;->b:Z

    .line 112
    iput v2, p0, Lewh;->f:I

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lewh;->g:I

    .line 114
    iput v2, p0, Lewh;->c:I

    .line 115
    iput-boolean v1, p0, Lewh;->h:Z

    .line 116
    iput-boolean v1, p0, Lewh;->i:Z

    .line 117
    iput-boolean v1, p0, Lewh;->d:Z

    .line 118
    iput-boolean v1, p0, Lewh;->j:Z

    .line 119
    iput-boolean v1, p0, Lewh;->k:Z

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lewh;->l:I

    .line 136
    return-void
.end method

.method static synthetic a(Lewh;)I
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget v0, p0, Lewh;->f:I

    return v0
.end method

.method static synthetic a(Lewh;I)I
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lewh;->f:I

    return p1
.end method

.method private a(Ljava/lang/String;)Lewh$c;
    .locals 12
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1042
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v7

    .line 1098
    :cond_0
    :goto_0
    return-object v2

    .line 1045
    :cond_1
    new-instance v2, Lewh$c;

    invoke-direct {v2, p0, v9}, Lewh$c;-><init>(Lewh;B)V

    .line 1046
    .local v2, "numInfoWithTime":Lewh$c;
    new-instance v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;-><init>()V

    iput-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1048
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, "adJson":Lorg/json/JSONObject;
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1050
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lewh$c;->a:J

    .line 1052
    :cond_2
    const-string/jumbo v8, "valid"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1053
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "valid"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 1057
    :goto_1
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v8, :cond_0

    .line 1058
    const-string/jumbo v8, "name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1059
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "name"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    .line 1061
    :cond_3
    const-string/jumbo v8, "num"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1062
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "num"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    .line 1064
    :cond_4
    const-string/jumbo v8, "callType"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1065
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "callType"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    .line 1067
    :cond_5
    const-string/jumbo v8, "type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1068
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "type"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    .line 1070
    :cond_6
    const-string/jumbo v8, "orgId"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1071
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "orgId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    .line 1073
    :cond_7
    const-string/jumbo v8, "corpId"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1074
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const-string/jumbo v9, "corpId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    .line 1076
    :cond_8
    const-string/jumbo v8, "mgUids"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1077
    const-string/jumbo v8, "mgUids"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1078
    .local v5, "uidStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1079
    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1080
    .local v6, "uids":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-lez v8, :cond_0

    .line 1081
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_0

    .line 1082
    aget-object v4, v6, v1

    .line 1083
    .local v4, "uidSrc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1086
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1087
    .local v3, "uid":Ljava/lang/Long;
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    .end local v3    # "uid":Ljava/lang/Long;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1055
    .end local v1    # "i":I
    .end local v4    # "uidSrc":Ljava/lang/String;
    .end local v5    # "uidStr":Ljava/lang/String;
    .end local v6    # "uids":[Ljava/lang/String;
    :cond_a
    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1094
    .end local v0    # "adJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    move-object v2, v7

    goto/16 :goto_0

    .line 1096
    :catch_1
    move-exception v8

    move-object v2, v7

    goto/16 :goto_0
.end method

.method public static a()Lewh;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lewh;->e:Lewh;

    if-nez v0, :cond_1

    .line 125
    const-class v1, Lewh;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lewh;->e:Lewh;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lewh;

    invoke-direct {v0}, Lewh;-><init>()V

    sput-object v0, Lewh;->e:Lewh;

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    sget-object v0, Lewh;->e:Lewh;

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/util/List;
    .locals 12
    .param p1, "numModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lewh$c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "bizInfoList":Ljava/util/List;, "Ljava/util/List<Lewh$c;>;"
    if-nez p1, :cond_0

    .line 1250
    const/4 v6, 0x0

    .line 1297
    :goto_0
    return-object v6

    .line 1252
    :cond_0
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->isSupport:Ljava/lang/Boolean;

    .line 8022
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 1253
    .local v3, "isValid":Z
    if-eqz v3, :cond_5

    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->numInfoList:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->numInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1254
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->callType:Ljava/lang/Integer;

    .line 8033
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1255
    .local v2, "callType":I
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "bizInfoList":Ljava/util/List;, "Ljava/util/List<Lewh$c;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .restart local v0    # "bizInfoList":Ljava/util/List;, "Ljava/util/List<Lewh$c;>;"
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->numInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    .line 1258
    .local v1, "callNumInfo":Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->orgId:Ljava/lang/Long;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->orgId:Ljava/lang/Long;

    .line 1260
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    .line 1263
    new-instance v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;-><init>()V

    .line 1264
    .local v4, "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    iput-boolean v3, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 1265
    iput v2, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    .line 1267
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    .line 1268
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->corpId:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    .line 1269
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->orgId:Ljava/lang/Long;

    .line 8044
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 1269
    iput-wide v8, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    .line 1271
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1272
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    .line 1277
    :goto_2
    iget-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->ispMap:Ljava/util/Map;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->ispMap:Ljava/util/Map;

    .line 1279
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1280
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->ispMap:Ljava/util/Map;

    iget-object v8, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    .line 1284
    :goto_3
    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->adminUidList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->adminUidList:Ljava/util/List;

    .line 1285
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1286
    iget-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->adminUidList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1289
    :cond_2
    new-instance v5, Lewh$c;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lewh$c;-><init>(Lewh;B)V

    .line 1290
    .local v5, "numInfoWithTime":Lewh$c;
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    iput-wide v8, v5, Lewh$c;->a:J

    .line 1291
    iput-object v4, v5, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1293
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1274
    .end local v5    # "numInfoWithTime":Lewh$c;
    :cond_3
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    goto :goto_2

    .line 1282
    :cond_4
    const/4 v6, -0x1

    iput v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    goto :goto_3

    .end local v1    # "callNumInfo":Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;
    .end local v2    # "callType":I
    .end local v4    # "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    :cond_5
    move-object v6, v0

    .line 1297
    goto/16 :goto_0
.end method

.method static synthetic a(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lewh;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lewh;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lewh;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Levj;)V
    .locals 8
    .param p0, "pageContent"    # Levj;

    .prologue
    .line 721
    if-eqz p0, :cond_0

    .line 3040
    iget v4, p0, Levj;->a:I

    .line 721
    if-gtz v4, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 726
    .local v0, "adJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "ver"

    .line 4040
    iget v5, p0, Levj;->a:I

    .line 726
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5032
    iget-object v4, p0, Levj;->b:Ljava/lang/String;

    .line 727
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 728
    const-string/jumbo v4, "uri"

    .line 6032
    iget-object v5, p0, Levj;->b:Ljava/lang/String;

    .line 728
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 736
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, "jsonStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "conf_group_create_page_content"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static synthetic a(Lewh;Levg;)V
    .locals 3
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Levg;

    .prologue
    .line 76
    .line 14450
    if-eqz p1, :cond_0

    iget v0, p1, Levg;->b:I

    if-gtz v0, :cond_1

    .line 14451
    :cond_0
    :goto_0
    return-void

    .line 14453
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14455
    :try_start_0
    const-string/jumbo v0, "adType"

    iget v2, p1, Levg;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14456
    const-string/jumbo v0, "ver"

    iget v2, p1, Levg;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14457
    const-string/jumbo v0, "id"

    iget v2, p1, Levg;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14458
    const-string/jumbo v0, "bgColor"

    iget v2, p1, Levg;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14459
    const-string/jumbo v0, "tColor"

    iget v2, p1, Levg;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14460
    const-string/jumbo v0, "cColor"

    iget v2, p1, Levg;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14461
    iget-object v0, p1, Levg;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14462
    const-string/jumbo v0, "title"

    iget-object v2, p1, Levg;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14464
    :cond_2
    iget-object v0, p1, Levg;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14465
    const-string/jumbo v0, "mediaId"

    iget-object v2, p1, Levg;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14467
    :cond_3
    iget-object v0, p1, Levg;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14468
    const-string/jumbo v0, "content"

    iget-object v2, p1, Levg;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14470
    :cond_4
    iget-object v0, p1, Levg;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14471
    const-string/jumbo v0, "uri"

    iget-object v2, p1, Levg;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14473
    :cond_5
    iget-object v0, p1, Levg;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14474
    const-string/jumbo v0, "arrowId"

    iget-object v2, p1, Levg;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14476
    :cond_6
    iget-object v0, p1, Levg;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14477
    const-string/jumbo v0, "adMediaId"

    iget-object v2, p1, Levg;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14485
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14487
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "conf_ad_item_show_content"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14480
    :catch_0
    move-exception v0

    .line 14481
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lewh;Lewh$c;)V
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Lewh$c;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lewh;->a(Lewh$c;)V

    return-void
.end method

.method static synthetic a(Lewh;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    .line 16425
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16426
    :cond_0
    return-void

    .line 16428
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    .line 16429
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    .line 16430
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    .line 16432
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 16436
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lewl;->a(ZLcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 440
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_ad_item_show_flag"

    invoke-static {v0, v1, p0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 442
    return-void
.end method

.method static synthetic a(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->b:Z

    return p1
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 11
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 953
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_2

    :cond_0
    move v5, v6

    .line 975
    :cond_1
    :goto_0
    return v5

    .line 956
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "conf_feedback_click_flag"

    invoke-static {v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "feedbackFlag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 958
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, "configs":[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 960
    aget-object v2, v3, v6

    .line 961
    .local v2, "cacheUuid":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 962
    .local v0, "cacheTime":J
    aget-object v7, v3, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 963
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    .line 965
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    cmp-long v7, p1, v0

    if-gtz v7, :cond_1

    :cond_4
    move v5, v6

    .line 966
    goto :goto_0

    .end local v0    # "cacheTime":J
    .end local v2    # "cacheUuid":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 975
    goto :goto_0
.end method

.method static synthetic b(Lewh;)I
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget v0, p0, Lewh;->g:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v0, 0x28426

    .line 139
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 140
    .local v2, "myUid":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    move-wide v4, v0

    .line 141
    .local v4, "smallOne":J
    :goto_0
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    move-wide v0, v2

    .line 142
    .local v0, "biggerOne":J
    :cond_0
    const-string/jumbo v6, "%d:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v0    # "biggerOne":J
    .end local v4    # "smallOne":J
    :cond_1
    move-wide v4, v2

    .line 140
    goto :goto_0
.end method

.method private static b(Lewh$c;)Ljava/lang/String;
    .locals 12
    .param p0, "numInfoWithTime"    # Lewh$c;

    .prologue
    .line 988
    if-eqz p0, :cond_0

    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-nez v7, :cond_1

    .line 989
    :cond_0
    const/4 v4, 0x0

    .line 1038
    :goto_0
    return-object v4

    .line 992
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 994
    .local v0, "adJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "timestamp"

    iget-wide v8, p0, Lewh$c;->a:J

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 995
    const-string/jumbo v7, "valid"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 996
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v7, :cond_a

    .line 997
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 998
    const-string/jumbo v7, "name"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    :cond_2
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1001
    const-string/jumbo v7, "num"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    :cond_3
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    if-ltz v7, :cond_4

    .line 1004
    const-string/jumbo v7, "type"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1006
    :cond_4
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    if-ltz v7, :cond_5

    .line 1007
    const-string/jumbo v7, "callType"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1009
    :cond_5
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-wide v8, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 1010
    const-string/jumbo v7, "orgId"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-wide v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1012
    :cond_6
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1013
    const-string/jumbo v7, "corpId"

    iget-object v8, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v8, v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1015
    :cond_7
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1016
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1017
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1018
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_b

    .line 1019
    iget-object v7, p0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1020
    .local v6, "uid":Ljava/lang/Long;
    if-nez v6, :cond_9

    .line 1018
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1023
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1024
    add-int/lit8 v7, v5, -0x1

    if-eq v3, v7, :cond_8

    .line 1025
    const-string/jumbo v7, ","

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1031
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "i":I
    .end local v5    # "size":I
    .end local v6    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v2

    .line 1032
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1036
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, "jsonStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 1028
    .end local v4    # "jsonStr":Ljava/lang/String;
    .restart local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v3    # "i":I
    .restart local v5    # "size":I
    :cond_b
    :try_start_1
    const-string/jumbo v7, "mgUids"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1033
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catch_1
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic b(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;

    .prologue
    .line 76
    .line 17131
    const-string/jumbo v0, ""

    .line 17132
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 17135
    :cond_1
    invoke-direct {p0, p1}, Lewh;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/util/List;

    move-result-object v1

    .line 17136
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 17137
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 17138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lewh$c;

    .line 17139
    if-eqz v0, :cond_2

    .line 17142
    invoke-static {v0}, Lewh;->b(Lewh$c;)Ljava/lang/String;

    move-result-object v0

    .line 17143
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 17146
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v6

    .line 1127
    :cond_0
    :goto_0
    return-object v4

    .line 1106
    :cond_1
    const/4 v4, 0x0

    .line 1108
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1112
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "adJsonStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1114
    invoke-direct {p0, v0}, Lewh;->a(Ljava/lang/String;)Lewh$c;

    move-result-object v2

    .line 1115
    .local v2, "bizNumInfoWithTime":Lewh$c;
    if-eqz v2, :cond_2

    iget-object v7, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v7, :cond_2

    .line 1116
    iget-object v7, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, v7, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    iget-object v8, v2, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1111
    .end local v2    # "bizNumInfoWithTime":Lewh$c;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1122
    .end local v0    # "adJsonStr":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :catch_0
    move-exception v7

    :goto_2
    move-object v4, v6

    goto :goto_0

    .line 1124
    :catch_1
    move-exception v7

    :goto_3
    move-object v4, v6

    goto :goto_0

    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    goto :goto_3

    .line 1122
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    goto :goto_2

    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :cond_3
    move-object v4, v5

    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    goto :goto_0
.end method

.method static synthetic b(Lewh;I)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    .line 9407
    if-lez p1, :cond_0

    .line 9410
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_member_number_max"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 5
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 980
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "conf_feedback_click_flag"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 4
    .param p0, "show"    # Z

    .prologue
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "conf_group_create_page_show_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 718
    return-void
.end method

.method static synthetic b(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->h:Z

    return p1
.end method

.method static synthetic c(Lewh;)I
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget v0, p0, Lewh;->c:I

    return v0
.end method

.method static synthetic c(Lewh;I)I
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lewh;->g:I

    return p1
.end method

.method static synthetic c(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->i:Z

    return p1
.end method

.method static synthetic d(Lewh;I)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    .line 10399
    if-lez p1, :cond_0

    .line 10402
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_member_number_min"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic d(Lewh;Z)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    .line 11425
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_voip_to_voip_flag"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method static synthetic d(Lewh;)Z
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget-boolean v0, p0, Lewh;->i:Z

    return v0
.end method

.method static synthetic e(Lewh;)I
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget v0, p0, Lewh;->l:I

    return v0
.end method

.method static synthetic e(Lewh;I)I
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lewh;->c:I

    return p1
.end method

.method static synthetic e(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->j:Z

    return p1
.end method

.method static synthetic f(Lewh;I)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    .line 11391
    if-lez p1, :cond_0

    .line 11394
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_member_video_number_max"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic f(Lewh;Z)V
    .locals 4
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    .line 12830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "conf_call_fix_line_flag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12831
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static f()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "conf_ad_item_show_flag"

    invoke-static {v4, v5, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 433
    .local v0, "localShow":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "conf_ad_item_remote_show_flag"

    invoke-static {v4, v5, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 436
    .local v1, "remoteShow":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method static synthetic f(Lewh;)Z
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget-boolean v0, p0, Lewh;->j:Z

    return v0
.end method

.method static synthetic g(Lewh;I)I
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lewh;->l:I

    return p1
.end method

.method public static g()Levg;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 495
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "conf_ad_item_show_content"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "adContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 498
    new-instance v2, Levg;

    invoke-direct {v2}, Levg;-><init>()V

    .line 500
    .local v2, "adObj":Levg;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "adJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "adType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    const-string/jumbo v4, "adType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->k:I

    .line 504
    :cond_0
    const-string/jumbo v4, "ver"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    const-string/jumbo v4, "ver"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->b:I

    .line 507
    :cond_1
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 508
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->c:Ljava/lang/String;

    .line 510
    :cond_2
    const-string/jumbo v4, "uri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    const-string/jumbo v4, "uri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->e:Ljava/lang/String;

    .line 513
    :cond_3
    const-string/jumbo v4, "mediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 514
    const-string/jumbo v4, "mediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->h:Ljava/lang/String;

    .line 516
    :cond_4
    const-string/jumbo v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 517
    const-string/jumbo v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->f:Ljava/lang/String;

    .line 519
    :cond_5
    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 520
    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->a:I

    .line 522
    :cond_6
    const-string/jumbo v4, "bgColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 523
    const-string/jumbo v4, "bgColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->j:I

    .line 525
    :cond_7
    const-string/jumbo v4, "tColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 526
    const-string/jumbo v4, "tColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->d:I

    .line 528
    :cond_8
    const-string/jumbo v4, "cColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 529
    const-string/jumbo v4, "cColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Levg;->g:I

    .line 531
    :cond_9
    const-string/jumbo v4, "arrowId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 532
    const-string/jumbo v4, "arrowId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->i:Ljava/lang/String;

    .line 534
    :cond_a
    const-string/jumbo v4, "adMediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 535
    const-string/jumbo v4, "adMediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Levg;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1    # "adJson":Lorg/json/JSONObject;
    .end local v2    # "adObj":Levg;
    :cond_b
    :goto_0
    return-object v2

    :cond_c
    move-object v2, v3

    .line 540
    goto :goto_0

    .line 544
    :catch_0
    move-exception v4

    move-object v2, v3

    goto :goto_0
.end method

.method static synthetic g(Lewh;)Z
    .locals 1
    .param p0, "x0"    # Lewh;

    .prologue
    .line 76
    iget-boolean v0, p0, Lewh;->k:Z

    return v0
.end method

.method static synthetic g(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->k:Z

    return p1
.end method

.method static synthetic h(Lewh;)V
    .locals 4
    .param p0, "x0"    # Lewh;

    .prologue
    .line 15705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "first_enter_group_create_page_from_conf_record"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15706
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic h(Lewh;I)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # I

    .prologue
    .line 76
    .line 12360
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_title_show_version"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method static synthetic h(Lewh;Z)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    .line 13336
    const-string/jumbo v0, "conf_bizcall_anim_flag"

    .line 13337
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static h()Z
    .locals 6

    .prologue
    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "first_enter_group_create_page_from_conf_record"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 697
    .local v0, "beFirstEnter":Z
    if-eqz v0, :cond_0

    .line 698
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 701
    :cond_0
    return v0
.end method

.method static synthetic i(Lewh;Z)V
    .locals 1
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    .line 13826
    const-string/jumbo v0, "conf_voip_relay_ab_test_flag"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static i()Z
    .locals 6

    .prologue
    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "conf_group_create_page_show_flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 712
    .local v1, "remoteShow":Z
    return v1
.end method

.method public static j()Levj;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 745
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "conf_group_create_page_content"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v2, v8}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "groupContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 748
    new-instance v3, Levj;

    invoke-direct {v3}, Levj;-><init>()V

    .line 750
    .local v3, "pageObject":Levj;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "adJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "ver"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 752
    const-string/jumbo v7, "ver"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 6044
    .local v5, "version":I
    iput v5, v3, Levj;->a:I

    .line 755
    .end local v5    # "version":I
    :cond_0
    const-string/jumbo v7, "uri"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 756
    const-string/jumbo v7, "uri"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7036
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Levj;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v0    # "adJson":Lorg/json/JSONObject;
    .end local v1    # "groupContent":Ljava/lang/String;
    .end local v3    # "pageObject":Levj;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .restart local v1    # "groupContent":Ljava/lang/String;
    :cond_2
    move-object v3, v6

    .line 762
    goto :goto_0

    .line 766
    .end local v1    # "groupContent":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v6

    goto :goto_0
.end method

.method static synthetic j(Lewh;Z)Z
    .locals 0
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lewh;->d:Z

    return p1
.end method

.method static synthetic k(Lewh;Z)V
    .locals 2
    .param p0, "x0"    # Lewh;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    .line 15445
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_ad_item_remote_show_flag"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static k()Z
    .locals 3

    .prologue
    .line 821
    const-string/jumbo v1, "conf_voip_relay_ab_test_flag"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 822
    .local v0, "relayValid":Z
    return v0
.end method

.method public static m()V
    .locals 1

    .prologue
    .line 1153
    const-string/jumbo v0, "conf_biz_number_info"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method public static o()Z
    .locals 4

    .prologue
    .line 9159
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "voip_conf_open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1442
    .local v0, "isValid":Z
    return v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lewh;->a:Ljava/lang/String;

    return-object v0
.end method

.method private q()Lewh$c;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1179
    .local v1, "numInfoWithTime":Lewh$c;
    const-string/jumbo v2, "conf_biz_number_info"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "numInfoJsonStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1181
    invoke-direct {p0, v0}, Lewh;->a(Ljava/lang/String;)Lewh$c;

    move-result-object v1

    .line 1184
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;
    .locals 8
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "beAvatar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 870
    if-nez p1, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-object v4

    .line 874
    :cond_1
    const-string/jumbo v1, ""

    .line 875
    .local v1, "nickName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 877
    .local v2, "success":Z
    if-eqz p1, :cond_0

    .line 881
    if-nez p2, :cond_2

    .line 882
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 883
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 885
    const/4 v2, 0x1

    .line 888
    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 889
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 890
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 892
    const/4 v2, 0x1

    .line 894
    :cond_3
    if-nez v2, :cond_4

    .line 7843
    if-nez p1, :cond_6

    move-object v0, v4

    .line 896
    .local v0, "contactName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 897
    move-object v1, v0

    .line 899
    const/4 v2, 0x1

    .line 903
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 904
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 905
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v4, v1

    .line 909
    goto :goto_0

    .line 7848
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v3, v5, :cond_7

    .line 7851
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 7852
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 7853
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 7854
    if-eqz v3, :cond_8

    .line 7855
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 7858
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v4, v3

    :cond_7
    move-object v0, v4

    .line 7863
    goto :goto_1

    :cond_8
    move-object v3, v4

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V
    .locals 5
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "listener"    # Lewh$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 913
    if-nez p1, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 917
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "avatarName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "nickName":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lewh$6;

    invoke-direct {v4, p0, p2, v0, v1}, Lewh$6;-><init>(Lewh;Lewh$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 929
    .end local v0    # "avatarName":Ljava/lang/String;
    .end local v1    # "nickName":Ljava/lang/String;
    :cond_2
    sget-object v3, Lewh;->a:Ljava/lang/String;

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 930
    .local v2, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    if-eqz v2, :cond_0

    .line 931
    new-instance v3, Lewh$7;

    invoke-direct {v3, p0, p1, p2}, Lewh$7;-><init>(Lewh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;)V
    .locals 5
    .param p1, "type"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 557
    if-nez p1, :cond_1

    .line 2263
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;-><init>()V

    .line 561
    .local v0, "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;
    iput-object p1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    .line 562
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get activity status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->valueOf()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v2

    new-instance v3, Lewh$3;

    invoke-direct {v3, p0, v0}, Lewh$3;-><init>(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;)V

    .line 2258
    if-eqz v0, :cond_0

    .line 2261
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 2262
    if-eqz v1, :cond_0

    .line 2265
    new-instance v4, Leyd$8;

    invoke-direct {v4, v2, v3}, Leyd$8;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->isActivitySwitchOn(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;Liyv;)V

    goto :goto_0
.end method

.method public a(Lewh$c;)V
    .locals 2
    .param p1, "info"    # Lewh$c;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1168
    if-nez p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-static {p1}, Lewh;->b(Lewh$c;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "bizInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    const-string/jumbo v1, "conf_biz_number_info"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    const/4 v4, 0x0

    .line 1229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1233
    :cond_0
    const-string/jumbo v3, "conf_biz_number_infos"

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, "numInfosJsonStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1235
    invoke-direct {p0, v2}, Lewh;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1236
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1238
    .local v0, "info":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1240
    .end local v0    # "info":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    :cond_1
    invoke-interface {p2, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1243
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :cond_2
    invoke-interface {p2, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ZLcma;)V
    .locals 10
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1301
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    const/4 v3, 0x0

    .line 1302
    .local v3, "isNeedForcePull":Z
    const/4 v4, 0x0

    .line 1303
    .local v4, "isNeedRefresh":Z
    invoke-direct {p0}, Lewh;->q()Lewh$c;

    move-result-object v5

    .line 1304
    .local v5, "numInfoWithTime":Lewh$c;
    if-eqz v5, :cond_4

    .line 1305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lewh$c;->a:J

    sub-long v0, v6, v8

    .line 1306
    .local v0, "duration":J
    const-wide/32 v6, 0x2932e00

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 1307
    const/4 v4, 0x1

    .line 1309
    :cond_0
    if-eqz p2, :cond_1

    .line 1310
    iget-object v6, v5, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-interface {p2, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1316
    .end local v0    # "duration":J
    :cond_1
    :goto_0
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lewh;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Update biz info "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz p1, :cond_3

    .line 1318
    :cond_2
    move v2, v3

    .line 1319
    .local v2, "forcePull":Z
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v7

    new-instance v8, Lewh$9;

    invoke-direct {v8, p0, v2, p2}, Lewh$9;-><init>(Lewh;ZLcma;)V

    .line 8952
    const-class v6, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 8953
    if-nez v6, :cond_5

    .line 8954
    .end local v2    # "forcePull":Z
    :cond_3
    :goto_1
    return-void

    .line 1313
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 8956
    .restart local v2    # "forcePull":Z
    :cond_5
    new-instance v9, Leyc$14;

    invoke-direct {v9, v7, v8}, Leyc$14;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v6, v9}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->getPreferBizCallNum(Liyv;)V

    goto :goto_1
.end method

.method public final b(ZLcma;)V
    .locals 8
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1362
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;>;"
    const/4 v1, 0x0

    .line 1364
    .local v1, "isNeedForcePull":Z
    const-string/jumbo v4, "conf_biz_number_infos"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, "numInfoJsonStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1366
    invoke-direct {p0, v3}, Lewh;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1367
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    if-eqz v2, :cond_0

    .line 1368
    if-eqz p2, :cond_0

    .line 1369
    invoke-interface {p2, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1375
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :cond_0
    :goto_0
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewh;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Update all biz info "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    .line 1377
    :cond_1
    move v0, v1

    .line 1378
    .local v0, "forcePull":Z
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v5

    new-instance v6, Lewh$10;

    invoke-direct {v6, p0, v0, p2, p1}, Lewh$10;-><init>(Lewh;ZLcma;Z)V

    .line 8986
    const-class v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 8987
    if-nez v4, :cond_4

    .line 8988
    .end local v0    # "forcePull":Z
    :cond_2
    :goto_1
    return-void

    .line 1373
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 8990
    .restart local v0    # "forcePull":Z
    :cond_4
    new-instance v7, Leyc$15;

    invoke-direct {v7, v5, v6}, Leyc$15;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v4, v7}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->getAllBizCallNum(Liyv;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 151
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;-><init>()V

    .line 152
    .local v0, "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    .line 153
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;->configTypes:Ljava/util/List;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v2

    new-instance v3, Lewh$1;

    invoke-direct {v3, p0}, Lewh$1;-><init>(Lewh;)V

    .line 2076
    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->updateDingSimCardNoticeInterval()V

    .line 333
    return-void

    .line 2079
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 2080
    if-eqz v1, :cond_0

    .line 2083
    new-instance v4, Leyd$1;

    invoke-direct {v4, v2, v3}, Leyd$1;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getConfig(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;Liyv;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 373
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_member_number_max"

    const/4 v2, 0x5

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 373
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lewh;->f:I

    .line 375
    iget v0, p0, Lewh;->f:I

    return v0
.end method

.method public final e()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 379
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_member_number_min"

    const/4 v2, 0x3

    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 379
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lewh;->g:I

    .line 381
    iget v0, p0, Lewh;->g:I

    return v0
.end method

.method public final l()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "conf_call_fix_line_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lewh;->j:Z

    .line 839
    iget-boolean v1, p0, Lewh;->j:Z

    return v1
.end method

.method public final n()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1188
    const/4 v1, 0x0

    .line 1189
    .local v1, "valid":Z
    invoke-direct {p0}, Lewh;->q()Lewh$c;

    move-result-object v0

    .line 1190
    .local v0, "numInfoWithTime":Lewh$c;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, v0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v1, v2, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 1194
    :cond_0
    return v1
.end method
