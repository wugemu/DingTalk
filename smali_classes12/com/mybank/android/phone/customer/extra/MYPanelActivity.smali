.class public Lcom/mybank/android/phone/customer/extra/MYPanelActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MYPanelActivity.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/LinearLayout;

.field private m:Ljfs;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->c:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->g:I

    .line 48
    iput v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->h:I

    .line 50
    iput v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->i:I

    .line 52
    iput-boolean v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->j:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->k:Ljava/util/ArrayList;

    .line 54
    iput-object v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    .line 55
    iput-object v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->m:Ljfs;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 351
    .line 2345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2346
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2347
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v0, p1, v1

    .line 352
    .local v0, "m":F
    float-to-int v1, v0

    return v1
.end method

.method static synthetic a(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    .line 3243
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 3244
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 3245
    invoke-virtual {v0}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3246
    if-eqz v1, :cond_0

    const-string/jumbo v3, "server.type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3247
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->g:I

    .line 3249
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v3, "webview.type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3250
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->h:I

    .line 3252
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v3, "allow.urls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3253
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->i:I

    .line 3243
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 33
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    .line 3374
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3375
    const-string/jumbo v1, "com.mybank.android.phone.config"

    const-string/jumbo v2, "server_type"

    invoke-static {p0, v1, v2, v0}, Ljfv;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3377
    const-string/jumbo v1, "0"

    .line 3378
    const-string/jumbo v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3379
    const-string/jumbo v0, "1"

    .line 3381
    :goto_0
    const-string/jumbo v1, ""

    .line 3382
    iget v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3383
    const-string/jumbo v1, "1"

    .line 3385
    :cond_0
    const-string/jumbo v2, "com.mybank.android.phone.config"

    const-string/jumbo v3, "disable_uc"

    invoke-static {p0, v2, v3, v0}, Ljfv;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const-string/jumbo v0, "com.mybank.android.phone.config"

    const-string/jumbo v2, "allow_all"

    invoke-static {p0, v0, v2, v1}, Ljfv;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    .line 4240
    invoke-virtual {p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->finish()V

    .line 33
    return-void
.end method

.method static synthetic d(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    .line 4356
    invoke-virtual {p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Ljez;->a()V

    .line 4357
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->m:Ljfs;

    const-string/jumbo v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Ljfs;->a(Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$4;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$4;-><init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method

.method static synthetic e(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)Ljfs;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->m:Ljfs;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    iput-object p0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a:Landroid/content/Context;

    .line 1285
    :cond_0
    invoke-static {p0}, Ljev;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->j:Z

    .line 1290
    :cond_1
    iget-boolean v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->j:Z

    if-eqz v0, :cond_4

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    .line 1293
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "online-server"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "pre-server"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "sit-server"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "stable-server"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    const-string/jumbo v1, "dev-server"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->e:Ljava/util/ArrayList;

    .line 1300
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->e:Ljava/util/ArrayList;

    const-string/jumbo v1, "uc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->e:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->f:Ljava/util/ArrayList;

    .line 1304
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->f:Ljava/util/ArrayList;

    const-string/jumbo v1, "limited"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->f:Ljava/util/ArrayList;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    const-string/jumbo v0, "com.mybank.android.phone.config"

    const-string/jumbo v1, "server_type"

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Ljfv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MYPanelActivity initData serverType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1316
    iget-object v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1317
    iput v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->g:I

    .line 1321
    :cond_2
    const-class v0, Lcom/mybank/android/phone/common/service/api/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/ConfigService;

    .line 1322
    if-eqz v0, :cond_4

    .line 1323
    const-string/jumbo v1, "disable_uc"

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1325
    const/4 v1, 0x1

    iput v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->h:I

    .line 1327
    :cond_3
    const-string/jumbo v1, "allow_all"

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1329
    const/4 v0, 0x1

    iput v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->i:I

    .line 1409
    :cond_4
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->b:Ljava/lang/String;

    .line 1336
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1337
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->b:Ljava/lang/String;

    goto :goto_1

    .line 1315
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 72
    :cond_6
    iget-object v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a:Landroid/content/Context;

    .line 2076
    new-instance v2, Ljfs;

    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Ljfs;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->m:Ljfs;

    .line 2077
    invoke-virtual {p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->getWindow()Landroid/view/Window;

    .line 2092
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    .line 2093
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2094
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2095
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v2

    .line 2096
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2098
    iget-object v4, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2099
    iget-object v4, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2108
    iget-boolean v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->j:Z

    if-eqz v0, :cond_8

    .line 2109
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "server.type"

    iget-object v5, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->d:Ljava/util/ArrayList;

    iget v6, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->g:I

    .line 2259
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 2260
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v8

    .line 2261
    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v7, v9}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v9

    .line 2262
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2263
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2264
    new-instance v11, Landroid/widget/Spinner;

    invoke-direct {v11, v7}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 2265
    new-instance v12, Landroid/widget/ArrayAdapter;

    iget-object v13, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a:Landroid/content/Context;

    const v14, 0x1090008

    invoke-direct {v12, v13, v14, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2266
    const v5, 0x1090009

    invoke-virtual {v12, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2267
    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2268
    const/4 v5, 0x1

    invoke-virtual {v11, v6, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 2270
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2271
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2272
    const/4 v6, 0x0

    int-to-float v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2273
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2274
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ]    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2275
    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-virtual {v10, v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2276
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-virtual {v10, v11, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2277
    mul-int/lit8 v5, v9, 0x2

    mul-int/lit8 v6, v9, 0x2

    invoke-virtual {v10, v5, v9, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2278
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v0, v10, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2279
    invoke-virtual {v11, v4}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 2280
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    invoke-static {p0}, Ljev;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2113
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2114
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2115
    const/4 v4, 0x0

    int-to-float v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2116
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2117
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2118
    const-string/jumbo v4, "[ accout.test ]    >>"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2119
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2120
    iget-object v4, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2121
    new-instance v4, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$1;

    invoke-direct {v4, p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$1;-><init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    :cond_7
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2164
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2165
    const/4 v4, 0x0

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2166
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2167
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2168
    const-string/jumbo v3, "[ exit.app ]    \u70b9\u51fb\u5219\u9000\u51faApp"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2169
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2170
    iget-object v3, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2171
    new-instance v3, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$2;

    invoke-direct {v3, p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$2;-><init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2183
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2184
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2185
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2186
    iget-object v4, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    :cond_8
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2209
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2210
    const/4 v3, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v1, v4}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2211
    const-string/jumbo v3, "\u786e\u5b9a"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2212
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2213
    const-string/jumbo v3, "#00a2ac"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2214
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2215
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2216
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2217
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2219
    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v1, v3}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2220
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2221
    const/4 v1, 0x1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2222
    iget-object v1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    new-instance v1, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;-><init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
