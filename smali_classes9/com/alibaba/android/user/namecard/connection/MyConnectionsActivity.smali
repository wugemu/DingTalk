.class public Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MyConnectionsActivity.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lhlm;

.field private d:Lhlp;

.field private e:Z

.field private f:Landroid/widget/FrameLayout;

.field private final g:I

.field private final h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 110
    iput-boolean v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e:Z

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->g:I

    .line 118
    iput v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->h:I

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    .line 358
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Lhlp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lhlp;)Lhlp;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "x1"    # Lhlp;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method public static a()V
    .locals 0
    .annotation build Lcom/alibaba/android/dingtalk/permission/annotation/OnPermissionDenied;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    .prologue
    .line 500
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Landroid/app/Activity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    .prologue
    .line 69
    .line 4453
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lflw;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 4454
    invoke-static {v2}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4455
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d()V

    .line 4456
    if-eqz p2, :cond_0

    .line 4457
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {p2, v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;->a(I)V

    .line 4459
    :cond_0
    :goto_1
    return-void

    .line 4457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4462
    :cond_2
    new-instance v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    .line 4486
    if-eqz p1, :cond_3

    .line 4487
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    invoke-interface {v0, v1, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4491
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static b()V
    .locals 0
    .annotation build Lcom/alibaba/android/dingtalk/permission/annotation/OnNeverAskAgain;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    .prologue
    .line 508
    return-void
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v1, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "local_contact_count"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string/jumbo v2, "connection"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    new-instance v3, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V

    invoke-interface {v2, v0, v3}, Lhlm;->a(Ljava/util/Map;Lhlk;)V

    .line 351
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c()V

    return-void
.end method

.method private d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 432
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 433
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 437
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrz;

    .line 439
    .local v1, "profileObject":Lfrz;
    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lfrz;->h:Z

    if-eqz v3, :cond_3

    .line 440
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_2

    .line 447
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v1    # "profileObject":Lfrz;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 448
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 370
    .line 4376
    const-string/jumbo v0, "MyConnectionsActivity"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    invoke-direct {v1, p0, p0, p1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Landroid/app/Activity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string/jumbo v0, "Mai_My"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string/jumbo v0, "a2o5v.12302843"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget v3, Lezg$j;->activity_connection_my_connections:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->setContentView(I)V

    .line 1297
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->dt_user_connection_my_connection:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1298
    sget v3, Lezg$h;->container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->f:Landroid/widget/FrameLayout;

    .line 1305
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a:Ljava/lang/String;

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "page"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->b:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "appId"

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->b:Ljava/lang/String;

    .line 140
    .local v2, "page":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    .line 141
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    invoke-interface {v3}, Lhlm;->b()Z

    move-result v1

    .line 143
    .local v1, "enableLaunch":Z
    if-eqz v1, :cond_3

    .line 144
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    invoke-interface {v3, v2}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    .line 145
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->f:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v4}, Lhlp;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v3}, Lhlp;->b()V

    .line 148
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c()V

    .line 174
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "enableLaunch":Z
    .end local v2    # "page":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 150
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "enableLaunch":Z
    .restart local v2    # "page":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "MyConnectionsActivity"

    const-string/jumbo v4, "async init instance fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c:Lhlm;

    new-instance v4, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V

    invoke-interface {v3, v2, v4}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 178
    .line 2193
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v6, v9, [I

    sget v7, Lezg$d;->ui_common_base_ui_attr_toolbarForegroundColor:I

    aput v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2194
    if-eqz v6, :cond_1

    .line 2195
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 2196
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    :goto_0
    new-instance v3, Lecw;

    sget v6, Lezg$l;->icon_search:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 2200
    sget v4, Lezg$f;->dp24:I

    invoke-static {v4}, Leda;->d(I)I

    move-result v4

    .line 3070
    iput v4, v3, Lecw;->a:I

    .line 2201
    sget v4, Lezg$f;->dp24:I

    invoke-static {v4}, Leda;->d(I)I

    move-result v4

    .line 3079
    iput v4, v3, Lecw;->b:I

    .line 179
    .local v3, "optionsSearchIcon":Lecw;
    sget v4, Lezg$l;->global_search:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v8, v9, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 180
    .local v1, "menuItemShare":Landroid/view/MenuItem;
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 181
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3208
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v6, v9, [I

    sget v7, Lezg$d;->ui_common_base_ui_attr_toolbarForegroundColor:I

    aput v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3209
    if-eqz v4, :cond_0

    .line 3210
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3211
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3214
    :cond_0
    new-instance v2, Lecw;

    sget v4, Lezg$l;->icon_add:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 3215
    sget v4, Lezg$f;->dp24:I

    invoke-static {v4}, Leda;->d(I)I

    move-result v4

    .line 4070
    iput v4, v2, Lecw;->a:I

    .line 3216
    sget v4, Lezg$f;->dp24:I

    invoke-static {v4}, Leda;->d(I)I

    move-result v4

    .line 4079
    iput v4, v2, Lecw;->b:I

    .line 184
    .local v2, "optionsAddIcon":Lecw;
    sget v4, Lezg$l;->dt_robot_add_robot_to_group:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v8, v8, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    .local v0, "menuItemHistory":Landroid/view/MenuItem;
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4

    .end local v0    # "menuItemHistory":Landroid/view/MenuItem;
    .end local v1    # "menuItemShare":Landroid/view/MenuItem;
    .end local v2    # "optionsAddIcon":Lecw;
    .end local v3    # "optionsSearchIcon":Lecw;
    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v0}, Lhlp;->g()V

    .line 291
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 238
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 225
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->finish()V

    goto :goto_0

    .line 228
    :sswitch_1
    const-string/jumbo v0, "type=newFace"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "queryParams":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    const-string/jumbo v2, "2018111662233068"

    const-string/jumbo v4, "pages/search/search"

    const-string/jumbo v5, "push"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v3    # "queryParams":Ljava/lang/String;
    :sswitch_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_friend"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v0}, Lhlp;->e()V

    .line 274
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 512
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 513
    invoke-static {p0, p1, p3}, Lfsj;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;I[I)V

    .line 514
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v0}, Lhlp;->d()V

    .line 266
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e:Z

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v0}, Lhlp;->c()V

    .line 248
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e:Z

    .line 279
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d:Lhlp;

    invoke-interface {v0}, Lhlp;->f()V

    .line 283
    :cond_0
    return-void
.end method
