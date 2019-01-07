.class public final Lgdl;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lgdj$a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;"
        }
    .end annotation
.end field

.field b:Lgdj$b;

.field final c:Ljava/lang/Object;

.field d:J

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLgdj$b;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "spaceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "folderId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "aclType"    # J
    .param p6, "orgId"    # J
    .param p8, "view"    # Lgdj$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgdl;->a:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgdl;->c:Ljava/lang/Object;

    .line 68
    const-string/jumbo v0, "SpaceAclPresenter"

    iput-object v0, p0, Lgdl;->j:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lgdl;->e:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lgdl;->f:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lgdl;->g:Ljava/lang/String;

    .line 74
    iput-wide p4, p0, Lgdl;->h:J

    .line 75
    iput-wide p6, p0, Lgdl;->i:J

    .line 77
    invoke-static {p8}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj$b;

    iput-object v0, p0, Lgdl;->b:Lgdj$b;

    .line 78
    invoke-interface {p8, p0}, Lgdj$b;->setPresenter(Lcjd;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lgdl;)V
    .locals 4
    .param p0, "x0"    # Lgdl;

    .prologue
    .line 55
    .line 8392
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "action_acl_member_change"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8393
    const-string/jumbo v0, "intent_key_acl_type"

    iget-wide v2, p0, Lgdl;->h:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8394
    const-string/jumbo v0, "space_category_current_folderId"

    iget-object v2, p0, Lgdl;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8395
    const-string/jumbo v2, "intent_key_acl_members_count"

    .line 8396
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v0, p0, Lgdl;->a:Ljava/util/List;

    invoke-static {v0}, Lgqd;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 8395
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8397
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 55
    return-void

    .line 8396
    :cond_0
    iget-object v0, p0, Lgdl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;I)V
    .locals 11
    .param p2, "memberType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 126
    .local p1, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lgdl$2;

    invoke-direct {v10, p0}, Lgdl$2;-><init>(Lgdl;)V

    .line 161
    .local v10, "callback":Lcma;, "Lcma<Lgnv;>;"
    iget-object v0, p0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 162
    const-class v0, Lcma;

    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v10, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "callback":Lcma;, "Lcma<Lgnv;>;"
    check-cast v10, Lcma;

    .line 165
    .restart local v10    # "callback":Lcma;, "Lcma<Lgnv;>;"
    :cond_0
    iget-object v0, p0, Lgdl;->b:Lgdj$b;

    sget v1, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v0, v1}, Lgdj$b;->a(I)V

    .line 166
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgdl;->f:Ljava/lang/String;

    iget-object v3, p0, Lgdl;->g:Ljava/lang/String;

    iget-wide v4, p0, Lgdl;->h:J

    iget-wide v8, p0, Lgdl;->i:J

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v10}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V

    .line 167
    return-void
.end method

.method private j()Ljava/util/ArrayList;
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

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "depts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v5, p0, Lgdl;->a:Ljava/util/List;

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

    .line 368
    .local v1, "memberModel":Lgnu;
    if-eqz v1, :cond_0

    .line 7195
    iget-object v6, v1, Lgnu;->a:Ljava/lang/String;

    .line 8109
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 374
    .local v2, "memberId":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    .line 8227
    iget v6, v1, Lgnu;->e:I

    .line 378
    if-nez v6, :cond_0

    .line 379
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 380
    .local v4, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 381
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v1    # "memberModel":Lgnu;
    .end local v2    # "memberId":J
    .end local v4    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 83
    new-instance v3, Lgdl$1;

    invoke-direct {v3, p0}, Lgdl$1;-><init>(Lgdl;)V

    .line 116
    .local v3, "callback":Lcma;, "Lcma<Lgnv;>;"
    iget-object v0, p0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 117
    const-class v0, Lcma;

    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callback":Lcma;, "Lcma<Lgnv;>;"
    check-cast v3, Lcma;

    .line 120
    .restart local v3    # "callback":Lcma;, "Lcma<Lgnv;>;"
    :cond_0
    iget-object v0, p0, Lgdl;->b:Lgdj$b;

    invoke-interface {v0}, Lgdj$b;->b()V

    .line 121
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v6, p0, Lgdl;->f:Ljava/lang/String;

    iget-object v7, p0, Lgdl;->g:Ljava/lang/String;

    iget-wide v4, p0, Lgdl;->h:J

    .line 2773
    if-eqz v3, :cond_1

    .line 2777
    new-instance v0, Lgku;

    invoke-direct {v0}, Lgku;-><init>()V

    .line 3109
    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2778
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgku;->a:Ljava/lang/Long;

    .line 4109
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2779
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgku;->b:Ljava/lang/Long;

    .line 2781
    new-instance v1, Lgon$22;

    invoke-direct/range {v1 .. v7}, Lgon$22;-><init>(Lgon;Lcma;JLjava/lang/String;Ljava/lang/String;)V

    .line 2863
    iget-object v2, v2, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->listAcl(Lgku;Liyv;)V

    .line 122
    :cond_1
    return-void
.end method

.method public final a(IZZZ)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "canChooseUsers"    # Z
    .param p3, "canChooseDepts"    # Z
    .param p4, "canChooseConversation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 307
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p4, :cond_1

    .line 308
    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    iget-wide v2, p0, Lgdl;->i:J

    const/16 v4, 0x64

    .line 309
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lfzs$h;->dt_add_participators_group:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgdl;->b:Lgdj$b;

    invoke-interface {v6}, Lgdj$b;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 308
    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 311
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 312
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 314
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 315
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 316
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_add_participators_members:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 317
    iget-object v1, p0, Lgdl;->b:Lgdj$b;

    invoke-interface {v1}, Lgdj$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 319
    if-eqz p3, :cond_2

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 323
    :cond_2
    iget-wide v2, p0, Lgdl;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4338
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4340
    iget-object v1, p0, Lgdl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 4341
    if-eqz v1, :cond_3

    .line 5195
    iget-object v3, v1, Lgnu;->a:Ljava/lang/String;

    .line 6109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4347
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 6227
    iget v1, v1, Lgnu;->e:I

    .line 4351
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 4352
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 4353
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 4354
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .local v10, "currentSelectedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    invoke-direct {p0}, Lgdl;->j()Ljava/util/ArrayList;

    move-result-object v9

    .line 328
    .local v9, "currentSelectedDepts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 329
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 330
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lgdl;->e:Landroid/app/Activity;

    .line 7053
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 330
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 251
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    new-instance v0, Lgdl$4;

    invoke-direct {v0, p0}, Lgdl$4;-><init>(Lgdl;)V

    .line 298
    .local v0, "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 299
    const-class v1, Lcma;

    iget-object v2, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v0, Lcma;

    .line 301
    .restart local v0    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_0
    iget-object v1, p0, Lgdl;->b:Lgdj$b;

    sget v2, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v1, v2}, Lgdj$b;->a(I)V

    .line 302
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-wide v2, p0, Lgdl;->d:J

    invoke-virtual {v1, p1, v2, v3, v0}, Lgon;->a(Ljava/util/List;JLcma;)V

    .line 303
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 11
    .param p2, "memberType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 172
    .local p1, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "finalAddMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "currentMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lgdl;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v1, p0, Lgdl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu;

    .line 182
    .local v10, "memberModel":Lgnu;
    if-eqz v10, :cond_1

    .line 4195
    iget-object v4, v10, Lgnu;->a:Ljava/lang/String;

    .line 186
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v10    # "memberModel":Lgnu;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 191
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 199
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 202
    .end local v9    # "id":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    iget-object v1, p0, Lgdl;->b:Lgdj$b;

    const-string/jumbo v3, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->dt_cspace_acl_add_member_already:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_5
    iget-wide v4, p0, Lgdl;->d:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    .line 208
    invoke-direct {p0, p1, p2}, Lgdl;->b(Ljava/util/List;I)V

    goto :goto_0

    .line 212
    :cond_6
    new-instance v8, Lgdl$3;

    invoke-direct {v8, p0}, Lgdl$3;-><init>(Lgdl;)V

    .line 241
    .local v8, "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 242
    const-class v1, Lcma;

    iget-object v3, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v8, v1, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v8, Lcma;

    .line 245
    .restart local v8    # "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_7
    iget-object v1, p0, Lgdl;->b:Lgdj$b;

    sget v3, Lfzs$h;->dt_mail_please_wait:I

    invoke-interface {v1, v3}, Lgdj$b;->a(I)V

    .line 246
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-wide v4, p0, Lgdl;->d:J

    iget-wide v6, p0, Lgdl;->i:J

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lgon;->a(Ljava/util/List;IJJLcma;)V

    goto/16 :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lgdl;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lgdl;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgdl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 412
    iget-wide v0, p0, Lgdl;->h:J

    return-wide v0
.end method

.method public final e()V
    .locals 21

    .prologue
    .line 417
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v8, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lgdl;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    move-object/from16 v0, p0

    iget-wide v2, v0, Lgdl;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 421
    new-instance v12, Lgdl$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lgdl$5;-><init>(Lgdl;)V

    .line 441
    .local v12, "listener":Lcma;, "Lcma<Lgnv;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 442
    const-class v2, Lcma;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v12, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    check-cast v12, Lcma;

    .line 444
    .restart local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgdl;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgdl;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lgdl;->h:J

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lgdl;->i:J

    invoke-virtual/range {v3 .. v12}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V

    .line 472
    .end local v12    # "listener":Lcma;, "Lcma<Lgnv;>;"
    :goto_0
    return-void

    .line 446
    :cond_1
    new-instance v20, Lgdl$6;

    invoke-direct/range {v20 .. v21}, Lgdl$6;-><init>(Lgdl;)V

    .line 467
    .local v20, "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 468
    const-class v2, Lcma;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgdl;->e:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    check-cast v20, Lcma;

    .line 470
    .restart local v20    # "listener":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    :cond_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v13

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lgdl;->d:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lgdl;->i:J

    move-wide/from16 v18, v0

    move-object v14, v8

    invoke-virtual/range {v13 .. v20}, Lgon;->a(Ljava/util/List;IJJLcma;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 476
    new-instance v6, Lgdl$7;

    invoke-direct {v6, p0}, Lgdl$7;-><init>(Lgdl;)V

    .line 497
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iget-object v0, p0, Lgdl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 498
    const-class v0, Lcma;

    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-static {v6, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    check-cast v6, Lcma;

    .line 501
    .restart local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgdl;->f:Ljava/lang/String;

    iget-object v3, p0, Lgdl;->g:Ljava/lang/String;

    iget-wide v4, p0, Lgdl;->h:J

    invoke-virtual/range {v1 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 502
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method
