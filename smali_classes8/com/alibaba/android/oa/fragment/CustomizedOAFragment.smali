.class public Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
.super Lcom/alibaba/android/oa/fragment/OAContentFragment;
.source "CustomizedOAFragment.java"


# instance fields
.field public a:Lhdf;

.field b:Leek;

.field c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

.field private g:Lcom/alibaba/android/oa/model/NewRetailObject;

.field private i:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->j:I

    .line 114
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b:Leek;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method public static a(Lcom/alibaba/android/oa/model/NewRetailObject;)Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .locals 4
    .param p0, "newRetailObject"    # Lcom/alibaba/android/oa/model/NewRetailObject;

    .prologue
    .line 95
    new-instance v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-direct {v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;-><init>()V

    .line 96
    .local v1, "f":Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "KEY_NEW_RETAIL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    const-string/jumbo v2, "TYPE_KEY"

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/NewRetailObject;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method

.method public static a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .locals 4
    .param p0, "shortcutObject"    # Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .prologue
    .line 104
    new-instance v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-direct {v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;-><init>()V

    .line 105
    .local v1, "f":Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "KEY_NEW_RETAIL_SHORTCUT"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string/jumbo v2, "TYPE_KEY"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v1, v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Lhdf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "currentUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 317
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->k:Ljava/lang/String;

    .line 320
    :cond_0
    move-object v0, p1

    .line 321
    .local v0, "tempUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getPageErrorTipsView(Landroid/content/Context;Ljava/lang/String;Lcmi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "tempUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "CustomizedOAFragment"

    .line 359
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RuntimeWebViewLayout addPageErrorView exception: "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 360
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 429
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    sget v2, Ledz$f;->container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "container":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lhdf;->loadUrl(Ljava/lang/String;II)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Ljava/lang/String;)V

    .line 437
    .end local v0    # "container":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-direct {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;-><init>()V

    .line 91
    .local v0, "f":Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final G()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 283
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 284
    .local v2, "orgId":J
    const-string/jumbo v6, "oa"

    const-string/jumbo v8, "OAHomePage"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "update customizedOA "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-eqz v6, :cond_2

    .line 286
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b:Leek;

    if-eqz v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b:Leek;

    invoke-interface {v6, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 288
    .local v1, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_2

    .line 289
    iput-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->f:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 290
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v4, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 292
    .local v5, "url":Ljava/lang/String;
    invoke-static {v2, v3}, Legj;->a(J)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->j:I

    if-nez v6, :cond_3

    .line 293
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->g:Lcom/alibaba/android/oa/model/NewRetailObject;

    if-eqz v6, :cond_0

    .line 294
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->g:Lcom/alibaba/android/oa/model/NewRetailObject;

    invoke-virtual {v6}, Lcom/alibaba/android/oa/model/NewRetailObject;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 301
    :cond_0
    :goto_0
    const-string/jumbo v6, "url"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v6, "org_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-class v8, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "oa_open_mainpageurl_click"

    invoke-interface {v6, v8, v9, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 305
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const-string/jumbo v8, "updateUrl : "

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v6, "oa"

    const-string/jumbo v8, "OAHomePage"

    invoke-static {v6, v8, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    iput-object v5, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->k:Ljava/lang/String;

    .line 3440
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v6, v8, :cond_1

    const/4 v7, 0x1

    .line 3413
    :cond_1
    if-eqz v7, :cond_7

    .line 3414
    invoke-direct {p0, v5}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Ljava/lang/String;)V

    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 296
    .restart local v1    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .restart local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->j:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->i:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    if-eqz v6, :cond_4

    .line 297
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->i:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getJumpUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 299
    :cond_4
    iget-object v8, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    .line 2379
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v6, v2, v10

    if-nez v6, :cond_6

    .line 2381
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 2382
    if-nez v6, :cond_5

    move v6, v7

    .line 2383
    :goto_2
    invoke-static {}, Lcms;->c()Z

    move-result v9

    if-nez v9, :cond_9

    const/16 v9, 0x56

    if-eq v9, v6, :cond_9

    .line 2386
    const-string/jumbo v6, "https://iattend.dingtalk.com/attend/person.html"

    :goto_3
    move-object v5, v6

    .line 299
    :goto_4
    goto/16 :goto_0

    .line 2382
    :cond_5
    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 3150
    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    .line 2390
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2391
    const-string/jumbo v5, "https://iattend.dingtalk.com/attend/person.html"

    goto :goto_4

    .line 3416
    .restart local v0    # "description":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 3417
    if-eqz v6, :cond_2

    .line 3418
    new-instance v7, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;

    invoke-direct {v7, p0, v5}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v0    # "description":Ljava/lang/String;
    :cond_8
    move-object v5, v8

    goto :goto_4

    :cond_9
    move-object v6, v8

    goto :goto_3
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d()V

    .line 409
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, -0x1

    .line 119
    .line 1160
    sget v7, Ledz$g;->activity_customized_oa_fragment:I

    .line 119
    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v7, "need_default_header"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 124
    .local v6, "needShowDefaultHeader":Z
    const-string/jumbo v7, "default_header_height"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "defaultHeaderHeight":I
    if-eqz v6, :cond_0

    .line 126
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, "fakeHeader":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 134
    .end local v3    # "fakeHeader":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :try_start_0
    const-string/jumbo v7, "KEY_NEW_RETAIL"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/oa/model/NewRetailObject;

    iput-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->g:Lcom/alibaba/android/oa/model/NewRetailObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const-string/jumbo v7, "TYPE_KEY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->j:I

    .line 141
    iget v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->j:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 142
    const-string/jumbo v7, "KEY_NEW_RETAIL_SHORTCUT"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    iput-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->i:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 146
    .end local v1    # "defaultHeaderHeight":I
    .end local v6    # "needShowDefaultHeader":Z
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v5

    .line 147
    .local v5, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    .line 148
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v7}, Lhdf;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 149
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v8}, Lhdf;->getView()Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v7}, Lhdf;->handleCreate()V

    .line 1227
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    new-instance v8, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)V

    invoke-interface {v7, v8}, Lhdf;->setClient(Lhdf$a;)V

    .line 1269
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    new-instance v8, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$2;

    invoke-direct {v8, p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$2;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)V

    invoke-interface {v7, v8}, Lhdf;->setOnPageStatusCheckListener(Lhdf$b;)V

    .line 1277
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d()V

    .line 1448
    new-instance v7, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$5;

    invoke-direct {v7, p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$5;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)V

    iput-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c:Landroid/content/BroadcastReceiver;

    .line 1454
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1455
    const-string/jumbo v8, "com.workapp.org_employee_change"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v7}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d:Landroid/widget/FrameLayout;

    return-object v7

    .line 135
    .end local v5    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .restart local v1    # "defaultHeaderHeight":I
    .restart local v6    # "needShowDefaultHeader":Z
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "get NewRetailObject exception: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 171
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onDestroy()V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onPause()V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onResume()V

    .line 197
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "fragment_invisible_no_dispatch_resume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isRuntimeEntryInstanceofWeex(Lhdf;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "onResume"

    const-string/jumbo v2, "runtimeEntry instanceof Weex"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "onResume"

    const-string/jumbo v2, "oa page is display"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 219
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->f:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 2030
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-nez v0, :cond_4

    .line 2031
    :cond_1
    :goto_1
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    goto :goto_0

    .line 2033
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    goto :goto_1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 160
    sget v0, Ledz$g;->activity_customized_oa_fragment:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->setUserVisibleHint(Z)V

    .line 177
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method
