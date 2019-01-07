.class public final Lbap;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Lbaq$d;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbbm;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

.field c:Lbaq$b;

.field private d:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbep;

.field private f:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbaq$b;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lbaq$b;
    .param p3, "onDingCommentRemindCountChangeListener"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbap;->a:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lbap;->f:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lbap;->c:Lbaq$b;

    .line 51
    iput-object p3, p0, Lbap;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 52
    invoke-interface {p2, p0}, Lbaq$b;->setPresenter(Lcjd;)V

    .line 1062
    new-instance v0, Lbap$1;

    invoke-direct {v0, p0}, Lbap$1;-><init>(Lbap;)V

    iput-object v0, p0, Lbap;->d:Lckm$a;

    .line 1070
    new-instance v0, Lbap$2;

    invoke-direct {v0, p0}, Lbap$2;-><init>(Lbap;)V

    iput-object v0, p0, Lbap;->e:Lbep;

    .line 1081
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbap;->d:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->a(Lckm$a;)V

    .line 1082
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbap;->e:Lbep;

    .line 1176
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$108;

    invoke-direct {v3, v0, v1}, Lbbp$108;-><init>(Lbbp;Lbep;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lbap;I)V
    .locals 2
    .param p0, "x0"    # Lbap;
    .param p1, "x1"    # I

    .prologue
    .line 32
    .line 5217
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbap$6;

    invoke-direct {v1, p0, p1}, Lbap$6;-><init>(Lbap;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method static synthetic a(Lbap;Ljava/util/Collection;)V
    .locals 6
    .param p0, "x0"    # Lbap;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 32
    .line 6122
    if-eqz p1, :cond_7

    .line 6126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6127
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 6128
    if-eqz v0, :cond_0

    .line 7096
    iget-wide v4, v0, Lbeq;->a:J

    .line 6129
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6130
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6131
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbm;

    .line 6132
    if-eqz v1, :cond_0

    .line 8087
    iget-object v4, v1, Lbbm;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6132
    if-nez v4, :cond_0

    .line 6133
    invoke-virtual {v1, v0}, Lbbm;->a(Lbeq;)V

    goto :goto_0

    .line 6136
    :cond_1
    new-instance v4, Lbbm;

    invoke-direct {v4}, Lbbm;-><init>()V

    .line 6137
    invoke-virtual {v4, v0}, Lbbm;->a(Lbeq;)V

    .line 6138
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6143
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lbap;->a:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6144
    iget-object v0, p0, Lbap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6145
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6147
    iget-object v2, p0, Lbap;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbm;

    .line 6148
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 6149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbm;

    .line 9037
    if-eqz v0, :cond_4

    .line 9041
    iget-object v5, v0, Lbbm;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v5, :cond_3

    .line 9042
    iget-object v5, v0, Lbbm;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object v5, v2, Lbbm;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9045
    :cond_3
    iget-object v5, v0, Lbbm;->b:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 9046
    iget-object v5, v2, Lbbm;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 9047
    iget-object v5, v2, Lbbm;->b:Ljava/util/List;

    iget-object v0, v0, Lbbm;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6150
    :cond_4
    iget-object v0, p0, Lbap;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6152
    :cond_5
    iget-object v2, p0, Lbap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6156
    :cond_6
    invoke-virtual {p0}, Lbap;->b()V

    .line 6157
    invoke-direct {p0, p1}, Lbap;->a(Ljava/util/Collection;)V

    .line 32
    :cond_7
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbeq;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 162
    .local p1, "dingCommentRemindObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lbeq;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 167
    .local v1, "dingIdsHaveBeenDeal":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 168
    .local v0, "commentRemindObject":Lbeq;
    if-eqz v0, :cond_2

    .line 2096
    iget-wide v4, v0, Lbeq;->a:J

    .line 171
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3096
    iget-wide v4, v0, Lbeq;->a:J

    .line 172
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3180
    new-instance v2, Lbap$4;

    invoke-direct {v2, p0}, Lbap$4;-><init>(Lbap;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lbap;->f:Landroid/app/Activity;

    invoke-static {v2, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 3201
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    .line 4096
    iget-wide v4, v0, Lbeq;->a:J

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v0, Lbap$3;

    invoke-direct {v0, p0}, Lbap$3;-><init>(Lbap;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbap;->f:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1599
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$71;

    invoke-direct {v3, v1, v0}, Lbbp$71;-><init>(Lbbp;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbap;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lbbm;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbap$5;

    invoke-direct {v2, p0, v0}, Lbap$5;-><init>(Lbap;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 239
    .line 5087
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbap;->d:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->b(Lckm$a;)V

    .line 5088
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbap;->e:Lbep;

    .line 5185
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$2;

    invoke-direct {v3, v0, v1}, Lbbp$2;-><init>(Lbbp;Lbep;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 5089
    const/4 v0, 0x0

    iput-object v0, p0, Lbap;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 240
    return-void
.end method
