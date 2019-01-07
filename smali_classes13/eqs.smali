.class public Leqs;
.super Leqq;
.source "ContactSearchPresenter.java"

# interfaces
.implements Leqr$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leqs$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private F:D

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private M:J

.field private N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private P:I

.field private Q:D

.field private R:Z

.field protected m:J

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/search/ContactSource;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqr$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqr$b;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Leqs;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqr$b;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqr$b;Z)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqr$b;
    .param p3, "searchDemissionColleague"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-direct {p0}, Leqq;-><init>()V

    .line 120
    iput-boolean v3, p0, Leqs;->o:Z

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leqs;->m:J

    .line 126
    iput-boolean v2, p0, Leqs;->p:Z

    .line 128
    iput-boolean v2, p0, Leqs;->q:Z

    .line 130
    iput-boolean v2, p0, Leqs;->r:Z

    .line 132
    iput-boolean v3, p0, Leqs;->s:Z

    .line 134
    iput-boolean v2, p0, Leqs;->t:Z

    .line 136
    iput-boolean v2, p0, Leqs;->u:Z

    .line 138
    iput-boolean v2, p0, Leqs;->v:Z

    .line 140
    iput-boolean v2, p0, Leqs;->w:Z

    .line 142
    iput-boolean v2, p0, Leqs;->x:Z

    .line 144
    iput-boolean v2, p0, Leqs;->y:Z

    .line 146
    iput-boolean v2, p0, Leqs;->z:Z

    .line 148
    iput v2, p0, Leqs;->A:I

    .line 150
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leqs;->B:Ljava/lang/String;

    .line 152
    const/16 v0, 0xa

    iput v0, p0, Leqs;->C:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leqs;->D:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leqs;->E:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leqs;->n:Ljava/util/Map;

    .line 162
    iput v3, p0, Leqs;->G:I

    .line 164
    iput-boolean v3, p0, Leqs;->H:Z

    .line 166
    iput-boolean v3, p0, Leqs;->I:Z

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Leqs;->K:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Leqs;->L:Ljava/util/List;

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leqs;->M:J

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leqs;->N:Ljava/util/Set;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Leqs;->P:I

    .line 188
    iput-object p1, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 189
    iput-object p2, p0, Leqs;->b:Leqp$b;

    .line 190
    iput-boolean p3, p0, Leqs;->R:Z

    .line 191
    const/16 v0, 0xf6

    invoke-virtual {p0, v0}, Leqs;->b(I)V

    .line 198
    iget-object v0, p0, Leqs;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 200
    invoke-static {}, Lese;->a()D

    move-result-wide v0

    iput-wide v0, p0, Leqs;->F:D

    .line 202
    iget-object v0, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-string/jumbo v1, "pref_key_search_recommend_credibility"

    const-string/jumbo v2, "0.5"

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Leqs;->Q:D

    .line 203
    return-void
.end method

.method static synthetic a(Leqs;)I
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget v0, p0, Leqs;->G:I

    return v0
.end method

.method static synthetic a(Leqs;I)I
    .locals 0
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Leqs;->C:I

    return p1
.end method

.method static synthetic a(Leqs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Leqs;->B:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Leoe;Ljava/util/List;)V
    .locals 8
    .param p0, "queryLog"    # Leoe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leoe;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2399
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 2424
    :goto_0
    return-void

    .line 2403
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 2404
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_1

    .line 2405
    const-string/jumbo v2, "uuid:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 36084
    iget-object v3, p0, Leoe;->a:Ljava/lang/String;

    .line 2405
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2407
    :cond_1
    const-string/jumbo v2, ",contact:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 2410
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_2

    .line 2414
    const-string/jumbo v3, "["

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2415
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2416
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 36120
    const-wide/32 v6, 0x6a01e35

    sub-long/2addr v4, v6

    .line 2416
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2418
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModifyTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 2419
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getScore()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 2420
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getWeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 2423
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 37073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Leqs;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 8
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 116
    .line 40553
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 40554
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 40555
    :cond_0
    :goto_0
    return-void

    .line 40557
    :cond_1
    const-string/jumbo v0, "[Contact]lowCredibilityThreshold %f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Leqs;->Q:D

    double-to-float v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40559
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 40560
    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40564
    sget-wide v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->MAX_SCORE:D

    double-to-int v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v3

    .line 40565
    if-eqz v3, :cond_2

    iget-wide v4, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 40569
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40574
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_search_low_credibility_rec_reorder"

    invoke-virtual {v4, v5}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCredibility:D

    iget-wide v6, p0, Leqs;->Q:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 40576
    iget-object v3, p0, Leqs;->L:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40580
    :cond_3
    iget-object v0, p0, Leqs;->K:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40584
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40585
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lesm;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Leqs;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 12
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 116
    .line 50102
    if-eqz p1, :cond_0

    .line 50106
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-wide v8, p1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    iget-wide v10, p1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    new-instance v0, Leqs$9;

    .line 50107
    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Leqs$9;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    move-object v1, v6

    move-wide v2, v8

    move-wide v4, v10

    move-object v6, v0

    .line 50106
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic a(Leqs;Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 0
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leoe;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Leqs;->a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    return-void
.end method

.method static synthetic a(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leoe;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 116
    .line 45897
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 45898
    :cond_0
    iget-object v0, p0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 45899
    :goto_0
    return-void

    .line 45902
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46055
    sget-object v0, Leoc$a;->a:Leoc;

    .line 45903
    iget v0, p0, Leqs;->l:I

    invoke-static {v0}, Leoc;->b(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v4

    .line 45904
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 45906
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v5

    .line 45907
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 45908
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 45911
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45913
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 45914
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 45915
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 45919
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 45920
    sget-object v6, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 45913
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 47055
    :cond_3
    sget-object v0, Leoc$a;->a:Leoc;

    .line 45927
    invoke-static {v4, v5, p1}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 45928
    sget-object v2, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 45929
    if-eqz p2, :cond_4

    .line 47084
    iget-object v2, p2, Leoe;->a:Ljava/lang/String;

    .line 45930
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 47092
    iget v2, p2, Leoe;->b:I

    .line 45931
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 45933
    :cond_4
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 45934
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45935
    iget v2, p0, Leqs;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Leqs;->h:I

    .line 45936
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    .line 45937
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 45938
    iget-object v2, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45942
    :cond_5
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_6

    instance-of v2, v0, Lcom/alibaba/android/search/model/LocalContactModel;

    if-eqz v2, :cond_6

    .line 45943
    check-cast v0, Lcom/alibaba/android/search/model/LocalContactModel;

    .line 45944
    new-instance v2, Leqs$a;

    invoke-direct {v2, p0, v0}, Leqs$a;-><init>(Leqs;Lcom/alibaba/android/search/model/LocalContactModel;)V

    .line 45945
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/LocalContactModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 47165
    iput-object v0, v2, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 45946
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v2, v6, v7}, Leqs$a;->a(J)V

    .line 45904
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 45950
    :cond_7
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45951
    iget-object v0, p0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 45953
    invoke-direct {p0}, Leqs;->s()V

    goto/16 :goto_0
.end method

.method static synthetic a(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V
    .locals 4
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leoe;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/android/search/ContactSource;

    .prologue
    .line 116
    .line 43881
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43882
    if-eqz p3, :cond_1

    .line 43883
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 43884
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 43885
    if-eqz v0, :cond_0

    .line 43888
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43892
    :cond_1
    invoke-direct {p0, p1, p2, v1, p4}, Leqs;->a(Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V

    .line 116
    return-void
.end method

.method static synthetic a(Leqs;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 116
    .line 37591
    iget v0, p0, Leqs;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leqs;->G:I

    .line 37593
    if-nez p1, :cond_1

    .line 37594
    iput-boolean v2, p0, Leqs;->I:Z

    .line 37595
    :cond_0
    return-void

    .line 37598
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Leqs;->I:Z

    .line 37600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37601
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 37602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 37603
    if-eqz v0, :cond_2

    .line 37608
    :try_start_0
    const-string/jumbo v1, "openId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38044
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 37613
    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 37616
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37618
    const-string/jumbo v6, "alias"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 37620
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 37598
    goto :goto_0

    .line 37609
    :catch_0
    move-exception v0

    .line 37610
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 37623
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37626
    new-instance v0, Lesq;

    invoke-direct {v0}, Lesq;-><init>()V

    .line 38218
    invoke-virtual {v0, v2, v3}, Lesq;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37627
    if-eqz v0, :cond_0

    .line 37630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 37631
    if-eqz v0, :cond_5

    iget-wide v6, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    .line 37634
    iget-wide v6, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    .line 37635
    iget-object v1, p0, Leqs;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a(Leqs;Ljava/util/List;Ljava/lang/String;Leoe;)V
    .locals 8
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Leoe;

    .prologue
    .line 116
    .line 41759
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 41760
    :cond_0
    iget-object v0, p0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 41761
    :goto_0
    return-void

    .line 41764
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42055
    sget-object v0, Leoc$a;->a:Leoc;

    .line 41765
    iget v0, p0, Leqs;->l:I

    invoke-static {v0}, Leoc;->a(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v3

    .line 41766
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 41767
    if-eqz v0, :cond_2

    .line 41770
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 41772
    :try_start_0
    const-string/jumbo v1, "openId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41777
    const-string/jumbo v1, "alias"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 41778
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 41781
    iget-wide v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41786
    iget-wide v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41791
    iget-object v0, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v6, Lcom/alibaba/android/search/ContactSource;->Alias:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43055
    sget-object v0, Leoc$a;->a:Leoc;

    .line 41792
    invoke-static {v3, v5, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 41793
    if-eqz p3, :cond_3

    .line 43084
    iget-object v1, p3, Leoe;->a:Ljava/lang/String;

    .line 41794
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 43092
    iget v1, p3, Leoe;->b:I

    .line 41795
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 41797
    :cond_3
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 41798
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 41799
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41800
    iget v1, p0, Leqs;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leqs;->h:I

    .line 41803
    new-instance v1, Leqs$a;

    invoke-direct {v1, p0, v5}, Leqs$a;-><init>(Leqs;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 41804
    if-eqz v0, :cond_4

    .line 41805
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 43165
    iput-object v0, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 41807
    :cond_4
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v6, v7}, Leqs$a;->a(J)V

    goto/16 :goto_1

    .line 41773
    :catch_0
    move-exception v0

    .line 41774
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 41810
    :cond_5
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41811
    iget-object v0, p0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 41813
    invoke-direct {p0}, Leqs;->s()V

    goto/16 :goto_0
.end method

.method static synthetic a(Leqs;Ljava/util/List;Ljava/lang/String;Leoe;Z)V
    .locals 0
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Leoe;
    .param p4, "x4"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Leqs;->a(Ljava/util/List;Ljava/lang/String;Leoe;Z)V

    return-void
.end method

.method static synthetic a(Leqs;Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 116
    .line 48561
    if-eqz p2, :cond_a

    .line 48565
    new-instance v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    invoke-direct {v2}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;-><init>()V

    .line 48566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    .line 48567
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;

    .line 48568
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 48569
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 48570
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v6, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->version:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 48574
    iget-object v1, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48577
    :cond_1
    iget-object v0, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 48581
    invoke-static {}, Liaf;->c()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->updateTime:J

    .line 48582
    iget-object v0, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->size:I

    .line 48583
    new-instance v1, Lesi;

    invoke-direct {v1}, Lesi;-><init>()V

    .line 49040
    iput-object v2, v1, Lesi;->a:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 49086
    const/4 v0, 0x1

    iput-boolean v0, v1, Lesi;->g:Z

    .line 48586
    invoke-virtual {v1}, Lesi;->a()V

    .line 49098
    iget-object v0, v1, Lesi;->e:Lesh;

    .line 48588
    if-eqz v0, :cond_a

    .line 48592
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50098
    iget-object v0, v1, Lesi;->e:Lesh;

    .line 48594
    iget-object v0, v0, Lesh;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 50099
    iget-object v0, v1, Lesi;->e:Lesh;

    .line 48595
    iget-object v0, v0, Lesh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 48596
    if-eqz v0, :cond_2

    .line 48597
    iget-wide v6, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50100
    :cond_3
    iget-object v0, v1, Lesi;->e:Lesh;

    .line 48601
    iget-object v0, v0, Lesh;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 50101
    iget-object v0, v1, Lesi;->e:Lesh;

    .line 48602
    iget-object v0, v0, Lesh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 48603
    if-eqz v0, :cond_4

    .line 48604
    iget-wide v4, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48609
    :cond_5
    iget-object v0, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 48610
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48611
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 48612
    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/alibaba/android/search/model/RecommendContactModel;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 48616
    check-cast v1, Lcom/alibaba/android/search/model/RecommendContactModel;

    .line 48617
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUid()J

    move-result-wide v6

    .line 48618
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 48619
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 48620
    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48621
    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 48623
    :cond_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48624
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 48625
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 48626
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    .line 48628
    :cond_8
    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->setUserIntimacyPushObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_3

    .line 48632
    :cond_9
    iget-object v0, p0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 48633
    iget-object v0, p0, Leqs;->b:Leqp$b;

    instance-of v0, v0, Leqr$b;

    if-eqz v0, :cond_a

    .line 48634
    iget-object v0, p0, Leqs;->b:Leqp$b;

    check-cast v0, Leqr$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 116
    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "queryLog"    # Leoe;
    .param p3, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 1958
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Leqs;->a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;Z)V

    .line 1959
    return-void
.end method

.method private a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;Z)V
    .locals 10
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "queryLog"    # Leoe;
    .param p3, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    .param p4, "isExternal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1998
    if-eqz p3, :cond_0

    iget-object v5, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 1999
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 2000
    :cond_0
    iget-object v5, p0, Leqs;->b:Leqp$b;

    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Leqp$b;->a(Ljava/util/List;)V

    .line 2111
    :goto_0
    return-void

    .line 2005
    :cond_1
    if-eqz p4, :cond_6

    .line 29055
    sget-object v5, Leoc$a;->a:Leoc;

    .line 2006
    iget v5, p0, Leqs;->l:I

    invoke-static {v5}, Leoc;->d(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v4

    .line 2010
    .local v4, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2011
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v5, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2012
    .local v3, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2015
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_a

    .line 2016
    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 31055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 2017
    invoke-static {v4, v3, p1}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 2018
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz p2, :cond_3

    .line 31084
    iget-object v6, p2, Leoe;->a:Ljava/lang/String;

    .line 2019
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 31092
    iget v6, p2, Leoe;->b:I

    .line 2020
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 2023
    :cond_3
    invoke-static {v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2024
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogDe(Z)V

    .line 2027
    :cond_4
    iget-boolean v6, p0, Leqs;->O:Z

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->isRecallSearchResult()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2028
    const/4 v6, 0x1

    iput-boolean v6, p0, Leqs;->O:Z

    .line 2029
    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Leqs;->P:I

    .line 2030
    new-instance v6, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;

    invoke-direct {v6, p1}, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2032
    :cond_5
    if-eqz p4, :cond_7

    .line 2033
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2034
    const/4 v6, 0x0

    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2039
    :goto_3
    iget v6, p0, Leqs;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Leqs;->h:I

    .line 2040
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2041
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 2042
    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Lcom/alibaba/android/search/ContactSource;->UserProfile:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 30055
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v3    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v4    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :cond_6
    sget-object v5, Leoc$a;->a:Leoc;

    .line 2008
    iget v5, p0, Leqs;->l:I

    invoke-static {v5}, Leoc;->c(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v4

    .restart local v4    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto/16 :goto_1

    .line 2036
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .restart local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .restart local v3    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_7
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2037
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2044
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_8
    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/ContactSource;->Employee:Lcom/alibaba/android/search/ContactSource;

    if-eq v6, v7, :cond_2

    .line 2045
    invoke-static {v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2048
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 2049
    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 2050
    .restart local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2054
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 2055
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v6

    if-nez v6, :cond_9

    .line 2056
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/BaseModel;->setOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_2

    .line 2048
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2062
    .end local v1    # "i":I
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_a
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_2

    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2064
    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 32055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 2065
    invoke-static {v4, v3, p1}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 2066
    .restart local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz p2, :cond_b

    .line 32084
    iget-object v6, p2, Leoe;->a:Ljava/lang/String;

    .line 2067
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 32092
    iget v6, p2, Leoe;->b:I

    .line 2068
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 2071
    :cond_b
    invoke-static {v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2072
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogDe(Z)V

    .line 2076
    :cond_c
    iget-boolean v6, p0, Leqs;->O:Z

    if-nez v6, :cond_d

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->isRecallSearchResult()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2077
    const/4 v6, 0x1

    iput-boolean v6, p0, Leqs;->O:Z

    .line 2078
    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Leqs;->P:I

    .line 2079
    new-instance v6, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;

    invoke-direct {v6, p1}, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    :cond_d
    if-eqz p4, :cond_e

    .line 2082
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2083
    const/4 v6, 0x0

    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2088
    :goto_5
    iget v6, p0, Leqs;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Leqs;->h:I

    .line 2089
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2090
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 2091
    iget-object v6, p0, Leqs;->n:Ljava/util/Map;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Lcom/alibaba/android/search/ContactSource;->Employee:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2085
    :cond_e
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2086
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2107
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v3    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_f
    iget-object v5, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2108
    iget-object v5, p0, Leqs;->b:Leqp$b;

    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Leqp$b;->a(Ljava/util/List;)V

    .line 2110
    invoke-direct {p0}, Leqs;->s()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V
    .locals 14
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "queryLog"    # Leoe;
    .param p4, "contactSource"    # Lcom/alibaba/android/search/ContactSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Leoe;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/android/search/ContactSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1817
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1818
    :cond_0
    iget-object v7, p0, Leqs;->b:Leqp$b;

    iget-object v8, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v7, v8}, Leqp$b;->a(Ljava/util/List;)V

    .line 1878
    :goto_0
    return-void

    .line 1822
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24055
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    sget-object v7, Leoc$a;->a:Leoc;

    .line 1823
    iget v7, p0, Leqs;->l:I

    invoke-static {v7}, Leoc;->a(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v5

    .line 1824
    .local v5, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1825
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_2

    .line 1830
    iget v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    .line 1835
    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 1839
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v7, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1840
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v7, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1841
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->OrgNameSearch:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_3

    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1842
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v9, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v9, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    .line 1844
    :cond_3
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1845
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v7}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    .line 1848
    :cond_4
    iget-object v7, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1849
    iget-object v7, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25055
    sget-object v7, Leoc$a;->a:Leoc;

    .line 25091
    if-nez v6, :cond_6

    .line 25092
    const/4 v4, 0x0

    .line 1851
    .local v4, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 1852
    if-eqz p2, :cond_5

    .line 26084
    move-object/from16 v0, p2

    iget-object v7, v0, Leoe;->a:Ljava/lang/String;

    .line 1853
    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 26092
    move-object/from16 v0, p2

    iget v7, v0, Leoe;->b:I

    .line 1854
    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1856
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/alibaba/android/search/ContactSource;->getSearchLogType(Lcom/alibaba/android/search/ContactSource;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1857
    iget-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1858
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    iget v7, p0, Leqs;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Leqs;->h:I

    goto/16 :goto_1

    .line 25095
    .end local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    sget-object v7, Leoc$1;->a:[I

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 25106
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->NonRelationO2O:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_a

    new-instance v7, Lcom/alibaba/android/search/model/NonRelationO2OContactModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/NonRelationO2OContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 25110
    :goto_3
    invoke-virtual {v7, p1}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    move-object v4, v7

    .line 25112
    goto :goto_2

    .line 25097
    :pswitch_0
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->NonRelationO2O:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_7

    new-instance v7, Lcom/alibaba/android/search/model/NonRelationO2OContactModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/NonRelationO2OContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    :cond_7
    new-instance v7, Lcom/alibaba/android/search/model/FriendModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    .line 25100
    :pswitch_1
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->NonRelationO2O:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_8

    new-instance v7, Lcom/alibaba/android/search/model/NonRelationO2OContactSingleModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/NonRelationO2OContactSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    :cond_8
    new-instance v7, Lcom/alibaba/android/search/model/FriendChooseSingleModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/FriendChooseSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    .line 25103
    :pswitch_2
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->NonRelationO2O:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_9

    new-instance v7, Lcom/alibaba/android/search/model/NonRelationO2OContactMultiModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/NonRelationO2OContactMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    :cond_9
    new-instance v7, Lcom/alibaba/android/search/model/FriendChooseMultiModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/FriendChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    .line 25106
    :cond_a
    new-instance v7, Lcom/alibaba/android/search/model/FriendModel;

    invoke-direct {v7, v6}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    .line 1861
    :cond_b
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_4
    iget-object v7, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1862
    iget-object v7, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/search/model/BaseModel;

    .line 1863
    .restart local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1867
    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_c

    .line 1868
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 1861
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1874
    .end local v3    # "index":I
    .end local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_d
    iget-object v7, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1875
    iget-object v7, p0, Leqs;->b:Leqp$b;

    iget-object v8, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v7, v8}, Leqp$b;->a(Ljava/util/List;)V

    .line 1877
    invoke-direct {p0}, Leqs;->s()V

    goto/16 :goto_0

    .line 25095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1320
    .local p1, "oids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1321
    .local v6, "startTime":J
    new-instance v1, Leqs$5;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v5

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Leqs$5;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 1372
    .local v1, "searchTaskListener":Lcca;
    iget-object v0, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1373
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcca;

    iget-object v3, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "searchTaskListener":Lcca;
    check-cast v1, Lcca;

    .line 1376
    .restart local v1    # "searchTaskListener":Lcca;
    :cond_0
    iget v0, p0, Leqs;->g:I

    iget-object v2, p0, Leqs;->e:Ljava/lang/String;

    .line 18120
    const/16 v3, 0x64

    .line 19048
    if-eqz v1, :cond_6

    .line 19052
    invoke-static {}, Leue;->a()Leue;

    move-result-object v4

    .line 19672
    new-instance v5, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v5}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 19673
    const-string/jumbo v8, "org_employee_closest"

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 19674
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 19675
    new-instance v8, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v9, "tb_org_employee_closest"

    invoke-direct {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 19676
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "emp_name"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 19677
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "uid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "oid"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "avatar"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "emp_name"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "mobile"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 19678
    if-ltz v0, :cond_1

    .line 19679
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v8, v0, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 19681
    :cond_1
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19682
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 19684
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 20044
    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 19686
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    .line 19689
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_3

    const-string/jumbo v0, "("

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 19690
    const-string/jumbo v0, "oid="

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 19689
    :cond_3
    const-string/jumbo v0, " OR "

    goto :goto_1

    .line 19692
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 19693
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 19694
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->indexWhereCondition:Ljava/lang/String;

    .line 19052
    :cond_5
    new-instance v0, Lenr$1;

    invoke-direct {v0, v1}, Lenr$1;-><init>(Lcca;)V

    invoke-virtual {v4, v2, v5, v0}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 1377
    :cond_6
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Leoe;Z)V
    .locals 30
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "queryLog"    # Leoe;
    .param p4, "fromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;",
            "Ljava/lang/String;",
            "Leoe;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 1431
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v9, v0, Leqs;->d:Ljava/util/List;

    invoke-interface {v8, v9}, Leqp$b;->a(Ljava/util/List;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->b:Leqp$b;

    instance-of v8, v8, Leqr$b;

    if-eqz v8, :cond_1

    .line 1433
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->b:Leqp$b;

    check-cast v8, Leqr$b;

    sget-object v9, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    move-object/from16 v0, p0

    iget-object v15, v0, Leqs;->D:Ljava/util/List;

    invoke-interface {v8, v9, v15}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 1558
    :cond_1
    :goto_0
    return-void

    .line 1438
    :cond_2
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    .line 1439
    .local v4, "currentTime":J
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 20055
    .local v20, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    sget-object v8, Leoc$a;->a:Leoc;

    .line 1440
    move-object/from16 v0, p0

    iget v8, v0, Leqs;->l:I

    .line 20438
    packed-switch v8, :pswitch_data_0

    .line 20450
    sget-object v23, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 1441
    .local v23, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_1
    invoke-static {}, Lese;->c()J

    move-result-wide v10

    .line 1442
    .local v10, "granularity":J
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v21, "getProfileUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 1446
    .local v25, "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-lez v8, :cond_3

    .line 1450
    if-nez p4, :cond_6

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->matchHightlightKeyword(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1451
    const-string/jumbo v8, "abandon mismatch keyword"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 21073
    const-string/jumbo v16, "search_rec"

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    if-eqz p3, :cond_3

    .line 1454
    const-string/jumbo v8, "-406"

    .line 21168
    move-object/from16 v0, p3

    iput-object v8, v0, Leoe;->i:Ljava/lang/String;

    .line 1455
    const-string/jumbo v9, "mismatch keyword: %s %s %s"

    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v8, 0x0

    aput-object p2, v16, v8

    const/16 v17, 0x1

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 1456
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, ""

    :goto_3
    aput-object v8, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 1457
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, ""

    :goto_4
    aput-object v8, v16, v17

    .line 1455
    move-object/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 21176
    move-object/from16 v0, p3

    iput-object v8, v0, Leoe;->j:Ljava/lang/String;

    .line 1459
    sget-object v8, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v8}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v8, v9, v1, v2}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 20440
    .end local v10    # "granularity":J
    .end local v21    # "getProfileUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v23    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .end local v25    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :pswitch_0
    sget-object v23, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto/16 :goto_1

    .line 20443
    :pswitch_1
    sget-object v23, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto/16 :goto_1

    .line 20447
    :pswitch_2
    sget-object v23, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContactChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto/16 :goto_1

    .line 1456
    .restart local v10    # "granularity":J
    .restart local v21    # "getProfileUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v23    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .restart local v25    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_4
    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    goto :goto_3

    .line 1457
    :cond_5
    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    goto :goto_4

    .line 1469
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->n:Ljava/util/Map;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1473
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->n:Ljava/util/Map;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v16, Lcom/alibaba/android/search/ContactSource;->Recommend:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, v16

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22055
    sget-object v8, Leoc$a;->a:Leoc;

    .line 22198
    if-nez v25, :cond_8

    .line 22199
    const/16 v22, 0x0

    .line 1478
    .local v22, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_5
    if-eqz p3, :cond_7

    .line 23084
    move-object/from16 v0, p3

    iget-object v8, v0, Leoe;->a:Ljava/lang/String;

    .line 1479
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 23092
    move-object/from16 v0, p3

    iget v8, v0, Leoe;->b:I

    .line 1480
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1482
    :cond_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Leqs;->M:J

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-wide/from16 v16, v0

    cmp-long v8, v8, v16

    if-nez v8, :cond_9

    .line 1483
    sget-object v8, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v8}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1487
    :goto_6
    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 1489
    .local v6, "modifiedTime":J
    move-object/from16 v0, v25

    iget-wide v12, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 1490
    .local v12, "score":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Leqs;->F:D

    invoke-static/range {v4 .. v13}, Lesc;->a(JJDJD)D

    move-result-wide v26

    .line 1491
    .local v26, "weight":D
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/search/model/BaseModel;->setModifyTime(J)V

    .line 1492
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/android/search/model/BaseModel;->setScore(D)V

    .line 1493
    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/search/model/BaseModel;->setWeight(D)V

    .line 1494
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 22202
    .end local v6    # "modifiedTime":J
    .end local v12    # "score":D
    .end local v22    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v26    # "weight":D
    :cond_8
    sget-object v8, Leoc$1;->a:[I

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 22213
    new-instance v8, Lcom/alibaba/android/search/model/RecommendContactModel;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 22217
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    move-object/from16 v22, v8

    .line 22219
    goto :goto_5

    .line 22204
    :pswitch_3
    new-instance v8, Lcom/alibaba/android/search/model/RecommendContactModel;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_7

    .line 22207
    :pswitch_4
    new-instance v8, Lcom/alibaba/android/search/model/RecommendContactChooseSingleModel;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lcom/alibaba/android/search/model/RecommendContactChooseSingleModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_7

    .line 22210
    :pswitch_5
    new-instance v8, Lcom/alibaba/android/search/model/RecommendContactChooseMultiModel;

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lcom/alibaba/android/search/model/RecommendContactChooseMultiModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_7

    .line 1485
    .restart local v22    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_9
    sget-object v8, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v8}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    goto :goto_6

    .line 1498
    .end local v22    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v25    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_a
    if-nez p4, :cond_b

    .line 1499
    new-instance v8, Leta;

    invoke-direct {v8}, Leta;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1502
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->d:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v9, v0, Leqs;->d:Ljava/util/List;

    invoke-interface {v8, v9}, Leqp$b;->a(Ljava/util/List;)V

    .line 1505
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Leqs;->c(Ljava/util/List;)V

    .line 1507
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Leqs;->a(Leoe;Ljava/util/List;)V

    .line 1509
    if-nez p4, :cond_10

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    const-string/jumbo v9, "update_user_intimacy_push_data"

    const/4 v15, 0x0

    invoke-virtual {v8, v9, v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1510
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1511
    .local v19, "uidVerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 1512
    .restart local v25    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Leqs;->M:J

    move-wide/from16 v28, v0

    cmp-long v9, v16, v28

    if-eqz v9, :cond_c

    .line 1513
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->version:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v19

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1516
    .end local v25    # "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    .line 1517
    new-instance v14, Leqs$7;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v18

    move-object/from16 v15, p0

    move-object/from16 v16, p0

    invoke-direct/range {v14 .. v19}, Leqs$7;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;Ljava/util/Map;)V

    .line 1543
    .local v14, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v8, :cond_e

    .line 1544
    const-string/jumbo v8, "EVENTBUTLER"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v9, Lcma;

    move-object/from16 v0, p0

    iget-object v15, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v8, v14, v9, v15}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    check-cast v14, Lcma;

    .line 1546
    .restart local v14    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    :cond_e
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-interface {v8, v0, v14}, Lenb;->a(Ljava/util/Map;Lcma;)V

    .line 1550
    .end local v14    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-wide v8, v0, Leqs;->M:J

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-lez v8, :cond_1

    .line 1551
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    .local v24, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-wide v8, v0, Leqs;->M:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Leqs;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1556
    .end local v19    # "uidVerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v24    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Leqs;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 20438
    .line 22202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Leqs;Z)Z
    .locals 1
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqs;->o:Z

    return v0
.end method

.method static synthetic b(Leqs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-object v0, p0, Leqs;->K:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Leqs;Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 1
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leoe;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 116
    .line 47963
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Leqs;->a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;Z)V

    .line 116
    return-void
.end method

.method static synthetic b(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V
    .locals 0
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leoe;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/android/search/ContactSource;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Leqs;->a(Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V

    return-void
.end method

.method static synthetic b(Leqs;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 116
    .line 38641
    iget v1, p0, Leqs;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leqs;->G:I

    .line 38643
    if-nez p1, :cond_1

    .line 38644
    iput-boolean v0, p0, Leqs;->H:Z

    .line 38645
    :cond_0
    return-void

    .line 38647
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Leqs;->H:Z

    .line 38649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 38650
    if-eqz v0, :cond_3

    .line 38654
    invoke-static {v0}, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v0

    .line 38655
    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 38658
    iget-object v2, p0, Leqs;->K:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1639
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1700
    :goto_0
    return-void

    .line 1642
    :cond_0
    new-instance v0, Leqs$8;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Leqs$8;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 1696
    .local v0, "apiEventListener":Lcma;
    iget-object v1, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 1697
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 1699
    .restart local v0    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Leqs;Ljava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Leqs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 116
    .line 47300
    const-string/jumbo v1, "500"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47303
    :cond_0
    :goto_0
    return v0

    .line 47302
    :cond_1
    const-string/jumbo v1, "40006"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47305
    const/4 v0, 0x0

    .line 116
    goto :goto_0
.end method

.method static synthetic c(Leqs;)I
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget v0, p0, Leqs;->C:I

    return v0
.end method

.method private c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2307
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v7, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v7}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v4

    .line 2308
    .local v4, "recommendGroupSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 2309
    .local v5, "size":I
    sub-int v3, v5, v4

    .line 2310
    .local v3, "leftOver":I
    const/4 v1, 0x0

    .line 2312
    .local v1, "fromIndex":I
    if-lez v4, :cond_1

    iget-object v7, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v4, :cond_1

    .line 2314
    iget-object v7, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2316
    iget-object v7, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 2317
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2318
    .local v6, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 2319
    move v1, v2

    .line 2320
    iget-object v7, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2322
    :cond_0
    iput-object v6, p0, Leqs;->D:Ljava/util/List;

    .line 2326
    .end local v2    # "i":I
    .end local v6    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_1
    iget-object v7, p0, Leqs;->b:Leqp$b;

    instance-of v7, v7, Leqr$b;

    if-eqz v7, :cond_3

    .line 2327
    iget-object v7, p0, Leqs;->b:Leqp$b;

    check-cast v7, Leqr$b;

    sget-object v8, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v9, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v7, v8, v9}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 2328
    if-lez v3, :cond_3

    .line 2329
    invoke-static {v3}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2330
    .local v0, "contactModel":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 2331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2334
    :cond_2
    iget-object v7, p0, Leqs;->b:Leqp$b;

    check-cast v7, Leqr$b;

    sget-object v8, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v7, v8, v0}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 2337
    .end local v0    # "contactModel":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method static synthetic d(Leqs;)Z
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-boolean v0, p0, Leqs;->H:Z

    return v0
.end method

.method static synthetic e(Leqs;)Z
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-boolean v0, p0, Leqs;->I:Z

    return v0
.end method

.method static synthetic f(Leqs;)J
    .locals 2
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-wide v0, p0, Leqs;->M:J

    return-wide v0
.end method

.method static synthetic g(Leqs;)V
    .locals 10
    .param p0, "x0"    # Leqs;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    .line 39474
    invoke-virtual {p0}, Leqs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39475
    invoke-direct {p0, v1, v1, v1, v2}, Leqs;->a(Ljava/util/List;Ljava/lang/String;Leoe;Z)V

    .line 39476
    iput v2, p0, Leqs;->C:I

    .line 39477
    invoke-virtual {p0}, Leqs;->a()V

    .line 39478
    :goto_0
    return-void

    .line 39481
    :cond_0
    new-instance v9, Leqs$11;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v1

    invoke-direct {v9, p0, p0, v0, v1}, Leqs$11;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 39547
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 39548
    const-string/jumbo v0, "sys.recommend.visible"

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 39549
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v0

    .line 40084
    iget-object v2, v0, Leoe;->a:Ljava/lang/String;

    .line 39549
    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Leqs;->m:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-wide v4, p0, Leqs;->m:J

    :goto_1
    iget-object v6, p0, Leqs;->B:Ljava/lang/String;

    const/16 v7, 0x64

    invoke-interface/range {v1 .. v9}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method static synthetic h(Leqs;)V
    .locals 6
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    .line 44821
    invoke-virtual {p0}, Leqs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44822
    const/16 v0, 0xc

    iput v0, p0, Leqs;->C:I

    .line 44823
    invoke-virtual {p0}, Leqs;->a()V

    .line 44824
    :goto_0
    return-void

    .line 44827
    :cond_0
    new-instance v5, Leqs$15;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v1

    invoke-direct {v5, p0, p0, v0, v1}, Leqs$15;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 44880
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v1

    .line 45084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 44880
    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-interface/range {v0 .. v5}, Lenb;->d(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method static synthetic i(Leqs;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-object v0, p0, Leqs;->N:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic j(Leqs;)V
    .locals 0
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    invoke-direct {p0}, Leqs;->r()V

    return-void
.end method

.method static synthetic k(Leqs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-object v0, p0, Leqs;->D:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Leqs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    iget-object v0, p0, Leqs;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Leqs;)V
    .locals 0
    .param p0, "x0"    # Leqs;

    .prologue
    .line 116
    invoke-direct {p0}, Leqs;->t()V

    return-void
.end method

.method private r()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1050
    .local v6, "startTime":J
    new-instance v1, Leqs$2;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v5

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Leqs$2;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 1107
    .local v1, "searchTaskListener":Lcca;
    iget v0, p0, Leqs;->g:I

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    .line 17161
    const/16 v3, 0x64

    .line 17274
    if-eqz v1, :cond_1

    .line 17278
    invoke-static {}, Leue;->a()Leue;

    move-result-object v4

    .line 17811
    new-instance v5, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v5}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 17812
    const-string/jumbo v8, "task_user"

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 17813
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 17814
    new-instance v8, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v9, "tbuser"

    invoke-direct {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 17815
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nick"

    aput-object v10, v9, v11

    const-string/jumbo v10, "alias"

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 17816
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/16 v9, 0x1b

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "uid"

    aput-object v10, v9, v11

    const-string/jumbo v10, "profileType"

    aput-object v10, v9, v12

    const-string/jumbo v10, "tag"

    aput-object v10, v9, v13

    const/4 v10, 0x3

    const-string/jumbo v11, "iconMediaId"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "nickpinyin"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "nickAlpha"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "gender"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "city"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "stateCode"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "mobile"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "modifyTime"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string/jumbo v11, "labels"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string/jumbo v11, "data_complete"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string/jumbo v11, "is_orguser"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string/jumbo v11, "is_active"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string/jumbo v11, "real_name"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string/jumbo v11, "user_type"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string/jumbo v11, "extensation"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string/jumbo v11, "alias"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string/jumbo v11, "aliaspinyin"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string/jumbo v11, "dingtaklId"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string/jumbo v11, "email"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string/jumbo v11, "authOrg"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string/jumbo v11, "activeTime"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string/jumbo v11, "status"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string/jumbo v11, "orgEmail"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 17820
    if-ltz v0, :cond_0

    .line 17821
    iget-object v8, v5, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v8, v0, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 17278
    :cond_0
    new-instance v0, Lenr$2;

    invoke-direct {v0, v1}, Lenr$2;-><init>(Lcca;)V

    invoke-virtual {v4, v2, v5, v0}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 1108
    :cond_1
    return-void
.end method

.method private s()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2373
    .line 35341
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35342
    :cond_0
    invoke-direct {p0}, Leqs;->t()V

    .line 35349
    :goto_0
    return-void

    .line 35346
    :cond_1
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v1

    .line 35347
    if-nez v1, :cond_2

    .line 35348
    invoke-direct {p0}, Leqs;->t()V

    goto :goto_0

    .line 35352
    :cond_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 35353
    new-instance v2, Leqs$10;

    invoke-direct {v2, p0}, Leqs$10;-><init>(Leqs;)V

    const-class v3, Lcov;

    iget-object v4, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    .line 35365
    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lenh;->a(Ljava/lang/String;Lcov;)V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2377
    iget-object v2, p0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x1

    .line 2378
    .local v1, "limitCount":I
    iget-boolean v2, p0, Leqs;->O:Z

    if-eqz v2, :cond_0

    .line 2379
    add-int/lit8 v1, v1, 0x1

    .line 2381
    :cond_0
    iget-object v2, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 2382
    iget-object v2, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2383
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Leqs;->d:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2384
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget v2, p0, Leqs;->P:I

    if-ltz v2, :cond_1

    iget v2, p0, Leqs;->P:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Leqs;->P:I

    .line 2385
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;

    if-eqz v2, :cond_1

    .line 2386
    iget v2, p0, Leqs;->P:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2389
    :cond_1
    iget-object v2, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2390
    iget-object v2, p0, Leqs;->b:Leqp$b;

    instance-of v2, v2, Leqr$b;

    if-eqz v2, :cond_2

    .line 2391
    iget-object v2, p0, Leqs;->b:Leqp$b;

    check-cast v2, Leqr$b;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v4, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 2395
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public final A_()Z
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Leqs;->q:Z

    return v0
.end method

.method public final a()V
    .locals 21

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->C:I

    packed-switch v2, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 274
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->p:Z

    if-eqz v2, :cond_2

    .line 4376
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->K:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4377
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Leqs;->M:J

    .line 4378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4379
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;)Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    move-result-object v2

    .line 4380
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->isContactClickHistory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4382
    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 4384
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs;->K:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4385
    iget-object v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Leqs;->M:J

    .line 4386
    const-string/jumbo v2, "[Contact]found click history"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 5050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4389
    :cond_1
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 4390
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto :goto_0

    .line 277
    :cond_2
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 278
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto :goto_0

    .line 282
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->q:Z

    if-eqz v2, :cond_5

    .line 5400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->G:I

    .line 5402
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leqs;->H:Z

    .line 5403
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leqs;->I:Z

    .line 5404
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->p:Z

    if-nez v2, :cond_3

    .line 5405
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->K:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5407
    :cond_3
    new-instance v3, Leqs$1;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$1;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 5469
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v3}, Lenu;->g(IILjava/lang/String;Lcca;)V

    .line 5470
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v4

    .line 6129
    const/16 v5, 0x64

    .line 6149
    if-eqz v3, :cond_0

    .line 6153
    invoke-static {}, Leue;->a()Leue;

    move-result-object v6

    .line 6750
    new-instance v7, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v7}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 6751
    const-string/jumbo v8, "task_recommend_contact"

    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 6752
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->f()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 6753
    new-instance v8, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v9, "tb_user_intimacy"

    invoke-direct {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6754
    iget-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "empName"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6755
    iget-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "uid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "score"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "modifyTime"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "orgId"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "empName"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "orgName"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "depName"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "avatar"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "ver"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6759
    if-ltz v2, :cond_4

    .line 6760
    iget-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v8, v2, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6153
    :cond_4
    new-instance v2, Lenr$16;

    invoke-direct {v2, v3}, Lenr$16;-><init>(Lcca;)V

    invoke-virtual {v6, v4, v7, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto/16 :goto_0

    .line 285
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 286
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 290
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->r:Z

    if-eqz v2, :cond_6

    .line 7664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7665
    new-instance v3, Leqs$12;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$12;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 7711
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v3}, Lenu;->g(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 293
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 294
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 298
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->s:Z

    if-eqz v2, :cond_7

    .line 7716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7717
    new-instance v3, Leqs$13;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$13;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 7761
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v3}, Lenu;->f(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 301
    :cond_7
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 302
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 306
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->t:Z

    if-eqz v2, :cond_8

    .line 7766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7767
    new-instance v3, Leqs$14;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$14;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 7817
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v3}, Lenu;->e(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 309
    :cond_8
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 310
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 314
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->z:Z

    if-eqz v2, :cond_a

    .line 7937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7938
    new-instance v3, Leqs$17;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$17;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 7982
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v4

    .line 8100
    const/16 v5, 0x64

    .line 8249
    if-eqz v3, :cond_0

    .line 8253
    invoke-static {}, Leue;->a()Leue;

    move-result-object v6

    .line 8869
    new-instance v7, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v7}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 8870
    const-string/jumbo v8, "friend_org_name"

    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 8871
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 8873
    new-instance v8, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v9, "tbuser"

    invoke-direct {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 8874
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "authOrgName"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8875
    const/16 v9, 0x1c

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "uid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "profileType"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "tag"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "iconMediaId"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "nick"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "nickpinyin"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "nickAlpha"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "gender"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "city"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "stateCode"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "mobile"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "modifyTime"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string/jumbo v11, "labels"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string/jumbo v11, "data_complete"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string/jumbo v11, "is_orguser"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string/jumbo v11, "is_active"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string/jumbo v11, "real_name"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string/jumbo v11, "user_type"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string/jumbo v11, "extensation"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string/jumbo v11, "alias"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string/jumbo v11, "aliaspinyin"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string/jumbo v11, "dingtaklId"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string/jumbo v11, "email"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string/jumbo v11, "authOrg"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string/jumbo v11, "activeTime"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string/jumbo v11, "status"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string/jumbo v11, "orgEmail"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string/jumbo v11, "orgInfo"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8880
    new-instance v9, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v10, "tb_friend_connection"

    invoke-direct {v9, v10}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 8881
    if-ltz v2, :cond_9

    .line 8882
    invoke-virtual {v9, v2, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8884
    :cond_9
    const-string/jumbo v2, "uid"

    const-string/jumbo v5, "uid"

    invoke-virtual {v8, v9, v2, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8886
    iput-object v8, v7, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8253
    new-instance v2, Lenr$20;

    invoke-direct {v2, v3}, Lenr$20;-><init>(Lcca;)V

    invoke-virtual {v6, v4, v7, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto/16 :goto_0

    .line 317
    :cond_a
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 318
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 322
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->u:Z

    if-eqz v2, :cond_b

    .line 9885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 9886
    new-instance v3, Leqs$16;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Leqs$16;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V

    .line 9932
    move-object/from16 v0, p0

    iget v2, v0, Leqs;->g:I

    const/16 v4, 0x64

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    .line 10112
    invoke-static {v2, v4, v5, v3}, Lenr;->a(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 325
    :cond_b
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 326
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 330
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->y:Z

    if-eqz v2, :cond_d

    .line 331
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_non_relation_contacts"

    .line 11083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 331
    if-eqz v2, :cond_d

    .line 11986
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->N:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 11988
    new-instance v3, Leqs$18;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v2, v4}, Leqs$18;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 12037
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_18

    .line 12038
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    move-object/from16 v0, p0

    iget-object v5, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 12040
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ILcma;)V

    .line 12041
    const-string/jumbo v2, "[Contact]listConversations"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 12050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 12043
    :cond_c
    invoke-direct/range {p0 .. p0}, Leqs;->r()V

    goto/16 :goto_0

    .line 334
    :cond_d
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 335
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 339
    :pswitch_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->v:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Leqs;->p()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 12112
    move-object/from16 v0, p0

    iget-wide v2, v0, Leqs;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 12113
    move-object/from16 v0, p0

    iget-wide v6, v0, Leqs;->m:J

    .line 12215
    new-instance v10, Leqs$4;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1, v2, v3}, Leqs$4;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 12286
    const-string/jumbo v2, "0"

    .line 12287
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "open_new_global_search"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12286
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 12288
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v2

    .line 13084
    iget-object v4, v2, Leoe;->a:Ljava/lang/String;

    .line 12288
    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Leqs;->g:I

    const/16 v9, 0x64

    invoke-interface/range {v3 .. v10}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JIILcma;)V

    goto/16 :goto_0

    .line 12290
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-nez v2, :cond_f

    .line 12291
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 12293
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const-string/jumbo v3, "sys.callback.visible"

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 12295
    :cond_f
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v2

    .line 14084
    iget-object v12, v2, Leoe;->a:Ljava/lang/String;

    .line 12295
    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Leqs;->B:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v18, v0

    move-wide v14, v6

    move-object/from16 v19, v10

    invoke-interface/range {v11 .. v19}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto/16 :goto_0

    .line 14121
    :cond_10
    new-instance v7, Leqs$3;

    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1, v2, v3}, Leqs$3;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 14196
    const-string/jumbo v2, "0"

    .line 14197
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "open_new_global_search"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14196
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 14198
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v3

    .line 15084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 14198
    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Leqs;->g:I

    const/16 v6, 0x64

    invoke-interface/range {v2 .. v7}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;IILcmb;)V

    goto/16 :goto_0

    .line 14200
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-nez v2, :cond_12

    .line 14201
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 14203
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->R:Z

    if-eqz v2, :cond_13

    .line 14204
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const-string/jumbo v3, "sys.deleted.visible"

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 14209
    :cond_12
    :goto_2
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v2

    .line 16084
    iget-object v10, v2, Leoe;->a:Ljava/lang/String;

    .line 14209
    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Leqs;->B:Ljava/lang/String;

    const/16 v15, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-interface/range {v9 .. v17}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto/16 :goto_0

    .line 14206
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const-string/jumbo v3, "sys.callback.visible"

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    goto :goto_2

    .line 342
    :cond_14
    const/16 v2, 0xe

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 343
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 347
    :pswitch_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leqs;->w:Z

    if-eqz v2, :cond_16

    .line 348
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->k()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 16309
    move-object/from16 v0, p0

    iget-wide v2, v0, Leqs;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 16310
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16311
    move-object/from16 v0, p0

    iget-wide v4, v0, Leqs;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16312
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Leqs;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 16314
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Leqs;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 351
    :cond_16
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 352
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 356
    :pswitch_b
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_low_credibility_rec_reorder"

    invoke-virtual {v2, v3}, Lchx;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->L:Ljava/util/List;

    .line 357
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 358
    new-instance v20, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;-><init>()V

    .line 359
    .local v20, "orgNodeItemWrapperObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Leqs;->L:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 360
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Leqs;->L:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Leqs;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqs;->j()Leoe;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Leqs;->a(Ljava/lang/String;Leoe;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 365
    .end local v20    # "orgNodeItemWrapperObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    :cond_17
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Leqs;->C:I

    .line 366
    invoke-virtual/range {p0 .. p0}, Leqs;->a()V

    goto/16 :goto_0

    .line 369
    :pswitch_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leqs;->f:Z

    .line 370
    invoke-virtual/range {p0 .. p0}, Leqs;->o()V

    goto/16 :goto_0

    :cond_18
    move-object v2, v3

    goto/16 :goto_1

    .line 272
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_b
        :pswitch_6
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 2239
    iput-wide p1, p0, Leqs;->m:J

    .line 2240
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 0
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 2428
    iput-object p1, p0, Leqs;->J:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 2429
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 9
    .param p1, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1968
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_search_low_credibility_rec_reorder"

    .line 27083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1968
    if-eqz v4, :cond_2

    .line 1969
    const-string/jumbo v4, "[Contact]appending low credibility contacts %d"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Leqs;->L:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 28050
    const-string/jumbo v6, "search"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 1971
    const/4 v3, -0x1

    .line 1972
    .local v3, "recallIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1973
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1974
    .local v2, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCallbackMode:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1975
    move v3, v0

    .line 1979
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_0
    if-ltz v3, :cond_2

    .line 1980
    const-string/jumbo v4, "processOrgContacts.recallIndex=%s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 29050
    const-string/jumbo v6, "search"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1982
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1983
    .local v1, "lowCredibilitys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    iget-object v4, p0, Leqs;->L:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1988
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-lt v0, v3, :cond_2

    .line 1989
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1988
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1972
    .end local v1    # "lowCredibilitys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .restart local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1995
    .end local v0    # "i":I
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "recallIndex":I
    :cond_2
    return-void
.end method

.method protected final a(Ljava/lang/String;Leoe;Ljava/util/List;)V
    .locals 10
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "queryLog"    # Leoe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Leoe;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2114
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 2115
    :cond_0
    iget-object v5, p0, Leqs;->b:Leqp$b;

    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Leqp$b;->a(Ljava/util/List;)V

    .line 2145
    :goto_0
    return-void

    .line 33055
    :cond_1
    sget-object v5, Leoc$a;->a:Leoc;

    .line 2118
    iget v5, p0, Leqs;->l:I

    .line 33481
    packed-switch v5, :pswitch_data_0

    .line 33493
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployee:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 2119
    .local v4, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2120
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 2121
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromLocalEmployeeMaps(Ljava/util/Map;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v3

    .line 2122
    .local v3, "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v3, :cond_3

    iget-wide v6, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 2127
    iget-object v5, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2128
    iget-object v5, p0, Leqs;->n:Ljava/util/Map;

    iget-wide v6, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/ContactSource;->LocalEmployee:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34055
    sget-object v5, Leoc$a;->a:Leoc;

    .line 34224
    if-nez v3, :cond_4

    .line 34225
    const/4 v2, 0x0

    .line 2130
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_3
    if-eqz p2, :cond_2

    .line 35084
    iget-object v5, p2, Leoe;->a:Ljava/lang/String;

    .line 2131
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 35092
    iget v5, p2, Leoe;->b:I

    .line 2132
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 2135
    :cond_2
    sget-object v5, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_EMPLOYEE_CACHE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2136
    iget-wide v6, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 2137
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2138
    iget v5, p0, Leqs;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Leqs;->h:I

    .line 2120
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33483
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .end local v1    # "i":I
    .end local v3    # "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v4    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_0
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployee:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_1

    .line 33486
    :pswitch_1
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployeeChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_1

    .line 33490
    :pswitch_2
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployeeChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_1

    .line 34230
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .restart local v1    # "i":I
    .restart local v3    # "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .restart local v4    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :cond_4
    sget-object v5, Leoc$1;->a:[I

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 34241
    new-instance v5, Lcom/alibaba/android/search/model/LocalEmployeeModel;

    invoke-direct {v5, v3}, Lcom/alibaba/android/search/model/LocalEmployeeModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 34245
    :goto_4
    invoke-virtual {v5, p1}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    move-object v2, v5

    .line 34246
    goto :goto_3

    .line 34232
    :pswitch_3
    new-instance v5, Lcom/alibaba/android/search/model/LocalEmployeeModel;

    invoke-direct {v5, v3}, Lcom/alibaba/android/search/model/LocalEmployeeModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_4

    .line 34235
    :pswitch_4
    new-instance v5, Lcom/alibaba/android/search/model/LocalEmployeeChooseSingleModel;

    invoke-direct {v5, v3}, Lcom/alibaba/android/search/model/LocalEmployeeChooseSingleModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_4

    .line 34238
    :pswitch_5
    new-instance v5, Lcom/alibaba/android/search/model/LocalEmployeeChooseMultiModel;

    invoke-direct {v5, v3}, Lcom/alibaba/android/search/model/LocalEmployeeChooseMultiModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto :goto_4

    .line 2142
    .end local v3    # "pushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_5
    iget-object v5, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2143
    iget-object v5, p0, Leqs;->b:Leqp$b;

    iget-object v6, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Leqp$b;->a(Ljava/util/List;)V

    .line 2144
    invoke-direct {p0}, Leqs;->s()V

    goto/16 :goto_0

    .line 33481
    .line 34230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "isMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    if-eqz p2, :cond_2

    .line 209
    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v0

    .line 3148
    iget-wide v0, v0, Leoe;->g:J

    .line 209
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3152
    iput-wide v2, v0, Leoe;->g:J

    .line 212
    :cond_0
    invoke-virtual {p0}, Leqs;->n()V

    .line 213
    invoke-virtual {p0}, Leqs;->a()V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-virtual {p0, p1}, Leqs;->b(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Leqs;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p0}, Leqs;->m()V

    .line 220
    invoke-virtual {p0}, Leqs;->n()V

    .line 221
    invoke-virtual {p0}, Leqs;->a()V

    .line 222
    iget-boolean v0, p0, Leqs;->x:Z

    if-nez v0, :cond_1

    .line 3381
    iget-boolean v0, p0, Leqs;->o:Z

    if-nez v0, :cond_1

    .line 3384
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqs;->o:Z

    .line 3386
    new-instance v0, Leqs$6;

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Leqs;->j()Leoe;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Leqs$6;-><init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V

    .line 3425
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    invoke-virtual {p0}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4, v0}, Lenb;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0}, Leqs;->d()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4
    .param p1, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2249
    iput p1, p0, Leqs;->A:I

    .line 2250
    iget v0, p0, Leqs;->A:I

    if-nez v0, :cond_0

    .line 2251
    iput v1, p0, Leqs;->A:I

    .line 2255
    :cond_0
    iput-boolean v2, p0, Leqs;->p:Z

    .line 2256
    iput-boolean v2, p0, Leqs;->q:Z

    .line 2257
    iput-boolean v2, p0, Leqs;->r:Z

    .line 2258
    iput-boolean v2, p0, Leqs;->s:Z

    .line 2259
    iput-boolean v2, p0, Leqs;->t:Z

    .line 2260
    iput-boolean v2, p0, Leqs;->u:Z

    .line 2261
    iput-boolean v2, p0, Leqs;->v:Z

    .line 2262
    iput-boolean v2, p0, Leqs;->z:Z

    .line 2263
    iput-boolean v2, p0, Leqs;->y:Z

    .line 2264
    iput-boolean v2, p0, Leqs;->w:Z

    .line 2266
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2267
    iput-boolean v1, p0, Leqs;->q:Z

    .line 2268
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Leqs;->l:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Leqs;->p:Z

    .line 2271
    :cond_1
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2272
    iput-boolean v1, p0, Leqs;->r:Z

    .line 2274
    :cond_2
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2275
    iput-boolean v1, p0, Leqs;->s:Z

    .line 2277
    :cond_3
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2278
    iput-boolean v1, p0, Leqs;->t:Z

    .line 2279
    iput-boolean v1, p0, Leqs;->z:Z

    .line 2281
    :cond_4
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2282
    iput-boolean v1, p0, Leqs;->u:Z

    .line 2284
    :cond_5
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2285
    iput-boolean v1, p0, Leqs;->v:Z

    .line 2288
    :cond_6
    iget v0, p0, Leqs;->A:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2289
    iput-boolean v1, p0, Leqs;->w:Z

    .line 2292
    :cond_7
    iget v0, p0, Leqs;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 2293
    iput-boolean v1, p0, Leqs;->p:Z

    .line 2294
    iput-boolean v1, p0, Leqs;->q:Z

    .line 2295
    iput-boolean v1, p0, Leqs;->r:Z

    .line 2296
    iput-boolean v2, p0, Leqs;->s:Z

    .line 2297
    iput-boolean v1, p0, Leqs;->t:Z

    .line 2298
    iput-boolean v1, p0, Leqs;->z:Z

    .line 2299
    iput-boolean v1, p0, Leqs;->u:Z

    .line 2300
    iput-boolean v1, p0, Leqs;->v:Z

    .line 2301
    iput-boolean v1, p0, Leqs;->y:Z

    .line 2302
    iput-boolean v1, p0, Leqs;->w:Z

    .line 2304
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 2268
    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    invoke-super {p0}, Leqq;->d()V

    .line 233
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leqs;->B:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Leqs;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Leqs;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 238
    iget-object v0, p0, Leqs;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqs;->O:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Leqs;->P:I

    .line 241
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leqs;->M:J

    .line 242
    iget-object v0, p0, Leqs;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    return-void
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2434
    iget v0, p0, Leqs;->P:I

    if-ltz v0, :cond_0

    .line 2435
    iget-object v0, p0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2438
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Leqq;->k()I

    move-result v0

    goto :goto_0
.end method

.method public final m()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-super {p0}, Leqq;->m()V

    .line 248
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leqs;->B:Ljava/lang/String;

    .line 249
    iget-wide v0, p0, Leqs;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 250
    const/4 v0, 0x4

    iput v0, p0, Leqs;->C:I

    .line 251
    iput-boolean v4, p0, Leqs;->q:Z

    .line 255
    :goto_0
    iget-object v0, p0, Leqs;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    iget-object v0, p0, Leqs;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Leqs;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Leqs;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    iput-boolean v4, p0, Leqs;->O:Z

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Leqs;->P:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leqs;->M:J

    .line 262
    iget-object v0, p0, Leqs;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    return-void

    .line 253
    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Leqs;->C:I

    goto :goto_0
.end method
