.class public Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "CustomContact.java"


# instance fields
.field private mChooseCallbackName:Ljava/lang/String;

.field private mMultipleChooseCallbackName:Ljava/lang/String;

.field private mSelectUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUidStarffMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUidStarffMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUidStarffMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->multiChooseCallback(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->chooseCallback(Ljava/util/List;)V

    return-void
.end method

.method private chooseCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, -0x1

    const-string/jumbo v3, "Canceled"

    .line 258
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mChooseCallbackName:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 261
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mChooseCallbackName:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 266
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 267
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    .line 270
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 274
    const-string/jumbo v5, "avatar"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :goto_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUidStarffMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUidStarffMap:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 280
    const-string/jumbo v5, "emplId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUidStarffMap:Ljava/util/HashMap;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "avatar"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 287
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    return-object v2
.end method

.method private multiChooseCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, -0x1

    const-string/jumbo v3, "Canceled"

    .line 249
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mMultipleChooseCallbackName:Ljava/lang/String;

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 252
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mMultipleChooseCallbackName:Ljava/lang/String;

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 245
    return-void
.end method

.method private towerChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 30
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .param p2, "isMultiple"    # Z

    .prologue
    .line 88
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "isShowCompanyName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 90
    .local v18, "isShowCompanyName":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "users"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 91
    .local v23, "jsonArrayUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "corpId"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, "argCorpId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "max"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 93
    .local v12, "chooseLimit":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "selectedUsers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 94
    .local v22, "jsonArraySelectedUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "disabledUsers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 95
    .local v20, "jsonArrayDisableUsers":Lorg/json/JSONArray;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v25

    .line 96
    .local v25, "session":Lhqe$d;
    if-eqz v25, :cond_0

    .line 1488
    move-object/from16 v0, v25

    iget-object v0, v0, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 98
    .local v26, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "userNameMap"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 99
    .local v28, "userNameMapObject":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v5, "userStaffIdNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v28, :cond_1

    .line 101
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    .line 102
    .local v19, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 104
    .local v24, "key":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    .end local v5    # "userStaffIdNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "chooseLimit":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "argCorpId":Ljava/lang/String;
    .end local v18    # "isShowCompanyName":Z
    .end local v19    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "jsonArrayDisableUsers":Lorg/json/JSONArray;
    .end local v22    # "jsonArraySelectedUsers":Lorg/json/JSONArray;
    .end local v23    # "jsonArrayUsers":Lorg/json/JSONArray;
    .end local v24    # "key":Ljava/lang/String;
    .end local v25    # "session":Lhqe$d;
    .end local v26    # "sessionCorpId":Ljava/lang/String;
    .end local v28    # "userNameMapObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 217
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .end local v16    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 96
    .restart local v12    # "chooseLimit":I
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "argCorpId":Ljava/lang/String;
    .restart local v18    # "isShowCompanyName":Z
    .restart local v20    # "jsonArrayDisableUsers":Lorg/json/JSONArray;
    .restart local v22    # "jsonArraySelectedUsers":Lorg/json/JSONArray;
    .restart local v23    # "jsonArrayUsers":Lorg/json/JSONArray;
    .restart local v25    # "session":Lhqe$d;
    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 109
    .restart local v5    # "userStaffIdNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "sessionCorpId":Ljava/lang/String;
    .restart local v28    # "userNameMapObject":Lorg/json/JSONObject;
    :cond_1
    if-nez v26, :cond_2

    .line 110
    move-object v15, v14

    .line 119
    .local v15, "corpId":Ljava/lang/String;
    :goto_3
    if-eqz v18, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v2, v15}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v10

    .line 120
    .local v10, "orgId":J
    :goto_4
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v27, "tempUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v6, "allUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_5

    .line 123
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 124
    .local v21, "jsonArrayLength":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 125
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 112
    .end local v6    # "allUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "orgId":J
    .end local v15    # "corpId":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v21    # "jsonArrayLength":I
    .end local v27    # "tempUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, v26

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    move-object/from16 v15, v26

    .restart local v15    # "corpId":Ljava/lang/String;
    goto :goto_3

    .line 115
    .end local v15    # "corpId":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v4, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "invalid corpId: "

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 116
    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 119
    .restart local v15    # "corpId":Ljava/lang/String;
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_4

    .line 128
    .restart local v6    # "allUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "orgId":J
    .restart local v27    # "tempUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, "selectedUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_6

    .line 131
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 132
    .restart local v21    # "jsonArrayLength":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 133
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 136
    .end local v17    # "i":I
    .end local v21    # "jsonArrayLength":I
    :cond_6
    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v8, "disableUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_7

    .line 139
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 140
    .restart local v21    # "jsonArrayLength":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 141
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 144
    .end local v17    # "i":I
    .end local v21    # "jsonArrayLength":I
    :cond_7
    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v29, v0

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJILjava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v15, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 210
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_2

    .line 212
    :cond_8
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v9, "Empty user list"

    .line 213
    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public choose(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 82
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mChooseCallbackName:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->towerChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public multipleChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 76
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mMultipleChooseCallbackName:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->towerChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 63
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->registerReceiver()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 71
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->unregisterReceiver()V

    .line 72
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 73
    return-void
.end method
