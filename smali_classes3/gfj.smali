.class public Lgfj;
.super Lgff;
.source "SpaceEditCollaboratorPresenter.java"


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation
.end field

.field protected final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field protected m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;


# direct methods
.method protected constructor <init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "view"    # Lgfe$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "fileId"    # Ljava/lang/String;
    .param p5, "spaceType"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lgff;-><init>(Lgfe$b;Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfj;->i:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfj;->j:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfj;->k:Ljava/util/ArrayList;

    .line 69
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 71
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->g()V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-object p3, p0, Lgfj;->f:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lgfj;->g:Ljava/lang/String;

    .line 76
    iput p5, p0, Lgfj;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method protected static a(Ljava/util/List;J)V
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 303
    .local v1, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static synthetic b(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic c(Lgfj;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected static c(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x0

    .line 243
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    :cond_1
    return-object v2

    .line 246
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v2, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 248
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 251
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v3, 0x2

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-direct {v0, v3, v6, v7, v8}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6151
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 6179
    :goto_1
    iput-boolean v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 253
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v3, v4

    .line 252
    goto :goto_1
.end method

.method static synthetic d(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method protected static d(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v8, 0x0

    .line 259
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    :cond_1
    return-object v4

    .line 262
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v4, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 264
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v0, :cond_3

    .line 7131
    iget v6, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 264
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 7135
    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 8109
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 268
    .local v2, "userId":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_3

    .line 271
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 272
    .local v1, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 273
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method protected static e(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v8, 0x0

    .line 279
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    :cond_1
    return-object v1

    .line 282
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 284
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v0, :cond_3

    .line 8131
    iget v5, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 284
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 8135
    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 9109
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 288
    .local v2, "userId":J
    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    .line 291
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic f(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic g(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic h(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic i(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic j(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic k(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic l(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic m(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic n(Lgfj;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfj;

    .prologue
    .line 39
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    return-object v0
.end method


# virtual methods
.method protected final a(J)V
    .locals 11
    .param p1, "msgId"    # J

    .prologue
    .line 98
    new-instance v2, Lgfj$1;

    invoke-direct {v2, p0}, Lgfj$1;-><init>(Lgfj;)V

    .line 146
    .local v2, "listener":Lcma;, "Lcma<Lgjp;>;"
    iget-object v0, p0, Lgfj;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Lcma;

    iget-object v0, p0, Lgfj;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcma;, "Lcma<Lgjp;>;"
    check-cast v2, Lcma;

    .line 149
    .restart local v2    # "listener":Lcma;, "Lcma<Lgjp;>;"
    :cond_0
    iget-object v0, p0, Lgfj;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->b()V

    .line 150
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lgfj;->f:Ljava/lang/String;

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 150
    iget-object v5, p0, Lgfj;->g:Ljava/lang/String;

    .line 3883
    if-eqz v2, :cond_1

    .line 3886
    iget-object v0, v1, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v0, :cond_2

    .line 3887
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v3, "getOnlineEditMemberList: mOnlineDocIService is null"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    const-string/jumbo v0, "SERVICE_NULL"

    const-string/jumbo v1, "mOnlineDocIService is null"

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    :cond_1
    :goto_0
    return-void

    .line 3892
    :cond_2
    new-instance v8, Lgjo;

    invoke-direct {v8}, Lgjo;-><init>()V

    .line 3893
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lgjo;->a:Ljava/lang/Long;

    .line 3894
    iput-object v5, v8, Lgjo;->b:Ljava/lang/String;

    .line 3895
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lgjo;->c:Ljava/lang/Long;

    .line 3896
    iget-object v9, v1, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v0, Lgon$52;

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lgon$52;-><init>(Lgon;Lcma;JLjava/lang/String;J)V

    invoke-interface {v9, v8, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->getMemberList(Lgjo;Liyv;)V

    goto :goto_0
.end method

.method protected a(Lgjp;)V
    .locals 0
    .param p1, "memberData"    # Lgjp;

    .prologue
    .line 155
    return-void
.end method

.method protected final a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 8
    .param p1, "isAdd"    # Z
    .param p5, "mConvId"    # Ljava/lang/String;
    .param p6, "msgId"    # J
    .param p8, "orgId"    # J
    .param p10, "onSuccessCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "deptIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "groupIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lgfj$2;

    move-object/from16 v0, p10

    invoke-direct {v2, p0, p1, v0}, Lgfj$2;-><init>(Lgfj;ZLjava/lang/Runnable;)V

    .line 229
    .local v2, "listener":Lcma;, "Lcma<Lgjj;>;"
    iget-object v3, p0, Lgfj;->b:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 230
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    iget-object v3, p0, Lgfj;->b:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v4, v2, v5, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcma;, "Lcma<Lgjj;>;"
    check-cast v2, Lcma;

    .line 232
    .restart local v2    # "listener":Lcma;, "Lcma<Lgjj;>;"
    :cond_0
    iget-object v3, p0, Lgfj;->a:Lgfe$b;

    invoke-interface {v3}, Lgfe$b;->b()V

    .line 233
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    iget-object v4, p0, Lgfj;->f:Ljava/lang/String;

    .line 5109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 233
    iget-object v6, p0, Lgfj;->g:Ljava/lang/String;

    .line 5837
    if-eqz v2, :cond_1

    .line 5840
    iget-object v7, v3, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v7, :cond_2

    .line 5841
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "SpaceRPC"

    const-string/jumbo v5, "addOnlineEditor: mOnlineDocIService is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5843
    const-string/jumbo v3, "SERVICE_NULL"

    const-string/jumbo v4, "mOnlineDocIService is null"

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5844
    :cond_1
    :goto_0
    return-void

    .line 5846
    :cond_2
    new-instance v7, Lgji;

    invoke-direct {v7}, Lgji;-><init>()V

    .line 5847
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lgji;->a:Ljava/lang/Long;

    .line 5848
    iput-object v6, v7, Lgji;->b:Ljava/lang/String;

    .line 5849
    iput-object p5, v7, Lgji;->c:Ljava/lang/String;

    .line 5850
    iput-object p2, v7, Lgji;->d:Ljava/util/List;

    .line 5851
    const/4 v4, 0x0

    iput-object v4, v7, Lgji;->e:Ljava/lang/Long;

    .line 5852
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lgji;->f:Ljava/lang/Long;

    .line 5853
    iput-object p3, v7, Lgji;->g:Ljava/util/List;

    .line 5854
    iput-object p4, v7, Lgji;->h:Ljava/util/List;

    .line 5855
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lgji;->i:Ljava/lang/Long;

    .line 5856
    iget-object v4, v3, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v5, Lgon$50;

    invoke-direct {v5, v3, v2}, Lgon$50;-><init>(Lgon;Lcma;)V

    invoke-interface {v4, v7, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->addEditor(Lgji;Liyv;)V

    goto :goto_0
.end method

.method protected final b(Lgjp;)V
    .locals 14
    .param p1, "memberData"    # Lgjp;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 158
    if-eqz p1, :cond_4

    iget-object v7, p1, Lgjp;->d:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lgjp;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p1, Lgjp;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v4, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p1, Lgjp;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v6, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v7, p1, Lgjp;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgjm;

    .line 162
    .local v1, "user":Lgjm;
    if-eqz v1, :cond_0

    .line 165
    iget-object v7, v1, Lgjm;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v7, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 166
    .local v2, "uid":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_0

    iget-object v7, p0, Lgfj;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lgfj;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v10, v2

    if-eqz v7, :cond_0

    .line 170
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v7, 0x2

    iget-object v9, v1, Lgjm;->a:Ljava/lang/Long;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lgjm;->b:Ljava/lang/String;

    iget-object v11, v1, Lgjm;->c:Ljava/lang/String;

    invoke-direct {v0, v7, v9, v10, v11}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 171
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    .line 4179
    :goto_1
    iput-boolean v7, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 172
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 175
    .local v5, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v7, v1, Lgjm;->a:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 176
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v5    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 179
    .end local v0    # "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    .end local v1    # "user":Lgjm;
    .end local v2    # "uid":J
    :cond_3
    iget-object v7, p0, Lgfj;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v7, p0, Lgfj;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v7, p0, Lgfj;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 183
    iget-object v7, p0, Lgfj;->j:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    .end local v4    # "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    .end local v6    # "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lgfj;->h:I

    invoke-static {v0}, Lgqu;->g(I)Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lgfj;->a(J)V

    .line 95
    return-void
.end method

.method protected final l()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 81
    .local v0, "myProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 85
    .local v1, "myselfUserObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 86
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 87
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lgfj;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 89
    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v3, 0x2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lgfj;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    goto :goto_0
.end method
