.class final Lgac$7;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgac;


# direct methods
.method constructor <init>(Lgac;)V
    .locals 0
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 579
    iput-object p1, p0, Lgac$7;->a:Lgac;

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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    const-wide/16 v6, 0x0

    .line 583
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->i(Lgac;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgic;

    .line 587
    .local v1, "spaceUpdateInfo":Lgic;
    if-eqz v1, :cond_2

    .line 591
    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "spaceId":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->j(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lgic;->d:Ljava/lang/Long;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lgic;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->k(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lgic;->b:Ljava/lang/Long;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lgic;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->l(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->l(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 596
    .local v2, "tvCapacity":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 597
    iget-object v3, v1, Lgic;->b:Ljava/lang/Long;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lgic;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    .end local v2    # "tvCapacity":Landroid/widget/TextView;
    :cond_3
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->m(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    iget-object v9, p0, Lgac$7;->a:Lgac;

    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-static {v3}, Lgac;->m(Lgac;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lgic;->d:Ljava/lang/Long;

    if-eqz v4, :cond_a

    iget-object v4, v1, Lgic;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_6
    invoke-static {v9, v3, v4, v5}, Lgac;->a(Lgac;Landroid/widget/TextView;J)V

    .line 605
    :cond_4
    iget-object v3, v1, Lgic;->g:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 606
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    iget-object v3, v1, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v5, "eam_acl"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lgqd;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_5
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    .line 609
    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v4, "0"

    invoke-static {v0, v4}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v5, v1, Lgic;->k:Ljava/util/List;

    invoke-static {v5}, Lgqd;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-virtual {v3, v4, v5}, Lgqd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    .end local v0    # "spaceId":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_2

    .restart local v0    # "spaceId":Ljava/lang/String;
    :cond_7
    move-wide v4, v6

    .line 592
    goto/16 :goto_3

    :cond_8
    move-wide v4, v6

    .line 593
    goto/16 :goto_4

    .restart local v2    # "tvCapacity":Landroid/widget/TextView;
    :cond_9
    move-wide v4, v6

    .line 597
    goto :goto_5

    .end local v2    # "tvCapacity":Landroid/widget/TextView;
    :cond_a
    move-wide v4, v6

    .line 602
    goto :goto_6

    .line 612
    .end local v0    # "spaceId":Ljava/lang/String;
    .end local v1    # "spaceUpdateInfo":Lgic;
    :cond_b
    iget-object v3, p0, Lgac$7;->a:Lgac;

    invoke-virtual {v3}, Lgac;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
