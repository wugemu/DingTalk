.class public Lcom/alibaba/alimei/sdk/lookup/MailContactService;
.super Landroid/app/Service;
.source "MailContactService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;,
        Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

.field private c:Lajd;

.field private d:Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

.field private e:Landroid/os/HandlerThread;

.field private f:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->d:Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    .line 54
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)J
    .locals 4
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 41
    .line 3282
    const-string/jumbo v0, "MailContactsLookup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3283
    const-string/jumbo v1, "lastIndex"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/lookup/MailContactService;)Lajd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;J)V
    .locals 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 41
    .line 4287
    const-string/jumbo v0, "MailContactsLookup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4288
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastIndex"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method

.method static synthetic a(Ljava/util/HashMap;)V
    .locals 4
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 41
    .line 2296
    if-nez p0, :cond_1

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2299
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAllAccount()Ljava/util/List;

    move-result-object v0

    .line 2300
    if-nez v0, :cond_2

    .line 2302
    const-string/jumbo v0, "query account is null"

    invoke-static {v0}, Lzb;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 2307
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 2308
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 41
    .line 4274
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4275
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4277
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v0

    .line 4278
    invoke-interface {v0, p0}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->insertLookUp(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 320
    const-string/jumbo v0, "MailContactService onCreate"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    .line 326
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    .line 327
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 329
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->d:Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v5}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;-><init>(Landroid/content/Context;Ljava/util/HashMap;B)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->d:Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lajd;

    sget-object v1, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->d:Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lajd;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    if-nez v0, :cond_3

    .line 337
    new-instance v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    invoke-direct {v0, p0, v5}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;-><init>(Lcom/alibaba/alimei/sdk/lookup/MailContactService;B)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    .line 338
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 340
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 352
    const-string/jumbo v0, "MailContactService onCreate"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    if-eqz v0, :cond_0

    .line 1358
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->unregisterContentObserver(Ljava/lang/Class;Lxm;)V

    .line 1359
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->b:Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    .line 2104
    iget-object v1, v0, Lajd;->f:Lajd$a;

    if-eqz v1, :cond_1

    .line 2106
    iget-object v1, v0, Lajd;->f:Lajd$a;

    invoke-virtual {v1}, Lajd$a;->cancel()Z

    .line 2107
    iput-object v3, v0, Lajd;->f:Lajd$a;

    .line 1364
    :cond_1
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->c:Lajd;

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1369
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->e:Landroid/os/HandlerThread;

    .line 1372
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 1373
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1374
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->f:Ljava/util/HashMap;

    .line 354
    :cond_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 345
    const-string/jumbo v0, "MailContactService onStartCommand"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x1

    return v0
.end method
