.class public Lfkf;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Lfir;

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

.field private k:Landroid/app/Activity;

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lfkf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfkf;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 9
    .param p1, "contextActivity"    # Landroid/app/Activity;
    .param p2, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "oid"    # J

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "IDENTIFY_CONTACT_MANAGE_ORG_MEMBER_BATCH_MOVE"

    iput-object v0, p0, Lfkf;->a:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "IDENTIFY_CONTACT_MANAGE_ORG_MEMBER_BATCH_DELETE"

    iput-object v0, p0, Lfkf;->b:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfkf;->c:Ljava/util/List;

    .line 84
    iput-boolean v4, p0, Lfkf;->g:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfkf;->h:Ljava/util/List;

    .line 97
    iput-object p1, p0, Lfkf;->k:Landroid/app/Activity;

    .line 100
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-eq v0, v1, :cond_3

    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_3

    .line 103
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    iput-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 104
    iget-object v1, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1141
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_2

    .line 1142
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 104
    :goto_0
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 105
    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 114
    :goto_1
    iget-object v0, p0, Lfkf;->k:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    if-eqz v0, :cond_1

    .line 115
    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lfkf;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "_"

    aput-object v1, v0, v5

    iget-object v1, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 116
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 115
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfkf;->a:Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lfkf;->b:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "_"

    aput-object v1, v0, v5

    iget-object v1, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 118
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 117
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfkf;->b:Ljava/lang/String;

    .line 2124
    new-instance v0, Lfkf$1;

    invoke-direct {v0, p0}, Lfkf$1;-><init>(Lfkf;)V

    iput-object v0, p0, Lfkf;->m:Landroid/content/BroadcastReceiver;

    .line 2165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2166
    const-string/jumbo v1, "com.workapp.choose.people.from.dept"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2167
    const-string/jumbo v1, "com.workapp.choose.org.department"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2168
    iget-object v1, p0, Lfkf;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lfkf;->m:Landroid/content/BroadcastReceiver;

    .line 2169
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 121
    :cond_1
    return-void

    .line 1144
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 1145
    invoke-static {p3, p4}, Lfxe;->a(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 1146
    iput-wide p3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 1147
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v0, v1, :cond_4

    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-nez v0, :cond_4

    .line 108
    invoke-static {}, Lfxe;->a()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v0

    iput-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    goto/16 :goto_1

    .line 110
    :cond_4
    iput-object p2, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    goto/16 :goto_1
.end method

.method static synthetic a(Lfkf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lfkf;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 5
    .param p0, "x0"    # Lfkf;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 68
    .line 6372
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->mPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iput-object v0, p0, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 6375
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lfkf;->d:I

    .line 6377
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    iput v0, p0, Lfkf;->e:I

    .line 6378
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 6401
    const/4 v0, 0x0

    .line 6402
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 6379
    :cond_0
    :goto_0
    iget-object v0, p0, Lfkf;->f:Lfir;

    if-eqz v0, :cond_1

    .line 6380
    iget-object v0, p0, Lfkf;->f:Lfir;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    invoke-interface {v0, v1, v2}, Lfir;->a(ZI)V

    .line 6383
    :cond_1
    invoke-virtual {p0}, Lfkf;->a()V

    .line 68
    return-void

    .line 6406
    :cond_2
    iget-boolean v2, p0, Lfkf;->g:Z

    if-eqz v2, :cond_3

    .line 6407
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 6408
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_4

    .line 6409
    iget-object v3, p0, Lfkf;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6410
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 6412
    goto :goto_1

    .line 6414
    :cond_3
    iget-object v0, p0, Lfkf;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6415
    invoke-interface {v1}, Ljava/util/List;->size()I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lfkf;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lfkf;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    .line 4494
    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 4495
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4497
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4499
    if-eqz v0, :cond_0

    .line 4502
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4503
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4506
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 4507
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4508
    new-instance v7, Lfkf$6;

    invoke-direct {v7, p0, v0}, Lfkf$6;-><init>(Lfkf;[Ljava/lang/Long;)V

    .line 4528
    iget-object v0, p0, Lfkf;->k:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 4529
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lfkf;->k:Landroid/app/Activity;

    .line 4530
    invoke-interface {v0, v7, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v7, v0

    .line 4533
    :cond_2
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-interface/range {v1 .. v7}, Lezt;->a(JJLjava/util/List;Lcma;)V

    .line 68
    :cond_3
    return-void
.end method

.method static synthetic b(Lfkf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lfkf;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lfkf;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 5427
    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 5428
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lfkf;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfkf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v2, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 5436
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5438
    iget-object v0, p0, Lfkf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5439
    if-eqz v0, :cond_1

    .line 5442
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5443
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5446
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 5448
    if-eqz v0, :cond_3

    .line 5452
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5455
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 5456
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5457
    new-instance v7, Lfkf$5;

    invoke-direct {v7, p0, v0}, Lfkf$5;-><init>(Lfkf;[Ljava/lang/Long;)V

    .line 5477
    iget-object v0, p0, Lfkf;->k:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 5478
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lfkf;->k:Landroid/app/Activity;

    .line 5479
    invoke-interface {v0, v7, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v7, v0

    .line 5482
    :cond_5
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-object v1, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-interface/range {v0 .. v7}, Lezt;->a(JLjava/util/List;JLjava/util/List;Lcma;)V

    .line 5486
    :cond_6
    iget-object v0, p0, Lfkf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    :cond_7
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lfkf;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfkf;)V
    .locals 3
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    .line 3560
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfkf;->k:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/select_department.html"

    new-instance v2, Lfkf$8;

    invoke-direct {v2, p0}, Lfkf$8;-><init>(Lfkf;)V

    .line 3561
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 68
    return-void
.end method

.method static synthetic d(Lfkf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lfkf;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->k:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lfkf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lfkf;)Lfir;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->f:Lfir;

    return-object v0
.end method

.method static synthetic h(Lfkf;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lfkf;

    .prologue
    .line 68
    iget-object v0, p0, Lfkf;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 388
    iget-object v0, p0, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkf;->f:Lfir;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lfkf;->f:Lfir;

    check-cast v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v1, p0, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    .line 2415
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)Z

    .line 2416
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->f(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2417
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2418
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2419
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2420
    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->c(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfjt;

    move-result-object v0

    .line 3058
    iput-boolean v2, v0, Lfjt;->f:Z

    .line 393
    :cond_0
    return-void

    .line 2416
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J
    .param p5, "getMore"    # Z
    .param p6, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 190
    invoke-static {p2}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "keyWord":Ljava/lang/String;
    invoke-static {p2}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 192
    .local v5, "keyType":I
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 193
    .local v0, "oid":Ljava/lang/Long;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    .line 194
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v9, 0x1e

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 202
    return-void

    .line 195
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .param p5, "orgId"    # J
    .param p7, "getMore"    # Z
    .param p8, "size"    # I
    .param p9, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 282
    new-instance v8, Lfkf$3;

    move/from16 v0, p7

    invoke-direct {v8, p0, v0, p2}, Lfkf$3;-><init>(Lfkf;ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 316
    .local v8, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    if-eqz p1, :cond_0

    .line 317
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v8, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    check-cast v8, Lcma;

    .line 321
    .restart local v8    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const-string/jumbo p3, "-1"

    .line 324
    :cond_1
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz p7, :cond_2

    iget v2, p0, Lfkf;->d:I

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 325
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p3

    move-object/from16 v7, p9

    .line 324
    invoke-interface/range {v1 .. v8}, Lezt;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 326
    return-void

    .line 324
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "oid"    # J
    .param p5, "getMore"    # Z
    .param p6, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 331
    new-instance v6, Lfkf$4;

    invoke-direct {v6, p0, p5, p1}, Lfkf$4;-><init>(Lfkf;ZLandroid/app/Activity;)V

    .line 362
    .local v6, "mApiEventListener":Lcma;
    if-eqz p1, :cond_0

    .line 363
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    .line 364
    invoke-interface {v0, v6, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mApiEventListener":Lcma;
    check-cast v6, Lcma;

    .line 367
    .restart local v6    # "mApiEventListener":Lcma;
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz p5, :cond_1

    iget v1, p0, Lfkf;->d:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1e

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p2

    move-object v5, p6

    .line 367
    invoke-interface/range {v0 .. v6}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 369
    return-void

    .line 367
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 539
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfkf;->k:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/dept_member.html"

    new-instance v2, Lfkf$7;

    invoke-direct {v2, p0, p1}, Lfkf$7;-><init>(Lfkf;Ljava/lang/String;)V

    .line 540
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 557
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 580
    iget-object v0, p0, Lfkf;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lfkf;->k:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfkf;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lfkf;->m:Landroid/content/BroadcastReceiver;

    .line 584
    :cond_0
    return-void
.end method
