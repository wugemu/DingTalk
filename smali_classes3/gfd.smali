.class public final Lgfd;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SpaceMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgfd$b;,
        Lgfd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgfd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Lgfd$b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
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

.field private f:Lgfe$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgfe$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lgfe$a;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfd;->d:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfd;->e:Ljava/util/Map;

    .line 99
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfe$a;

    iput-object v0, p0, Lgfd;->f:Lgfe$a;

    .line 100
    return-void
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1, "isSelected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lgfd$a;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const/4 v4, 0x0

    .line 264
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    :cond_1
    return-object v1

    .line 267
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v1, "wrapperList":Ljava/util/List;, "Ljava/util/List<Lgfd$a;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 269
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v0, :cond_3

    .line 272
    new-instance v3, Lgfd$a;

    invoke-direct {v3, v0, v4, v4}, Lgfd$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/Member;ZB)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V
    .locals 2
    .param p1, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lgfd;->c:Lgfd$b;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lgfd;->c:Lgfd$b;

    iget-object v1, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Lgfd$b;->a(I)V

    .line 135
    :cond_0
    return-void
.end method

.method private b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V
    .locals 3
    .param p1, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lgfd;->c:Lgfd$b;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lgfd;->c:Lgfd$b;

    iget-object v1, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0}, Lgfd;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lgfd$b;->a(IZ)V

    .line 141
    :cond_0
    return-void
.end method

.method private d()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 197
    .line 7205
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7206
    :cond_0
    iget-object v0, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    :goto_0
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13227
    :cond_1
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 13228
    :cond_2
    iget-object v0, p0, Lgfd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13229
    iget-object v0, p0, Lgfd;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13230
    :goto_1
    return-void

    .line 7210
    :cond_3
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfd$a;

    .line 7211
    if-eqz v0, :cond_4

    .line 8044
    iget-object v3, v0, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 7211
    if-eqz v3, :cond_4

    .line 9044
    iget-object v6, v0, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 9095
    iget v3, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-ne v3, v8, :cond_12

    .line 9096
    iget-object v3, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    invoke-static {v3}, Lgpw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9097
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v3, 0x23

    .line 10075
    :goto_3
    iget v4, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-ne v4, v10, :cond_7

    .line 10076
    const/16 v4, 0xa

    .line 9101
    :goto_4
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const-string/jumbo v3, "-"

    aput-object v3, v7, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    const-string/jumbo v3, "-"

    aput-object v3, v7, v10

    const/4 v4, 0x4

    iget-object v3, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    if-nez v3, :cond_b

    const-string/jumbo v3, ""

    :goto_5
    aput-object v3, v7, v4

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11072
    iput-object v3, v0, Lgfd$a;->d:Ljava/lang/String;

    .line 7216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 7217
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 12064
    iput-char v3, v0, Lgfd$a;->c:C

    .line 13052
    :cond_5
    iget-boolean v0, v0, Lgfd$a;->b:Z

    .line 7219
    if-eqz v0, :cond_11

    .line 7220
    add-int/lit8 v0, v1, 0x1

    :goto_6
    move v1, v0

    .line 7222
    goto :goto_2

    .line 9098
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 10078
    :cond_7
    iget v4, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-nez v4, :cond_8

    .line 10079
    const/16 v4, 0x14

    goto :goto_4

    .line 10081
    :cond_8
    iget v4, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-ne v4, v9, :cond_9

    .line 10082
    const/16 v4, 0x1e

    goto :goto_4

    .line 10084
    :cond_9
    iget v4, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-ne v4, v8, :cond_a

    .line 10085
    const/16 v4, 0x28

    goto :goto_4

    :cond_a
    move v4, v2

    .line 10087
    goto :goto_4

    .line 9101
    :cond_b
    iget-object v3, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    goto :goto_5

    .line 7223
    :cond_c
    iget-object v0, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 13232
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13233
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    move v3, v2

    .line 13235
    :goto_7
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 13236
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfd$a;

    .line 13237
    if-eqz v0, :cond_e

    .line 14060
    iget-char v4, v0, Lgfd$a;->c:C

    .line 13241
    if-ne v4, v3, :cond_f

    .line 14064
    iput-char v2, v0, Lgfd$a;->c:C

    .line 13235
    :cond_e
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 13245
    :cond_f
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13246
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 13247
    goto :goto_8

    .line 13249
    :cond_10
    iget-object v0, p0, Lgfd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13250
    iget-object v0, p0, Lgfd;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13251
    iget-object v0, p0, Lgfd;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13252
    iget-object v0, p0, Lgfd;->e:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :cond_12
    move v3, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfd$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lgfd$a;>;"
    iput-object p1, p0, Lgfd;->l:Ljava/util/List;

    .line 154
    invoke-direct {p0}, Lgfd;->d()V

    .line 155
    invoke-virtual {p0}, Lgfd;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    iget-object v2, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 306
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfd$a;

    .line 295
    .local v0, "wrapper":Lgfd$a;
    if-eqz v0, :cond_2

    .line 15056
    iput-boolean p1, v0, Lgfd$a;->b:Z

    goto :goto_1

    .line 300
    .end local v0    # "wrapper":Lgfd$a;
    :cond_3
    iget-object v2, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 301
    if-eqz p1, :cond_5

    .line 302
    invoke-direct {p0, v4}, Lgfd;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    goto :goto_0

    .line 304
    :cond_5
    invoke-direct {p0, v4}, Lgfd;->a(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    goto :goto_0
.end method

.method public final a(ZLcom/alibaba/dingtalk/cspace/functions/members/Member;)V
    .locals 1
    .param p1, "selected"    # Z
    .param p2, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 124
    invoke-direct {p0, p2}, Lgfd;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 127
    invoke-direct {p0, p2}, Lgfd;->a(Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v3, p0, Lgfd;->l:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    :cond_0
    iget-object v3, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    :goto_0
    return-object v1

    .line 321
    :cond_1
    const/4 v0, 0x0

    .line 322
    .local v0, "selectCount":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v1, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    iget-object v3, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgfd$a;

    .line 324
    .local v2, "wrapper":Lgfd$a;
    if-eqz v2, :cond_2

    .line 16052
    iget-boolean v4, v2, Lgfd$a;->b:Z

    .line 324
    if-eqz v4, :cond_2

    .line 17044
    iget-object v4, v2, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 327
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 329
    goto :goto_1

    .line 330
    .end local v2    # "wrapper":Lgfd$a;
    :cond_3
    iget-object v3, p0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgfd;->a(Ljava/util/List;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgfd;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgfd;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgfd;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgfd;->d(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfd$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lgfd$a;>;"
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfd;->l:Ljava/util/List;

    .line 170
    :cond_0
    iget-object v0, p0, Lgfd;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-direct {p0}, Lgfd;->d()V

    .line 172
    invoke-virtual {p0}, Lgfd;->notifyDataSetChanged()V

    .line 173
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfd$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lgfd$a;>;"
    new-instance v0, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v0, "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgfd$a;>;"
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    iput-object v0, p0, Lgfd;->l:Ljava/util/List;

    .line 192
    invoke-direct {p0}, Lgfd;->d()V

    .line 193
    invoke-virtual {p0}, Lgfd;->notifyDataSetChanged()V

    .line 194
    return-void

    .line 187
    .end local v0    # "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgfd$a;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v5, p0, Lgfd;->m:Landroid/content/Context;

    .line 1039
    if-nez v5, :cond_1

    .line 106
    .local v1, "viewAndHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lgfc;>;"
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_3

    :cond_0
    move-object v0, p2

    .line 118
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1042
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "viewAndHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lgfc;>;"
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 1043
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1044
    if-eqz v4, :cond_2

    instance-of v6, v4, Lgfc;

    if-eqz v6, :cond_2

    .line 1045
    check-cast v4, Lgfc;

    invoke-static {p2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 1048
    :cond_2
    new-instance v6, Lgfc;

    invoke-direct {v6}, Lgfc;-><init>()V

    .line 1049
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1056
    sget v5, Lfzs$g;->space_member_item:I

    .line 1049
    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1060
    sget v4, Lfzs$f;->member_item:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v6, Lgfc;->a:Landroid/widget/LinearLayout;

    .line 1061
    sget v4, Lfzs$f;->checkbox:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v6, Lgfc;->b:Landroid/widget/CheckBox;

    .line 1062
    sget v4, Lfzs$f;->tv_contact_name:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Lgfc;->d:Landroid/widget/TextView;

    .line 1063
    sget v4, Lfzs$f;->tv_avatar:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, v6, Lgfc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1064
    sget v4, Lfzs$f;->tv_letter:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Lgfc;->e:Landroid/widget/TextView;

    .line 1051
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1052
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 109
    .restart local v1    # "viewAndHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lgfc;>;"
    :cond_3
    iget-object p2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/view/View;

    .line 110
    .restart local p2    # "convertView":Landroid/view/View;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lgfc;

    .line 112
    .local v2, "viewHolder":Lgfc;
    invoke-virtual {p0, p1}, Lgfd;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgfd$a;

    .line 113
    .local v3, "wrapper":Lgfd$a;
    if-eqz v3, :cond_4

    .line 2044
    iget-object v4, v3, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 113
    if-nez v4, :cond_5

    :cond_4
    move-object v0, p2

    .line 114
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 117
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lgfd;->m:Landroid/content/Context;

    iget-object v5, p0, Lgfd;->f:Lgfe$a;

    .line 2068
    if-eqz v3, :cond_6

    .line 3044
    iget-object v6, v3, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 2068
    if-eqz v6, :cond_6

    if-nez p0, :cond_7

    :cond_6
    :goto_2
    move-object v0, p2

    .line 118
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 2071
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_7
    invoke-virtual {v2, p0}, Lgfc;->a(Lgfd;)V

    .line 2072
    invoke-virtual {v2, v4, v3, p0}, Lgfc;->a(Landroid/content/Context;Lgfd$a;Lgfd;)V

    .line 4044
    iget-object v6, v3, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 4175
    iget-boolean v6, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 2073
    if-nez v6, :cond_6

    .line 5151
    iget-object v6, v2, Lgfc;->d:Landroid/widget/TextView;

    .line 6044
    iget-object v7, v3, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 6135
    iget-object v7, v7, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 5151
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7044
    iget-object v6, v3, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 5152
    new-instance v7, Lgfc$3;

    invoke-direct {v7, v2, v3, p0, v4}, Lgfc$3;-><init>(Lgfc;Lgfd$a;Lgfd;Landroid/content/Context;)V

    invoke-interface {v5, v6, v7}, Lgfe$a;->a(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_2
.end method
