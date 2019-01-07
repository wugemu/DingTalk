.class public final Lger;
.super Lgeu;
.source "SpaceCreateFilePresenter.java"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$1;-><init>()V

    sput-object v0, Lger;->c:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;-><init>()V

    sput-object v0, Lger;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;)V
    .locals 2
    .param p1, "view"    # Lget$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lgeu;-><init>(Lget$b;Landroid/content/Context;)V

    .line 69
    invoke-static {p3}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    move-result-object p3

    .line 70
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fileTypeId:Ljava/lang/String;

    iput-object v0, p0, Lger;->e:Ljava/lang/String;

    .line 71
    iget v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceType:I

    iput v0, p0, Lger;->g:I

    .line 72
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lger;->f:Ljava/lang/String;

    .line 73
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentId:Ljava/lang/String;

    iput-object v0, p0, Lger;->h:Ljava/lang/String;

    .line 74
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentPath:Ljava/lang/String;

    iput-object v0, p0, Lger;->i:Ljava/lang/String;

    .line 75
    iget-wide v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->orgId:J

    iput-wide v0, p0, Lger;->j:J

    .line 76
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->convId:Ljava/lang/String;

    iput-object v0, p0, Lger;->k:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic a(Lger;)Lcma;
    .locals 1
    .param p0, "x0"    # Lger;

    .prologue
    .line 35
    invoke-direct {p0}, Lger;->c()Lcma;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lger;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p0, "x0"    # Lger;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 35
    .line 9276
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.create"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9277
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9278
    iget-object v1, p0, Lger;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 35
    return-void
.end method

.method static synthetic a(Lger;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 35
    .line 7185
    iget-object v0, p0, Lger;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7186
    iget-object v0, p0, Lger;->i:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    iget-object v2, p0, Lger;->i:Ljava/lang/String;

    aput-object v2, v0, v6

    iget-object v2, p0, Lger;->m:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 7187
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 7190
    :goto_1
    new-instance v0, Lger$2;

    invoke-direct {v0, p0}, Lger$2;-><init>(Lger;)V

    .line 7210
    const-class v2, Lcma;

    iget-object v4, p0, Lger;->a:Lget$b;

    invoke-interface {v4}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 7211
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v8

    iget-object v0, p0, Lger;->f:Ljava/lang/String;

    iget-object v10, p0, Lger;->h:Ljava/lang/String;

    iget-object v11, p0, Lger;->m:Ljava/lang/String;

    move-object v2, v1

    move-object v4, p1

    move-object v5, v1

    move v7, v6

    .line 7706
    invoke-static/range {v0 .. v7}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lggv;

    move-result-object v7

    .line 8336
    if-nez v1, :cond_2

    move-object v2, v1

    .line 7707
    :goto_2
    iput-object v2, v7, Lggv;->j:Lghf;

    .line 7708
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7709
    iput-object v10, v7, Lggv;->d:Ljava/lang/String;

    .line 7710
    iput-object v11, v7, Lggv;->e:Ljava/lang/String;

    .line 7712
    :cond_0
    const-wide/16 v4, 0x0

    move-object v3, v8

    move-object v6, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lgon;->a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V

    .line 35
    return-void

    .line 7187
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lger;->i:Ljava/lang/String;

    aput-object v2, v0, v6

    const-string/jumbo v2, "/"

    aput-object v2, v0, v3

    iget-object v2, p0, Lger;->m:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 7188
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8339
    :cond_2
    new-instance v2, Lghf;

    invoke-direct {v2}, Lghf;-><init>()V

    .line 9024
    iget-object v3, v1, Ltj;->a:Ljava/lang/String;

    .line 8340
    iput-object v3, v2, Lghf;->a:Ljava/lang/String;

    .line 9032
    iget-object v3, v1, Ltj;->b:Ljava/lang/String;

    .line 8341
    iput-object v3, v2, Lghf;->b:Ljava/lang/String;

    .line 9040
    iget-object v3, v1, Ltj;->c:Ljava/lang/String;

    .line 8342
    iput-object v3, v2, Lghf;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method static synthetic b(Lger;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 8
    .param p0, "x0"    # Lger;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v5, 0x1

    .line 35
    .line 9282
    if-nez p1, :cond_0

    .line 9283
    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 9284
    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    .line 9316
    :goto_0
    return-void

    .line 9288
    :cond_0
    new-instance v0, Lger$4;

    invoke-direct {v0, p0}, Lger$4;-><init>(Lger;)V

    .line 9313
    const-class v1, Lcma;

    iget-object v2, p0, Lger;->a:Lget$b;

    invoke-interface {v2}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 9315
    iget-boolean v0, p0, Lger;->n:Z

    if-eqz v0, :cond_1

    .line 9316
    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    .line 9317
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    move v6, v5

    .line 9316
    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V

    goto :goto_0

    .line 9319
    :cond_1
    new-instance v4, Lgrb;

    invoke-direct {v4}, Lgrb;-><init>()V

    .line 9320
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lgrb;->a:Ljava/lang/String;

    .line 9321
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lgrb;->b:Ljava/lang/String;

    .line 9322
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lger;->g:I

    invoke-static {v0, v1}, Lgqu;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lgrb;->j:I

    .line 9323
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lgrb;->i:Ljava/lang/String;

    .line 9324
    iget-object v0, p0, Lger;->k:Ljava/lang/String;

    iput-object v0, v4, Lgrb;->c:Ljava/lang/String;

    .line 9325
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iput-wide v0, v4, Lgrb;->h:J

    .line 9326
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, v4, Lgrb;->f:J

    .line 9327
    invoke-static {}, Lgfg;->a()Lgfg;

    move-result-object v2

    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v3

    iget-wide v5, p0, Lger;->j:J

    invoke-virtual/range {v2 .. v7}, Lgfg;->a(Landroid/app/Activity;Lgrb;JLcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lger;)Z
    .locals 1
    .param p0, "x0"    # Lger;

    .prologue
    .line 35
    iget-boolean v0, p0, Lger;->n:Z

    return v0
.end method

.method private c()Lcma;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 217
    new-instance v0, Lger$3;

    invoke-direct {v0, p0}, Lger$3;-><init>(Lger;)V

    .line 271
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lger;->a:Lget$b;

    invoke-interface {v3}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v0, Lcma;

    .line 272
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    iget-object v2, p0, Lger;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lger;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lger;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lger;->e:Ljava/lang/String;

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lger;->c:Ljava/util/Map;

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    .line 83
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lger;->d:Ljava/util/Map;

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    :cond_1
    invoke-virtual {p0}, Lger;->b()V

    .line 107
    :goto_0
    return-void

    .line 87
    :cond_2
    sget-object v2, Lger;->c:Ljava/util/Map;

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 88
    .local v1, "fileTypeNameResId":I
    if-gtz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lger;->b()V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v2, p0, Lger;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "fileTypeName":Ljava/lang/String;
    sget-object v2, Lger;->d:Ljava/util/Map;

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lger;->l:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lger;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    invoke-virtual {p0}, Lger;->b()V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v2, p0, Lger;->a:Lget$b;

    iget-object v5, p0, Lger;->b:Landroid/content/Context;

    sget v6, Lfzs$h;->dt_cspace_create_file_title:I

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 99
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lget$b;->a(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lger;->a:Lget$b;

    iget-object v5, p0, Lger;->b:Landroid/content/Context;

    sget v6, Lfzs$h;->dt_cspace_create_file_hint:I

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 101
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lget$b;->c(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lger;->a:Lget$b;

    iget-object v5, p0, Lger;->b:Landroid/content/Context;

    sget v6, Lfzs$h;->dt_cspace_finish:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lget$b;->d(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "100"

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "101"

    iget-object v5, p0, Lger;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lger;->n:Z

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 112
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new_confirm"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_empty_name_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 6254
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lger;->b:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->network_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->b()V

    .line 124
    iget-object v0, p0, Lger;->a:Lget$b;

    invoke-interface {v0, v12}, Lget$b;->a(Z)V

    .line 126
    iget-boolean v0, p0, Lger;->n:Z

    if-eqz v0, :cond_5

    .line 127
    iput-object p1, p0, Lger;->m:Ljava/lang/String;

    .line 4138
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lger;->f:Ljava/lang/String;

    iget-object v4, p0, Lger;->h:Ljava/lang/String;

    iget-object v5, p0, Lger;->m:Ljava/lang/String;

    iget-object v6, p0, Lger;->e:Ljava/lang/String;

    .line 4139
    invoke-direct {p0}, Lger;->c()Lcma;

    move-result-object v3

    .line 4302
    if-eqz v3, :cond_0

    .line 4306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5109
    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 4306
    cmp-long v0, v8, v10

    if-lez v0, :cond_3

    .line 4307
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4308
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4309
    :cond_3
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "createDentryByTemplate: param is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    const-string/jumbo v0, "null param"

    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 4312
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 4311
    invoke-static {v0, v1, v3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 4316
    :cond_4
    new-instance v8, Lghj;

    invoke-direct {v8}, Lghj;-><init>()V

    .line 6109
    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 4317
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lghj;->c:Ljava/lang/Long;

    .line 4318
    iput-object v4, v8, Lghj;->d:Ljava/lang/String;

    .line 4319
    iput-object v5, v8, Lghj;->e:Ljava/lang/String;

    .line 4320
    iput-object v6, v8, Lghj;->b:Ljava/lang/String;

    .line 4321
    iput-object v7, v8, Lghj;->a:Ljava/lang/String;

    .line 4322
    new-instance v0, Lgha;

    invoke-direct {v0}, Lgha;-><init>()V

    iput-object v0, v8, Lghj;->f:Lgha;

    .line 4323
    iget-object v0, v8, Lghj;->f:Lgha;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v0, Lgha;->a:Ljava/lang/Integer;

    .line 4325
    iget-object v9, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$63;

    invoke-direct/range {v0 .. v7}, Lgon$63;-><init>(Lgon;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v8, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->createDentryByTemplate(Lghj;Liyv;)V

    goto/16 :goto_0

    .line 130
    :cond_5
    iget-object v0, p0, Lger;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v12

    const/4 v1, 0x1

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lger;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lger;->m:Ljava/lang/String;

    .line 6143
    :cond_6
    new-instance v0, Lger$1;

    invoke-direct {v0, p0}, Lger$1;-><init>(Lger;)V

    .line 6179
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lger;->a:Lget$b;

    invoke-interface {v3}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6180
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lger;->e:Ljava/lang/String;

    .line 6241
    if-eqz v0, :cond_0

    .line 6244
    iget-object v3, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v3, :cond_7

    .line 6245
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "getDentryTemplate: mCSpaceService is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6247
    const-string/jumbo v1, "SERVICE_NULL"

    const-string/jumbo v2, "mCSpaceService is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6250
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6251
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "getDentryTemplate: templateType is null or empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    const-string/jumbo v1, "INVALID_PARAM"

    const-string/jumbo v2, "templateType is null or empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6256
    :cond_8
    new-instance v3, Lghj;

    invoke-direct {v3}, Lghj;-><init>()V

    .line 6257
    iput-object v2, v3, Lghj;->b:Ljava/lang/String;

    .line 6258
    iget-object v2, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v4, Lgon$61;

    invoke-direct {v4, v1, v0}, Lgon$61;-><init>(Lgon;Lcma;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getDentryTemplate(Lghj;Liyv;)V

    goto/16 :goto_0
.end method
