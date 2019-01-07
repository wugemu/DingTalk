.class final Lbbp$69;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->b(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 572
    iput-object p1, p0, Lbbp$69;->b:Lbbp;

    iput-object p2, p0, Lbbp$69;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 575
    iget-object v0, p0, Lbbp$69;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$69;->a:Lcma;

    .line 5603
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 5604
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 5610
    :goto_0
    return-void

    .line 5608
    :cond_0
    const-string/jumbo v0, "sp_update_clear_ding_cache"

    invoke-static {v0, v13}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5609
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    goto :goto_0

    .line 5613
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5615
    iget-object v0, v1, Lbbo;->i:Lbgn;

    invoke-interface {v0}, Lbgn;->b()I

    move-result v3

    .line 5618
    invoke-static {}, Lbju;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5619
    iget-object v0, v1, Lbbo;->f:Lbgp;

    invoke-interface {v0}, Lbgp;->i()I

    move-result v0

    .line 5620
    iget-object v6, v1, Lbbo;->f:Lbgp;

    invoke-interface {v6}, Lbgp;->a()V

    .line 5624
    :goto_1
    invoke-virtual {v1}, Lbbo;->a()V

    .line 5626
    iget-object v6, v1, Lbbo;->g:Lbgq;

    invoke-interface {v6}, Lbgq;->a()I

    move-result v6

    .line 5627
    iget-object v7, v1, Lbbo;->j:Lbhb;

    invoke-interface {v7}, Lbhb;->d()I

    move-result v7

    .line 5629
    iget-object v8, v1, Lbbo;->k:Lbhd;

    invoke-interface {v8}, Lbhd;->c()I

    move-result v8

    .line 6345
    iget-object v9, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->clear()V

    .line 6346
    iget-object v9, v1, Lbbo;->d:Lbhf;

    .line 7191
    const/4 v10, 0x0

    iput-object v10, v9, Lbhf;->a:Lbhf$a;

    .line 6347
    iput-boolean v13, v1, Lbbo;->a:Z

    .line 8068
    const-string/jumbo v9, "pref_key_has_no_more_all_dings"

    invoke-static {v9, v13}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 5633
    const-string/jumbo v9, "sp_update_clear_ding_cache"

    invoke-static {v9, v12}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 5634
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 5636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    .line 5637
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DingDataCenter] clear cache time:"

    aput-object v2, v1, v13

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x2

    const-string/jumbo v4, ", cursor:"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 5638
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, " ding:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 5639
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string/jumbo v2, " commentRemind:"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    .line 5640
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string/jumbo v2, " pegDraft:"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    .line 5641
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, ", recentDing:"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    .line 5642
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 5637
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5622
    :cond_2
    iget-object v0, v1, Lbbo;->f:Lbgp;

    invoke-interface {v0}, Lbgp;->h()I

    move-result v0

    goto/16 :goto_1
.end method
