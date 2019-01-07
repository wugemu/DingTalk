.class public final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.super Leqq;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lerl$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

.field protected n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private w:D

.field private x:Z

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerl$b;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerl$b;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Leqq;-><init>()V

    .line 92
    sget-object v3, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ClickHistory:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 94
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    .line 98
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->q:Z

    .line 100
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->r:Z

    .line 102
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s:Z

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->t:Z

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    .line 114
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    .line 115
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    .line 122
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 123
    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    .line 124
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v3, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 126
    invoke-static {}, Lese;->a()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->w:D

    .line 127
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_search_local_group_search"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s:Z

    .line 128
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->q:Z

    .line 131
    const-string/jumbo v1, "pref_key_local_group_search_time_span"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 132
    .local v0, "localTimespanDays":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Group]local group search time span "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x3

    .line 136
    :cond_0
    mul-int/lit8 v1, v0, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->z:J

    .line 138
    const-string/jumbo v1, "pref_key_search_local_group_batch_size"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->A:I

    .line 139
    return-void

    .end local v0    # "localTimespanDays":I
    :cond_1
    move v1, v2

    .line 128
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 87
    .line 15402
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15403
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->r()V

    .line 15405
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Local:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 15406
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    .line 15407
    :goto_0
    return-void

    .line 15410
    :cond_0
    new-instance v5, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    .line 15471
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 16084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 15471
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    const/16 v4, 0x64

    invoke-interface/range {v0 .. v5}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 918
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 937
    :goto_0
    return-void

    .line 922
    :cond_0
    const-string/jumbo v1, ""

    .line 923
    .local v1, "trace":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v2, :cond_1

    .line 924
    new-array v2, v11, [Ljava/lang/String;

    aput-object v1, v2, v8

    const-string/jumbo v3, "uuid:"

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 14084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 924
    aput-object v3, v2, v10

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    :cond_1
    new-array v2, v10, [Ljava/lang/String;

    aput-object v1, v2, v8

    const-string/jumbo v3, ",group:"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 929
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_2

    .line 933
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v8

    const-string/jumbo v4, "["

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModifyTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const-string/jumbo v4, ","

    aput-object v4, v3, v11

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getScore()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getWeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "] "

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    goto :goto_1

    .line 936
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_3
    new-array v2, v8, [Ljava/lang/Object;

    .line 15073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 6
    .param p1, "render"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 556
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const-string/jumbo v2, "[Group] appendLocalGroupList render %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    .line 563
    .local v1, "localModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v3, v1, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 567
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 576
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "localModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 583
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->r()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->t()V

    return-void
.end method

.method private r()V
    .locals 24

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 590
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    instance-of v6, v6, Lerl$b;

    if-eqz v6, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    check-cast v6, Lerl$b;

    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v6, v7, v0}, Lerl$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 596
    :cond_2
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    .line 597
    .local v2, "currentTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v13, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Lese;->c()J

    move-result-wide v8

    .line 6134
    .local v8, "granularity":J
    const-wide/16 v16, 0x0

    .line 6135
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v6

    const-string/jumbo v7, "dt_search"

    const-string/jumbo v20, "intimacy_group_min"

    move-object/from16 v0, v20

    invoke-virtual {v6, v7, v0}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6136
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 6137
    invoke-static {v6}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v16

    .line 6140
    :cond_3
    const-wide/16 v6, 0x0

    cmpg-double v6, v16, v6

    if-gtz v6, :cond_4

    .line 6141
    const-wide v16, 0x3fc999999999999aL    # 0.2

    .line 600
    .local v16, "groupMinScore":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 602
    .local v14, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v14, :cond_5

    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 606
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "cid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 607
    .local v12, "cid":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 611
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "title"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 7055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 612
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    if-nez v6, :cond_7

    sget-object v6, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v6, v14, v7}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v15

    .line 613
    .local v15, "model":Lcom/alibaba/android/search/model/BaseModel;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    invoke-virtual {v15, v6}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 614
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "modifyTime"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7109
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 615
    .local v4, "modifiedTime":J
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "score"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v10

    .line 616
    .local v10, "score":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->w:D

    invoke-static/range {v2 .. v11}, Lesc;->a(JJDJD)D

    move-result-wide v18

    .line 619
    .local v18, "weight":D
    cmpg-double v6, v18, v16

    if-lez v6, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {v15, v4, v5}, Lcom/alibaba/android/search/model/BaseModel;->setModifyTime(J)V

    .line 625
    invoke-virtual {v15, v10, v11}, Lcom/alibaba/android/search/model/BaseModel;->setScore(D)V

    .line 626
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setWeight(D)V

    .line 627
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v6, :cond_6

    .line 629
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 8084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 629
    invoke-virtual {v15, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 8092
    iget v6, v6, Leoe;->b:I

    .line 630
    invoke-virtual {v15, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 632
    :cond_6
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "click_history"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8150
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 632
    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 633
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 637
    :goto_3
    iget-object v6, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 638
    invoke-virtual {v15, v12}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 612
    .end local v4    # "modifiedTime":J
    .end local v10    # "score":D
    .end local v15    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v18    # "weight":D
    :cond_7
    sget-object v6, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto/16 :goto_2

    .line 635
    .restart local v4    # "modifiedTime":J
    .restart local v10    # "score":D
    .restart local v15    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .restart local v18    # "weight":D
    :cond_8
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    goto :goto_3

    .line 642
    .end local v4    # "modifiedTime":J
    .end local v10    # "score":D
    .end local v12    # "cid":Ljava/lang/String;
    .end local v14    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v15    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v18    # "weight":D
    :cond_9
    new-instance v6, Leta;

    invoke-direct {v6}, Leta;-><init>()V

    invoke-static {v13, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v6, v7}, Leqp$b;->a(Ljava/util/List;)V

    .line 8844
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v6}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v6

    .line 8846
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 8848
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_a

    .line 8851
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    .line 8856
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    instance-of v6, v6, Lerl$b;

    if-eqz v6, :cond_b

    .line 8857
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    check-cast v6, Lerl$b;

    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v6, v7, v0}, Lerl$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 649
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private s()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 862
    .line 13889
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13890
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->t()V

    .line 13897
    :goto_0
    return-void

    .line 13894
    :cond_1
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v1

    .line 13895
    if-nez v1, :cond_2

    .line 13896
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->t()V

    goto :goto_0

    .line 13900
    :cond_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 13901
    new-instance v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    const-class v3, Lcov;

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    .line 13913
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lenh;->a(Ljava/lang/String;Lcov;)V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 866
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x1

    .line 867
    .local v1, "limitCount":I
    iget-boolean v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->x:Z

    if-eqz v2, :cond_0

    .line 868
    add-int/lit8 v1, v1, 0x1

    .line 870
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 871
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 874
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    .line 875
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;

    if-eqz v2, :cond_1

    .line 876
    iget v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    instance-of v2, v2, Lerl$b;

    if-eqz v2, :cond_2

    .line 881
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    check-cast v2, Lerl$b;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lerl$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 885
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 170
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$7;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->q:Z

    if-eqz v0, :cond_2

    .line 1227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1228
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 1229
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;)Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    move-result-object v1

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1231
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->isGroupClickHistory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$1;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;J)V

    iget-object v1, v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->cid:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Recommend:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1275
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_0

    .line 175
    :cond_2
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Recommend:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->r:Z

    if-eqz v0, :cond_5

    .line 1280
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->q:Z

    if-nez v0, :cond_3

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1284
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    .line 1285
    new-instance v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V

    .line 1344
    iget v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    .line 2174
    if-eqz v2, :cond_0

    .line 2178
    invoke-static {}, Leue;->a()Leue;

    move-result-object v5

    .line 2767
    new-instance v6, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v6}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 2768
    const-string/jumbo v7, "task_recommend_group"

    iput-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 2769
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 2772
    new-instance v7, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v8, "tb_group_intimacy"

    invoke-direct {v7, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 2773
    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "score"

    aput-object v9, v8, v1

    const-string/jumbo v9, "modifyTime"

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2774
    if-ltz v0, :cond_4

    .line 2775
    invoke-virtual {v7, v0, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2779
    :cond_4
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbconversation"

    invoke-direct {v0, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 2780
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v8, "title"

    aput-object v8, v4, v1

    invoke-virtual {v0, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2781
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v8, "cid"

    aput-object v8, v4, v1

    const-string/jumbo v1, "title"

    aput-object v1, v4, v10

    const-string/jumbo v1, "status"

    aput-object v1, v4, v11

    const/4 v1, 0x3

    const-string/jumbo v8, "icon"

    aput-object v8, v4, v1

    const/4 v1, 0x4

    const-string/jumbo v8, "type"

    aput-object v8, v4, v1

    const/4 v1, 0x5

    const-string/jumbo v8, "tag"

    aput-object v8, v4, v1

    const/4 v1, 0x6

    const-string/jumbo v8, "memberCount"

    aput-object v8, v4, v1

    const/4 v1, 0x7

    const-string/jumbo v8, "ext"

    aput-object v8, v4, v1

    const/16 v1, 0x8

    const-string/jumbo v8, "desc"

    aput-object v8, v4, v1

    const/16 v1, 0x9

    const-string/jumbo v8, "ownerId"

    aput-object v8, v4, v1

    const/16 v1, 0xa

    const-string/jumbo v8, "groupIconType"

    aput-object v8, v4, v1

    const/16 v1, 0xb

    const-string/jumbo v8, "groupIcon"

    aput-object v8, v4, v1

    invoke-virtual {v0, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2785
    const-string/jumbo v1, "type"

    const-string/jumbo v4, "2"

    const-string/jumbo v8, "="

    invoke-virtual {v0, v1, v4, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2787
    const-string/jumbo v1, "cid"

    const-string/jumbo v4, "cid"

    invoke-virtual {v0, v7, v1, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2789
    iput-object v0, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2178
    new-instance v0, Lenr$17;

    invoke-direct {v0, v2}, Lenr$17;-><init>(Lcca;)V

    invoke-virtual {v5, v3, v6, v0}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto/16 :goto_0

    .line 183
    :cond_5
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Local:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_0

    .line 188
    :pswitch_2
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s:Z

    if-eqz v0, :cond_6

    .line 3349
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    .line 3350
    new-instance v7, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V

    .line 3397
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->A:I

    .line 4145
    const-wide/16 v4, 0x0

    .line 4436
    if-eqz v7, :cond_0

    .line 4440
    invoke-static {}, Leue;->a()Leue;

    move-result-object v8

    move-object v6, v3

    invoke-static/range {v1 .. v6}, Lenr;->a(IILjava/lang/Long;JLjava/lang/Integer;)Lcom/alibaba/android/searchengine/models/SearchTask;

    move-result-object v1

    new-instance v2, Lenr$6;

    invoke-direct {v2, v7}, Lenr$6;-><init>(Lcca;)V

    invoke-virtual {v8, v0, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto/16 :goto_0

    .line 191
    :cond_6
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Remote:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_0

    .line 196
    :pswitch_3
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->t:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4475
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    .line 4476
    new-instance v5, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;-><init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V

    .line 4552
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 5084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 4552
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    invoke-interface/range {v0 .. v5}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;IILcmb;)V

    goto/16 :goto_0

    .line 199
    :cond_7
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->None:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_0

    .line 204
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto/16 :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 654
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 655
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v12, v13}, Leqp$b;->a(Ljava/util/List;)V

    .line 717
    :goto_0
    return-void

    .line 659
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    .line 661
    .local v10, "now":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 663
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 667
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v8

    .line 668
    .local v8, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v12, :cond_2

    .line 672
    iget-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "title"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 673
    iget-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "cid"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 675
    .local v2, "cid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 680
    iget-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "status"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 9150
    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 681
    .local v3, "conversationStatus":I
    sget-object v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v12, v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v3, v12, :cond_2

    sget-object v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v12, v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v3, v12, :cond_2

    sget-object v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v12, v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v3, v12, :cond_2

    .line 688
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 10055
    sget-object v12, Leoc$a;->a:Leoc;

    .line 692
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    if-nez v12, :cond_4

    sget-object v12, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    :goto_2
    move-object/from16 v0, p2

    invoke-static {v12, v8, v0}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v9

    .line 693
    .local v9, "model":Lcom/alibaba/android/search/model/BaseModel;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    invoke-virtual {v9, v12}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v12, :cond_3

    .line 695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 10084
    iget-object v12, v12, Leoe;->a:Ljava/lang/String;

    .line 695
    invoke-virtual {v9, v12}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 10092
    iget v12, v12, Leoe;->b:I

    .line 696
    invoke-virtual {v9, v12}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 698
    :cond_3
    sget-object v12, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v12}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v9, v2}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 703
    iget-object v12, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "createAt"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 10109
    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 704
    .local v4, "createAt":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->z:J

    sub-long v14, v10, v14

    cmp-long v12, v14, v4

    if-gez v12, :cond_5

    .line 705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 692
    .end local v4    # "createAt":J
    .end local v9    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    sget-object v12, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_2

    .line 708
    .restart local v4    # "createAt":J
    .restart local v9    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 712
    .end local v2    # "cid":Ljava/lang/String;
    .end local v3    # "conversationStatus":I
    .end local v4    # "createAt":J
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v9    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    const-string/jumbo v12, "[Group] local %d %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 11050
    const-string/jumbo v14, "search"

    invoke-static {v14, v12, v13}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v12, v13}, Leqp$b;->a(Ljava/util/List;)V

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s()V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 11
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "publicGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 754
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 755
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    iget-object v8, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v7, v8}, Leqp$b;->a(Ljava/util/List;)V

    .line 837
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    .line 760
    .local v2, "data":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    if-eqz v2, :cond_2

    iget-object v7, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_2

    .line 764
    iget-object v7, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 767
    .local v3, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 768
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 773
    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    .line 774
    .local v1, "conversationStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    if-nez v1, :cond_5

    const/4 v6, 0x0

    .line 775
    .local v6, "status":I
    :goto_2
    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v7, v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v7, :cond_2

    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v7, v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v7, :cond_2

    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v7, v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v7, :cond_2

    .line 782
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    iget-object v9, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 792
    iget-object v7, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 11055
    sget-object v7, Leoc$a;->a:Leoc;

    .line 799
    iget v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    if-nez v7, :cond_6

    sget-object v7, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    :goto_3
    invoke-static {v7, v3, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v5

    .line 800
    .local v5, "model":Lcom/alibaba/android/search/model/BaseModel;
    sget-object v7, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v7}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 802
    iget v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->l:I

    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 803
    iget-object v7, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/model/BaseModel;->setRecallSearchResult(Z)V

    move-object v4, v5

    .line 805
    check-cast v4, Lcom/alibaba/android/search/model/GroupModel;

    .line 806
    .local v4, "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/GroupModel;->isFromServer(Z)V

    .line 807
    iget v7, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->c:I

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/GroupModel;->setSearchRemoteResultType(I)V

    .line 809
    iget-boolean v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->x:Z

    if-nez v7, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/BaseModel;->isRecallSearchResult()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 810
    const-string/jumbo v7, "[Group] remote recall search result"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 12050
    const-string/jumbo v10, "search"

    invoke-static {v10, v7, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Z)V

    .line 813
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->x:Z

    .line 814
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    .line 815
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    new-instance v9, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;

    iget-object v10, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/alibaba/android/search/model/idl/RecallSearchTipModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v7, :cond_4

    .line 819
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 12084
    iget-object v7, v7, Leoe;->a:Ljava/lang/String;

    .line 819
    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 820
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 12092
    iget v7, v7, Leoe;->b:I

    .line 820
    invoke-virtual {v5, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 822
    :cond_4
    iget v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 823
    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 824
    iget-object v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "cid":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {v5, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 774
    .end local v0    # "cid":Ljava/lang/String;
    .end local v4    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    .end local v5    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v6    # "status":I
    :cond_5
    iget v6, v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    goto/16 :goto_2

    .line 799
    .restart local v6    # "status":I
    :cond_6
    sget-object v7, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto/16 :goto_3

    .line 830
    .end local v1    # "conversationStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .end local v2    # "data":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    .end local v3    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v6    # "status":I
    :cond_7
    iget-boolean v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->f:Z

    if-nez v7, :cond_8

    .line 831
    const-string/jumbo v7, "[Group] remote search append local list"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 13050
    const-string/jumbo v9, "search"

    invoke-static {v9, v7, v8}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Z)V

    .line 834
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    iget-object v8, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v7, v8}, Leqp$b;->a(Ljava/util/List;)V

    .line 836
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->s()V

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    invoke-super {p0}, Leqq;->d()V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->x:Z

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    .line 150
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    return-void
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 942
    iget v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    if-ltz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 946
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Leqq;->k()I

    move-result v0

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Leqq;->m()V

    .line 157
    sget-object v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ClickHistory:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->x:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->y:I

    .line 163
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    return-void
.end method
