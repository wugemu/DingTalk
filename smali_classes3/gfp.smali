.class public final Lgfp;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lgfn$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgnu;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgnu;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field h:Lgnu;

.field i:Lgnv;

.field j:I

.field k:Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

.field l:Lgfn$b;

.field private final m:Ljava/lang/String;

.field private n:I

.field private o:J

.field private p:Ljava/lang/String;

.field private q:J

.field private final r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;Lgfn$b;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "view"    # Lgfn$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x3e9

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v0, "PermissionSettingPresenter"

    iput-object v0, p0, Lgfp;->m:Ljava/lang/String;

    .line 78
    iput-wide v2, p0, Lgfp;->q:J

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfp;->d:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfp;->e:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfp;->f:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfp;->g:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lgfp;->j:I

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgfp;->r:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lgfp;->a:Landroid/app/Activity;

    .line 102
    iget v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    iput v0, p0, Lgfp;->n:I

    .line 103
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lgfp;->b:Ljava/lang/String;

    .line 104
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    iput-object v0, p0, Lgfp;->c:Ljava/lang/String;

    .line 105
    iget-wide v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    iput-wide v0, p0, Lgfp;->o:J

    .line 106
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    iput-object v0, p0, Lgfp;->p:Ljava/lang/String;

    .line 112
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-wide/16 v0, 0x3ea

    iput-wide v0, p0, Lgfp;->q:J

    .line 120
    :goto_0
    invoke-static {p3}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfn$b;

    iput-object v0, p0, Lgfp;->l:Lgfn$b;

    .line 121
    invoke-interface {p3, p0}, Lgfn$b;->setPresenter(Lcjd;)V

    .line 122
    return-void

    .line 114
    :cond_0
    iget v0, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    iget-object v1, p2, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-wide/16 v0, 0x3eb

    iput-wide v0, p0, Lgfp;->q:J

    goto :goto_0

    .line 117
    :cond_1
    iput-wide v2, p0, Lgfp;->q:J

    goto :goto_0
.end method

.method static synthetic a(Lgfp;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lgfp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    .line 24822
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 24834
    :cond_0
    :goto_0
    return-void

    .line 24826
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 24827
    if-eqz v0, :cond_2

    .line 25195
    iget-object v2, v0, Lgnu;->a:Ljava/lang/String;

    .line 24827
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 25227
    iget v2, v0, Lgnu;->e:I

    .line 24831
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 24832
    iput-object v0, p0, Lgfp;->h:Lgnu;

    .line 24833
    iget-object v0, p0, Lgfp;->l:Lgfn$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgfn$b;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lgfp;Z)V
    .locals 1
    .param p0, "x0"    # Lgfp;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    .line 23965
    if-eqz p1, :cond_0

    .line 23966
    sget v0, Lfzs$h;->dt_space_permission_setting_external_hint:I

    invoke-static {v0}, Lcms;->a(I)V

    :goto_0
    return-void

    .line 23968
    :cond_0
    sget v0, Lfzs$h;->dt_space_add_share_member_success_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;IJZ)V
    .locals 15
    .param p2, "memberType"    # I
    .param p3, "aclType"    # J
    .param p5, "hasExternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJZ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v4, "finalAddMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "currentMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lgfp;->r:Ljava/lang/Object;

    monitor-enter v5

    .line 277
    :try_start_0
    iget-object v3, p0, Lgfp;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu;

    .line 278
    .local v14, "memberModel":Lgnu;
    if-eqz v14, :cond_1

    .line 7227
    iget v8, v14, Lgnu;->e:I

    .line 278
    move/from16 v0, p2

    if-ne v8, v0, :cond_1

    .line 8195
    iget-object v8, v14, Lgnu;->a:Ljava/lang/String;

    .line 282
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    .end local v14    # "memberModel":Lgnu;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 287
    .local v13, "id":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 291
    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 295
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    .end local v13    # "id":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 299
    iget-object v3, p0, Lgfp;->l:Lgfn$b;

    const-string/jumbo v5, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lfzs$h;->dt_cspace_acl_add_member_already:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Lgfn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v3, p0, Lgfp;->g:Ljava/util/Map;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 9044
    const-wide/16 v8, 0x0

    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 304
    .local v6, "groupId":J
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_7

    .line 9340
    new-instance v12, Lgfp$6;

    move/from16 v0, p5

    invoke-direct {v12, p0, v0}, Lgfp$6;-><init>(Lgfp;Z)V

    .line 9361
    iget-object v3, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 9362
    const-class v3, Lcma;

    iget-object v5, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v12, v3, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    move-object v12, v3

    .line 9365
    :cond_6
    iget-object v3, p0, Lgfp;->l:Lgfn$b;

    sget v5, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v3, v5}, Lgfn$b;->b(I)V

    .line 9366
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    iget-object v4, p0, Lgfp;->b:Ljava/lang/String;

    .end local v4    # "finalAddMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lgfp;->c:Ljava/lang/String;

    iget-wide v10, p0, Lgfp;->o:J

    move-wide/from16 v6, p3

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v3 .. v12}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V

    goto/16 :goto_0

    .line 309
    .restart local v4    # "finalAddMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    new-instance v10, Lgfp$5;

    move/from16 v0, p5

    invoke-direct {v10, p0, v0}, Lgfp$5;-><init>(Lgfp;Z)V

    .line 330
    .local v10, "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    iget-object v3, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v3, :cond_8

    .line 331
    const-class v3, Lcma;

    iget-object v5, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v10, v3, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v10, Lcma;

    .line 334
    .restart local v10    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_8
    iget-object v3, p0, Lgfp;->l:Lgfn$b;

    sget v5, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v3, v5}, Lgfn$b;->b(I)V

    .line 335
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    iget-wide v8, p0, Lgfp;->o:J

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v10}, Lgon;->a(Ljava/util/List;IJJLcma;)V

    goto/16 :goto_0
.end method

.method private k()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v0, "depts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v5, p0, Lgfp;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 800
    .local v1, "memberModel":Lgnu;
    if-eqz v1, :cond_0

    .line 22195
    iget-object v6, v1, Lgnu;->a:Ljava/lang/String;

    .line 23109
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 806
    .local v2, "memberId":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    .line 23227
    iget v6, v1, Lgnu;->e:I

    .line 810
    if-nez v6, :cond_0

    .line 811
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 812
    .local v4, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 813
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    .end local v1    # "memberModel":Lgnu;
    .end local v2    # "memberId":J
    .end local v4    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 127
    new-instance v0, Lgfp$1;

    invoke-direct {v0, p0}, Lgfp$1;-><init>(Lgfp;)V

    .line 150
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lgnv;>;>;"
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 151
    const-class v1, Lcma;

    iget-object v2, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lgnv;>;>;"
    check-cast v0, Lcma;

    .line 154
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lgnv;>;>;"
    :cond_0
    iget-object v1, p0, Lgfp;->l:Lgfn$b;

    sget v2, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v1, v2}, Lgfn$b;->b(I)V

    .line 155
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lgfp;->c:Ljava/lang/String;

    .line 4924
    if-eqz v0, :cond_2

    .line 4928
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4929
    :cond_1
    const-string/jumbo v1, "20170720"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 4930
    :cond_2
    :goto_0
    return-void

    .line 4933
    :cond_3
    new-instance v4, Lgon$25;

    invoke-direct {v4, v1, v0}, Lgon$25;-><init>(Lgon;Lcma;)V

    .line 4968
    new-instance v5, Lgku;

    invoke-direct {v5}, Lgku;-><init>()V

    .line 5109
    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4969
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgku;->a:Ljava/lang/Long;

    .line 6109
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4970
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgku;->b:Ljava/lang/Long;

    .line 4971
    iget-object v1, v1, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v1, v5, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->listAclV2(Lgku;Liyv;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "scope"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 757
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lgfp;->o:J

    iget-object v0, p0, Lgfp;->l:Lgfn$b;

    .line 758
    invoke-interface {v0}, Lgfn$b;->f()Ljava/lang/String;

    move-result-object v6

    .line 16765
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16767
    iget-object v0, p0, Lgfp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 16768
    if-eqz v0, :cond_0

    .line 17195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 18109
    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 16774
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 18227
    iget v0, v0, Lgnu;->e:I

    .line 16778
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 16779
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 16780
    iput-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 16781
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_1
    invoke-direct {p0}, Lgfp;->k()Ljava/util/ArrayList;

    move-result-object v0

    .line 19042
    if-eqz v1, :cond_2

    .line 19046
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 19048
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 19049
    const/16 v4, 0x64

    .line 19050
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v5, Lfzs$h;->dt_add_participators_group:I

    invoke-virtual {v0, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 19049
    invoke-static/range {v1 .. v10}, Lfzu;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V

    .line 19093
    :cond_2
    :goto_1
    return-void

    .line 19051
    :cond_3
    if-eqz p2, :cond_4

    .line 19052
    const/16 v4, 0x64

    .line 19053
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v5, Lfzs$h;->dt_add_participators_group:I

    invoke-virtual {v0, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 19052
    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_1

    .line 19055
    :cond_4
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 19057
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    .line 19059
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 19060
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19061
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19062
    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19063
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lfzs$h;->dt_add_participators_members:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19064
    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19065
    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19066
    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19068
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19069
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 19070
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19071
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19072
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19073
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 20053
    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 19073
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto :goto_1

    .line 19074
    :cond_6
    if-eqz p2, :cond_7

    .line 19075
    invoke-virtual {v5, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19076
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 21053
    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 19076
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto :goto_1

    .line 19078
    :cond_7
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_1

    .line 19080
    :cond_8
    if-nez p1, :cond_2

    .line 19082
    const/4 v4, 0x1

    if-ne p2, v4, :cond_9

    .line 19083
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 19084
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19085
    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19086
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v7, Lfzs$h;->dt_add_participators_dept:I

    invoke-virtual {v5, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19087
    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19088
    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19089
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19090
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19091
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 19092
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 22053
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 19092
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto/16 :goto_1

    .line 19094
    :cond_9
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_1
.end method

.method public final a(JLgnu;)V
    .locals 9
    .param p1, "aclType"    # J
    .param p3, "aclMemberModel"    # Lgnu;

    .prologue
    .line 401
    if-eqz p3, :cond_0

    .line 10267
    iget-wide v0, p3, Lgnu;->j:J

    .line 401
    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    new-instance v7, Lgfp$8;

    invoke-direct {v7, p0}, Lgfp$8;-><init>(Lgfp;)V

    .line 421
    .local v7, "apiEventListener":Lcma;
    iget-object v0, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 422
    const-class v0, Lcma;

    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v7, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "apiEventListener":Lcma;
    check-cast v7, Lcma;

    .line 424
    .restart local v7    # "apiEventListener":Lcma;
    :cond_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v2, p0, Lgfp;->c:Ljava/lang/String;

    .line 11244
    invoke-static {p3}, Lgnu;->a(Lgnu;)Lgkl;

    move-result-object v3

    .line 11245
    new-instance v6, Lgon$32;

    invoke-direct {v6, v0, v7, p3}, Lgon$32;-><init>(Lgon;Lcma;Lgnu;)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;JLcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V
    .locals 1
    .param p1, "linkShareAclResultObject"    # Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .prologue
    .line 693
    if-eqz p1, :cond_0

    .line 694
    iput-object p1, p0, Lgfp;->k:Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .line 697
    :cond_0
    iget-object v0, p0, Lgfp;->l:Lgfn$b;

    invoke-interface {v0, p1}, Lgfn$b;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V

    .line 698
    return-void
.end method

.method public final a(Lgnu;)V
    .locals 6
    .param p1, "aclMemberModel"    # Lgnu;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 372
    if-nez p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    new-instance v0, Lgfp$7;

    invoke-direct {v0, p0}, Lgfp$7;-><init>(Lgfp;)V

    .line 392
    .local v0, "apiEventListener":Lcma;
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 393
    const-class v1, Lcma;

    iget-object v2, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 395
    .restart local v0    # "apiEventListener":Lcma;
    :cond_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lgfp;->c:Ljava/lang/String;

    .line 10166
    if-eqz v0, :cond_0

    .line 10169
    new-instance v4, Lgon$30;

    invoke-direct {v4, v1, v0, p1}, Lgon$30;-><init>(Lgon;Lcma;Lgnu;)V

    .line 10184
    invoke-static {p1}, Lgnu;->a(Lgnu;)Lgkl;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5, v4}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "acl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 658
    new-instance v0, Lgfp$3;

    invoke-direct {v0, p0}, Lgfp$3;-><init>(Lgfp;)V

    .line 683
    .local v0, "apiEventListener":Lcma;
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 684
    const-class v1, Lcma;

    iget-object v2, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 687
    .restart local v0    # "apiEventListener":Lcma;
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lgfp;->c:Ljava/lang/String;

    .line 14977
    if-eqz v0, :cond_2

    .line 14981
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14982
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgon$78;

    invoke-direct {v3, v1, v0}, Lgon$78;-><init>(Lgon;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 14988
    :cond_2
    :goto_0
    return-void

    .line 14991
    :cond_3
    new-instance v4, Lgjv;

    invoke-direct {v4}, Lgjv;-><init>()V

    .line 15109
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 14992
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lgjv;->a:Ljava/lang/Long;

    .line 14993
    iput-object v3, v4, Lgjv;->b:Ljava/lang/String;

    .line 14994
    iput-object p1, v4, Lgjv;->c:Ljava/lang/String;

    .line 14996
    new-instance v5, Lgon$79;

    invoke-direct {v5, v1, v0, v2, v3}, Lgon$79;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 15028
    iget-object v1, v1, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->setLinkShareAcl(Lgjv;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 161
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v6, 0x0

    .line 166
    .local v6, "hasExternal":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 168
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_2

    .line 172
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-wide v4, p0, Lgfp;->o:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    iget-wide v4, p0, Lgfp;->o:J

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 174
    const/4 v6, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    const/4 v3, 0x2

    iget-wide v4, p0, Lgfp;->q:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgfp;->a(Ljava/util/List;IJZ)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 430
    new-instance v6, Lgfp$9;

    invoke-direct {v6, p0}, Lgfp$9;-><init>(Lgfp;)V

    .line 461
    .local v6, "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    iget-object v0, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 462
    const-class v0, Lcma;

    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v6, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    check-cast v6, Lcma;

    .line 465
    .restart local v6    # "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lgfp;->b:Ljava/lang/String;

    .line 12109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 465
    iget-object v4, p0, Lgfp;->c:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lgon;->a(JLjava/lang/String;ZLcma;)V

    .line 466
    return-void
.end method

.method public final b(Ljava/lang/String;)Lgnu;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-object v0, p0, Lgfp;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    return-object v0
.end method

.method public final b()V
    .locals 21

    .prologue
    .line 471
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v8, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lgfp;->o:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfp;->g:Ljava/util/Map;

    const-wide/16 v4, 0x3e9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 13044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v16

    .line 476
    .local v16, "groupId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_1

    .line 477
    new-instance v12, Lgfp$10;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lgfp$10;-><init>(Lgfp;)V

    .line 506
    .local v12, "listener":Lcma;, "Lcma<Lgnv;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 507
    const-class v2, Lcma;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v12, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    check-cast v12, Lcma;

    .line 510
    .restart local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgfp;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgfp;->c:Ljava/lang/String;

    const-wide/16 v6, 0x3e9

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lgfp;->o:J

    invoke-virtual/range {v3 .. v12}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V

    .line 543
    .end local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    :goto_0
    return-void

    .line 512
    :cond_1
    new-instance v20, Lgfp$11;

    invoke-direct/range {v20 .. v21}, Lgfp$11;-><init>(Lgfp;)V

    .line 537
    .local v20, "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 538
    const-class v2, Lcma;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgfp;->a:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v20, Lcma;

    .line 541
    .restart local v20    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v13

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lgfp;->o:J

    move-wide/from16 v18, v0

    move-object v14, v8

    invoke-virtual/range {v13 .. v20}, Lgon;->a(Ljava/util/List;IJJLcma;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 188
    .local p1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v6, 0x0

    .line 193
    .local v6, "hasExternal":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v2, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 195
    .local v0, "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    .line 199
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-wide v4, p0, Lgfp;->o:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    iget-wide v4, p0, Lgfp;->o:J

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 201
    const/4 v6, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    const/4 v3, 0x0

    iget-wide v4, p0, Lgfp;->q:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgfp;->a(Ljava/util/List;IJZ)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 8
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 703
    iget-object v0, p0, Lgfp;->g:Ljava/util/Map;

    const-wide/16 v2, 0x1389

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 16044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 704
    .local v4, "groupId":J
    new-instance v7, Lgfp$4;

    invoke-direct {v7, p0, p1}, Lgfp$4;-><init>(Lgfp;Z)V

    .line 748
    .local v7, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iget-object v0, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 749
    const-class v0, Lcma;

    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v7, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    check-cast v7, Lcma;

    .line 752
    .restart local v7    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lgfp;->c:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JZLcma;)V

    .line 753
    return-void
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x3e9

    const-wide/16 v10, 0x0

    .line 549
    iget-object v1, p0, Lgfp;->g:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 14044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 551
    .local v8, "groupId":J
    cmp-long v1, v8, v10

    if-nez v1, :cond_2

    .line 552
    new-instance v6, Lgfp$12;

    invoke-direct {v6, p0}, Lgfp$12;-><init>(Lgfp;)V

    .line 580
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 581
    const-class v1, Lcma;

    iget-object v2, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v6, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    check-cast v6, Lcma;

    .line 583
    .restart local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgfp;->b:Ljava/lang/String;

    iget-object v3, p0, Lgfp;->c:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 622
    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    iget-object v1, p0, Lgfp;->h:Lgnu;

    if-eqz v1, :cond_1

    .line 589
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v7, "members":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    iget-object v1, p0, Lgfp;->h:Lgnu;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v0, Lgfp$2;

    invoke-direct {v0, p0}, Lgfp$2;-><init>(Lgfp;)V

    .line 617
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    iget-object v1, p0, Lgfp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 618
    const-class v1, Lcma;

    iget-object v2, p0, Lgfp;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v0, Lcma;

    .line 620
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_3
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {v1, v7, v8, v9, v0}, Lgon;->a(Ljava/util/List;JLcma;)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 215
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v6, 0x0

    .line 220
    .local v6, "hasExternal":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 222
    .local v0, "conversation":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6241
    if-eqz v0, :cond_3

    iget-wide v4, p0, Lgfp;->o:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_4

    :cond_3
    move v1, v7

    .line 227
    :goto_2
    if-eqz v1, :cond_2

    .line 228
    const/4 v6, 0x1

    goto :goto_1

    .line 6245
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_6

    .line 6246
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 6248
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_5

    .line 6249
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 6253
    :goto_3
    iget-wide v12, p0, Lgfp;->o:J

    cmp-long v1, v4, v12

    if-eqz v1, :cond_7

    move v1, v3

    .line 6254
    goto :goto_2

    .line 6250
    :cond_5
    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v4, :cond_9

    .line 6251
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    invoke-static {v1}, Lgpt;->a(Ljava/util/Map;)J

    move-result-wide v4

    goto :goto_3

    .line 6256
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_7

    .line 6257
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 6258
    if-eqz v1, :cond_7

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iget-wide v12, p0, Lgfp;->o:J

    cmp-long v1, v4, v12

    if-eqz v1, :cond_7

    move v1, v3

    .line 6259
    goto :goto_2

    :cond_7
    move v1, v7

    .line 6263
    goto :goto_2

    .line 232
    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 236
    iget-wide v4, p0, Lgfp;->q:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgfp;->a(Ljava/util/List;IJZ)V

    goto/16 :goto_0

    .restart local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_9
    move-wide v4, v8

    goto :goto_3
.end method

.method public final d()Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lgfp;->k:Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lgfp;->n:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lgfp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 879
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lgfp;->p:Ljava/lang/String;

    return-object v0
.end method
