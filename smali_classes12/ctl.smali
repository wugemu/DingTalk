.class public Lctl;
.super Ljava/lang/Object;
.source "RobotConfigPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lctl$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lctl$a;

.field public b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field public c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lctl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctl;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lctl$a;)V
    .locals 4
    .param p1, "context"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lctl$a;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lctl;->a:Lctl$a;

    .line 65
    iput-object p1, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1070
    new-instance v0, Lctl$1;

    invoke-direct {v0, p0}, Lctl$1;-><init>(Lctl;)V

    iput-object v0, p0, Lctl;->e:Landroid/content/BroadcastReceiver;

    .line 1101
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1102
    const-string/jumbo v0, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v0, "intent_key_group_selection_do_logic"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v0, "selector_region"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lctl;->e:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1106
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lctl;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lctl;

    .prologue
    .line 56
    iget-object v0, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic a(Lctl;Landroid/content/Intent;)V
    .locals 6
    .param p0, "x0"    # Lctl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    .line 1119
    const-string/jumbo v0, "choose_picture_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    const-string/jumbo v0, "imrobot"

    sget-object v1, Lctl;->d:Ljava/lang/String;

    const-string/jumbo v2, "upload robot avatar path is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lctl;->a:Lctl$a;

    invoke-interface {v0}, Lctl$a;->a()V

    .line 1127
    const-string/jumbo v0, "imrobot"

    sget-object v2, Lctl;->d:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "upload robot avatar path:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 1128
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    new-instance v2, Lctl$2;

    invoke-direct {v2, p0}, Lctl$2;-><init>(Lctl;)V

    .line 1169
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1170
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lifw;

    iget-object v5, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1171
    invoke-interface {v0, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifw;

    .line 1169
    invoke-virtual {v3, v1, v0}, Lify;->a(Ljava/lang/String;Lifw;)V

    goto :goto_0
.end method

.method static synthetic a(Lctl;Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;)V
    .locals 16
    .param p0, "x0"    # Lctl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;

    .prologue
    .line 56
    .line 1262
    new-instance v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1263
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;->mLocationData:Ljava/lang/String;

    invoke-static {v1}, Lcoo;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 1264
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    if-eqz v5, :cond_6

    .line 1266
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1267
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1268
    if-eqz v2, :cond_4

    .line 1271
    const-string/jumbo v3, "provinces"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 1272
    if-eqz v7, :cond_4

    .line 1275
    new-instance v8, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1276
    const-string/jumbo v3, "country"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    .line 1277
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    .line 1278
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1280
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1281
    if-eqz v3, :cond_2

    .line 1284
    const-string/jumbo v10, "citys"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 1285
    if-eqz v10, :cond_2

    .line 1289
    new-instance v11, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1290
    const-string/jumbo v12, "province"

    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    .line 1291
    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    .line 1292
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_1

    .line 1294
    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 1295
    if-eqz v13, :cond_0

    .line 1298
    new-instance v14, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1299
    const-string/jumbo v15, "city"

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    .line 1300
    const-string/jumbo v15, "locationId"

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v14, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    .line 1301
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1303
    :cond_1
    iput-object v12, v11, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    .line 1304
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1306
    :cond_3
    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    .line 1307
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1309
    :cond_5
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    .line 1312
    :cond_6
    iget-object v1, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1313
    move-object/from16 v0, p0

    iput-object v4, v0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Lctl;->a:Lctl$a;

    invoke-interface {v1}, Lctl$a;->c()V

    :goto_3
    return-void

    .line 1316
    :cond_7
    const-string/jumbo v1, "imrobot"

    sget-object v2, Lctl;->d:Ljava/lang/String;

    const-string/jumbo v3, "parseWeatherRegions failed"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic b(Lctl;)Lctl$a;
    .locals 1
    .param p0, "x0"    # Lctl;

    .prologue
    .line 56
    iget-object v0, p0, Lctl;->a:Lctl$a;

    return-object v0
.end method

.method static synthetic c(Lctl;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lctl;

    .prologue
    .line 56
    iget-object v0, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lctl;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "locationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    if-nez v5, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v4

    .line 331
    :cond_1
    iget-object v5, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 332
    .local v1, "country":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 333
    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 334
    .local v2, "province":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 335
    iget-object v7, v2, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 336
    .local v0, "city":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 337
    iget-object v4, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "regionKey":Ljava/lang/String;
    iget-object v4, p0, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string/jumbo v1, "album_need_preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V
    .locals 5
    .param p1, "updateBotObject"    # Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    new-instance v0, Lctl$5;

    invoke-direct {v0, p0, p1}, Lctl$5;-><init>(Lctl;Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 375
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v1, p0, Lctl;->a:Lctl$a;

    invoke-interface {v1}, Lctl$a;->a()V

    .line 376
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    .line 378
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v4, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 379
    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 376
    invoke-interface {v2, p1, v1}, Ldxu;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;Lcma;)V

    .line 381
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    new-instance v0, Lctl$3;

    invoke-direct {v0, p0}, Lctl$3;-><init>(Lctl;)V

    .line 207
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;>;"
    iget-object v1, p0, Lctl;->a:Lctl$a;

    invoke-interface {v1}, Lctl$a;->a()V

    .line 208
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    .line 210
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v4, p0, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 211
    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 208
    invoke-interface {v2, v1}, Ldxu;->a(Lcma;)V

    .line 213
    return-void
.end method
