.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;
.super Ljava/lang/Object;
.source "CSpaceShareFragment.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 371
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .line 1051
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    .line 371
    if-nez v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 375
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v2, "spaceUpdateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lgic;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgic;

    .line 377
    .local v3, "updateInfo":Lgic;
    if-eqz v3, :cond_2

    .line 381
    iget-object v4, v3, Lgic;->a:Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 382
    iget-object v4, v3, Lgic;->a:Ljava/lang/Long;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_3
    iget-object v4, v3, Lgic;->g:Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, v3, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v6, "doc_readonly"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v6, "1"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 387
    .local v0, "isReadOnly":Z
    iget-object v4, v3, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v6, "watermark"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v6, "1"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 388
    .local v1, "isWaterMark":Z
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v6, v3, Lgic;->a:Ljava/lang/Long;

    invoke-virtual {v4, v6, v0}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 389
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v6, v3, Lgic;->a:Ljava/lang/Long;

    invoke-virtual {v4, v6, v1}, Lfzv;->b(Ljava/lang/Long;Z)V

    .line 392
    .end local v0    # "isReadOnly":Z
    .end local v1    # "isWaterMark":Z
    :cond_4
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    .line 393
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v6, v3, Lgic;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 393
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v7, v3, Lgic;->k:Ljava/util/List;

    invoke-static {v7}, Lgqd;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 392
    invoke-virtual {v4, v6, v7}, Lgqd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    .end local v3    # "updateInfo":Lgic;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lgac;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lgac;

    move-result-object v4

    .line 2631
    iput-object v2, v4, Lgac;->b:Ljava/util/HashMap;

    .line 398
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lgac;

    move-result-object v4

    invoke-virtual {v4}, Lgac;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
