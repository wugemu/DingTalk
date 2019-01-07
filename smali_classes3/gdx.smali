.class public final Lgdx;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"


# instance fields
.field final a:Lgdw;

.field final b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:Lgoi;


# direct methods
.method constructor <init>(Lgdw;Landroid/content/Context;)V
    .locals 8
    .param p1, "presenter"    # Lgdw;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lgdx;->a:Lgdw;

    .line 69
    iput-object p2, p0, Lgdx;->b:Landroid/content/Context;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "currentTime":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "DentryListUploadUseCase"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_pickImage_"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgdx;->c:Ljava/lang/String;

    .line 73
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "DentryListUploadUseCase"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_pickFile_"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgdx;->d:Ljava/lang/String;

    .line 74
    return-void
.end method

.method static synthetic a(Lgdx;)Lgoi;
    .locals 1
    .param p0, "x0"    # Lgdx;

    .prologue
    .line 55
    .line 2255
    iget-object v0, p0, Lgdx;->e:Lgoi;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lgdx;->e:Lgoi;

    :goto_0
    return-object v0

    .line 2258
    :cond_0
    new-instance v0, Lgdx$10;

    invoke-direct {v0, p0}, Lgdx$10;-><init>(Lgdx;)V

    iput-object v0, p0, Lgdx;->e:Lgoi;

    .line 2278
    iget-object v0, p0, Lgdx;->e:Lgoi;

    goto :goto_0
.end method

.method private a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 397
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lgdx;->b:Landroid/content/Context;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgdx;->b:Landroid/content/Context;

    invoke-static {v1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 424
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lgdx;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->dt_cspace_upload_network_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 405
    sget v1, Lfzs$h;->dt_cspace_upload_network_ok:I

    new-instance v2, Lgdx$3;

    invoke-direct {v2, p0, p1}, Lgdx$3;-><init>(Lgdx;Lcma;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 414
    sget v1, Lfzs$h;->cancel:I

    new-instance v2, Lgdx$4;

    invoke-direct {v2, p0, p1}, Lgdx$4;-><init>(Lgdx;Lcma;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lgdx;I)V
    .locals 3
    .param p0, "x0"    # Lgdx;
    .param p1, "x1"    # I

    .prologue
    .line 55
    .line 1385
    iget-object v0, p0, Lgdx;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdx;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1386
    :goto_0
    iget-object v1, p0, Lgdx;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->w()I

    move-result v1

    invoke-static {v0, v1}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1390
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1391
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    const-string/jumbo v0, "num"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "space_upload_success_click"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    :cond_0
    return-void

    .line 1385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lgdx;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Z

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lgdx;->a(Ljava/util/ArrayList;ZLjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lgdx;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lgdx;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 55
    .line 2368
    iget-object v0, p0, Lgdx;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->C()Lged$a;

    move-result-object v0

    .line 2369
    if-eqz v0, :cond_0

    .line 2372
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2373
    invoke-interface {v0, p1}, Lged$a;->a(Ljava/util/List;)V

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgdx$2;

    invoke-direct {v2, p0, v0, p1}, Lgdx$2;-><init>(Lgdx;Lged$a;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lgdx;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Lgdx;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    .line 3345
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3346
    :cond_0
    :goto_0
    return-void

    .line 3349
    :cond_1
    new-instance v0, Lgdx$12;

    invoke-direct {v0, p0, p1}, Lgdx$12;-><init>(Lgdx;Ljava/util/List;)V

    .line 3363
    const-class v1, Lxv;

    iget-object v2, p0, Lgdx;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 3364
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateConflictType(Ljava/util/List;ZLxv;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "isNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v0, Lgdx$8;

    invoke-direct {v0, p0, p1, p2}, Lgdx$8;-><init>(Lgdx;Ljava/util/ArrayList;Z)V

    invoke-direct {p0, v0}, Lgdx;->a(Lcma;)V

    goto :goto_0
.end method

.method a(Ljava/util/ArrayList;ZLjava/util/List;Z)V
    .locals 6
    .param p2, "isOrigin"    # Z
    .param p4, "isNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 212
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "realUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    new-instance v0, Lgdx$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lgdx$9;-><init>(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;Z)V

    invoke-direct {p0, v0}, Lgdx;->a(Lcma;)V

    goto :goto_0
.end method
