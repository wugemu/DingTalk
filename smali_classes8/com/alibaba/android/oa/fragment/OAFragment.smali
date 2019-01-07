.class public Lcom/alibaba/android/oa/fragment/OAFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OAFragment.java"


# instance fields
.field public a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

.field public b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

.field public c:J

.field public d:Z

.field public e:Lcrb;

.field f:Leek;

.field private g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private i:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    .line 86
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    .line 87
    return-void
.end method

.method private a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .param p2, "object"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p3, "paramsKey"    # Ljava/lang/String;
    .param p4, "paramsValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 528
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 530
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p2}, Leek;->c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lciq;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-interface {v0, p2}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "micro_app_show_update"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    iget-wide v8, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 536
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 535
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    invoke-static {v0, v2, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 537
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v2, Lble;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 539
    :cond_1
    invoke-static {p2}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "url":Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    invoke-static {v1, p3, p4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/oa/fragment/OAFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/oa/fragment/OAFragment$3;-><init>(Lcom/alibaba/android/oa/fragment/OAFragment;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    iget-object v5, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 555
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "category_id"

    iget-wide v2, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string/jumbo v0, "orgid"

    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v0, "agentid"

    iget-wide v2, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "OAFragment"

    const-string/jumbo v3, "oa_category_click"

    invoke-interface {v0, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 565
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/OAFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/OAFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/OAFragment;)Lcom/alibaba/android/oa/fragment/OAContentFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/OAFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/oa/fragment/OAFragment;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-direct {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;-><init>()V

    return-object v0
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 374
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 375
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-interface {v2}, Leek;->a()Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 377
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iput-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 379
    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 2236
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 3224
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3225
    iget-object v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 3226
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isShortCutDisplay()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 380
    .local v1, "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    :goto_0
    if-eqz v1, :cond_3

    .line 381
    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    .line 386
    .end local v1    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    :cond_1
    :goto_1
    return-void

    .line 3232
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 383
    .restart local v1    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(J)V

    goto :goto_1
.end method


# virtual methods
.method public final a(J)V
    .locals 13
    .param p1, "orgId"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    .line 240
    .local v2, "fm":Lcn;
    invoke-virtual {p0, v10}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 241
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-interface {v5, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    .line 243
    .local v3, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    const/4 v1, 0x0

    .line 244
    .local v1, "description":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 246
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "OrgMicroAPPObject : "

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-static {v3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 253
    :goto_1
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "OAFragment"

    invoke-static {v5, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-eqz v3, :cond_3

    .line 257
    invoke-static {p1, p2}, Legj;->a(J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    invoke-static {}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c()Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 259
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v5, p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcom/alibaba/android/oa/fragment/OAFragment;)V

    .line 260
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 282
    .local v0, "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_2

    .line 283
    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 284
    .local v4, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v5, Ledz$f;->fragment_container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 285
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 288
    .end local v4    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(J)V

    .line 289
    iget-boolean v5, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    iput-boolean v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    .line 291
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->i:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_3

    .line 292
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->i:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    .end local v0    # "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    :cond_3
    iput-wide p1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 297
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Leek;->b(J)V

    .line 298
    invoke-virtual {p0, v11}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 300
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v5

    sget-object v6, Lble;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "OALoadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateLastOALoadModel & orgId= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 1105
    new-instance v5, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    invoke-direct {v5}, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;-><init>()V

    .line 1106
    iput v10, v5, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    .line 1107
    iput-wide p1, v5, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    .line 1109
    :try_start_1
    invoke-static {v5}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1110
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1111
    const-string/jumbo v6, "oa_load_model_key"

    invoke-static {v6, v5}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1113
    :catch_0
    move-exception v5

    .line 1114
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1115
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, "OALoadManager"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "updateLastOALoadModel exception="

    aput-object v9, v8, v11

    .line 1116
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    .line 1115
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "model is null , orgId = "

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 263
    :cond_5
    iget-boolean v5, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    if-eqz v5, :cond_6

    .line 266
    invoke-static {}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c()Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 267
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v5, p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcom/alibaba/android/oa/fragment/OAFragment;)V

    .line 268
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .restart local v0    # "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    goto/16 :goto_2

    .line 272
    .end local v0    # "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    :cond_6
    const-class v5, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iput-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 273
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-nez v5, :cond_7

    .line 274
    invoke-static {}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c()Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 275
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v5, p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcom/alibaba/android/oa/fragment/OAFragment;)V

    .line 276
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->e:Lcrb;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcrb;)V

    .line 277
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 279
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .restart local v0    # "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    goto/16 :goto_2

    .line 249
    .end local v0    # "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "paramsKey"    # Ljava/lang/String;
    .param p5, "paramsValue"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-interface {v2, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 496
    .local v1, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 499
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 500
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 501
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-direct {p0, v1, v0, p4, p5}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V
    .locals 7
    .param p1, "shortcutObject"    # Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    if-nez v3, :cond_1

    .line 306
    :cond_0
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "OAFragment"

    const-string/jumbo v5, "activity invalid in switchWorkTab"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 310
    :cond_1
    if-nez p1, :cond_2

    .line 311
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "OAFragment"

    const-string/jumbo v5, "shortcutObject is null in switchWorkTab"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_2
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "OAFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shortcutObject in switchWorkTab is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {p1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 318
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v3, p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcom/alibaba/android/oa/fragment/OAFragment;)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 321
    .local v0, "content":Lcom/alibaba/android/oa/fragment/OAContentFragment;
    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    .line 323
    .local v1, "fm":Lcn;
    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 325
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Ledz$f;->fragment_container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 326
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 330
    .end local v1    # "fm":Lcn;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(J)V

    .line 331
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    .line 333
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->i:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->i:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    :cond_4
    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 338
    invoke-static {}, Leel;->f()Leek;

    move-result-object v3

    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->orgId:J

    invoke-interface {v3, v4, v5}, Leek;->b(J)V

    .line 339
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 341
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 343
    invoke-static {p1}, Legk;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "groupKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 347
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-interface {v1, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 348
    .local v0, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_1

    .line 349
    iget-boolean v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    if-nez v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    instance-of v1, v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 1210
    iget-object v2, v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    if-eqz v2, :cond_1

    .line 1211
    iget-object v2, v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    .line 2062
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2132
    iget-object v2, v2, Leea;->a:Ljava/util/List;

    .line 2063
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefv;

    .line 2064
    if-eqz v2, :cond_0

    iget-object v4, v2, Lefv;->c:Lgtr;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lefv;->c:Lgtr;

    iget-object v4, v4, Lgtr;->a:Ljava/lang/String;

    .line 2065
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1212
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lefv;->c:Lgtr;

    if-eqz v3, :cond_1

    .line 1213
    new-instance v3, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;-><init>(Landroid/content/Context;)V

    .line 1214
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v4

    .line 1215
    iget-object v1, v2, Lefv;->c:Lgtr;

    invoke-virtual {v3, v1, v4, v5}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lgtr;J)V

    .line 1216
    invoke-virtual {v3}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->show()V

    .line 355
    :cond_1
    return-void

    .line 2070
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final a(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method public final b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "agentId"    # Ljava/lang/String;
    .param p4, "paramsKey"    # Ljava/lang/String;
    .param p5, "paramsValue"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-interface {v2, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 512
    .local v1, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 515
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 516
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 517
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    invoke-direct {p0, v1, v0, p4, p5}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 476
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    iget-wide v4, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-interface {v2, v4, v5}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 477
    .local v1, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    iget-boolean v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    if-nez v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    instance-of v2, v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 481
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 482
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 483
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto :goto_0

    .line 492
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 214
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Legj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->g:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    goto :goto_0
.end method

.method public final f()Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 362
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    .line 363
    .local v0, "oaDatasource":Leek;
    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-interface {v0, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    return-object v1
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 3915
    invoke-static {}, Leej;->e()Leei;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Leei;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3916
    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_upgrade_guide_showed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3917
    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g()V

    .line 473
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "OAFragment"

    const-string/jumbo v2, "onActivityCreated->syncOAConfigService"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->initSecurityGuard(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 134
    .line 1092
    sget v2, Ledz$g;->activity_oa_fragment:I

    .line 134
    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "root":Landroid/view/View;
    iput-object v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->I:Landroid/view/View;

    .line 137
    sget v2, Ledz$f;->rl_webview_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->i:Landroid/widget/RelativeLayout;

    .line 138
    sget v2, Ledz$f;->progress_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v3, 0x4

    new-array v3, v3, [I

    sget v4, Ledz$c;->swipe_refresh_color1:I

    aput v4, v3, v6

    const/4 v4, 0x1

    sget v5, Ledz$c;->swipe_refresh_color2:I

    aput v5, v3, v4

    sget v4, Ledz$c;->swipe_refresh_color1:I

    aput v4, v3, v7

    sget v4, Ledz$c;->swipe_refresh_color2:I

    aput v4, v3, v8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 144
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Legk;->a(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    move-result-object v0

    .line 146
    .local v0, "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    if-eqz v0, :cond_1

    .line 147
    iget v2, v0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    if-ne v2, v7, :cond_0

    .line 148
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    .line 155
    :goto_0
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "OAFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "oaLoadModel in enbaleSupportShortcut==>"

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v0    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :goto_2
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/oa/fragment/OAFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/oa/fragment/OAFragment$1;-><init>(Lcom/alibaba/android/oa/fragment/OAFragment;)V

    invoke-interface {v2, v3, v6, v8}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 202
    return-object v1

    .line 150
    .restart local v0    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :cond_0
    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(J)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->h()V

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1

    .line 158
    .end local v0    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->f:Leek;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-interface {v2}, Leek;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 159
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 160
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/OAFragment;->h()V

    goto :goto_2

    .line 162
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(J)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;)V

    .line 113
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 114
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 120
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 121
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 92
    sget v0, Ledz$g;->activity_oa_fragment:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->setUserVisibleHint(Z)V

    .line 417
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/fragment/OAFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/oa/fragment/OAFragment$2;-><init>(Lcom/alibaba/android/oa/fragment/OAFragment;Z)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    if-eqz p1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onResume()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onResume()V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onPause()V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onPause()V

    goto :goto_0
.end method
