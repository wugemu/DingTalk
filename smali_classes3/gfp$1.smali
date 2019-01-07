.class final Lgfp$1;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lgnv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfp;


# direct methods
.method constructor <init>(Lgfp;)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 127
    iput-object p1, p0, Lgfp$1;->a:Lgfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    check-cast p1, Ljava/util/List;

    .line 2130
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 3062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 2130
    invoke-interface {v0}, Lgfn$b;->g()V

    .line 2132
    iget-object v4, p0, Lgfp$1;->a:Lgfp;

    .line 4883
    iget-object v0, v4, Lgfp;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4884
    iget-object v0, v4, Lgfp;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4885
    iget-object v0, v4, Lgfp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4886
    iget-object v0, v4, Lgfp;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4888
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2133
    :cond_0
    :goto_0
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 21062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 2133
    iget-object v1, p0, Lgfp$1;->a:Lgfp;

    .line 22062
    iget v1, v1, Lgfp;->j:I

    .line 2133
    invoke-interface {v0, v1}, Lgfn$b;->a(I)V

    .line 2134
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 23062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 2134
    iget-object v1, p0, Lgfp$1;->a:Lgfp;

    .line 24062
    iget-object v1, v1, Lgfp;->d:Ljava/util/List;

    .line 2134
    invoke-interface {v0, v1}, Lgfn$b;->a(Ljava/util/List;)V

    .line 2135
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 25062
    iget-object v1, v0, Lgfp;->l:Lgfn$b;

    .line 2135
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 26062
    iget-object v0, v0, Lgfp;->i:Lgnv;

    .line 2135
    if-eqz v0, :cond_11

    move v0, v2

    :goto_1
    iget-object v4, p0, Lgfp$1;->a:Lgfp;

    .line 27062
    iget-object v4, v4, Lgfp;->i:Lgnv;

    .line 2135
    if-eqz v4, :cond_1

    iget-object v4, p0, Lgfp$1;->a:Lgfp;

    .line 28062
    iget-object v4, v4, Lgfp;->i:Lgnv;

    .line 28127
    iget-boolean v4, v4, Lgnv;->e:Z

    .line 2135
    if-nez v4, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-interface {v1, v0, v3}, Lgfn$b;->a(ZZ)V

    .line 127
    return-void

    .line 4892
    :cond_3
    iput v3, v4, Lgfp;->j:I

    .line 4893
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnv;

    .line 4894
    if-eqz v0, :cond_4

    .line 5127
    iget-boolean v1, v0, Lgnv;->e:Z

    .line 4898
    if-nez v1, :cond_5

    .line 4899
    iget-object v1, v4, Lgfp;->g:Ljava/util/Map;

    .line 6103
    iget-wide v6, v0, Lgnv;->b:J

    .line 4899
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 7095
    iget-wide v8, v0, Lgnv;->a:J

    .line 4899
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7103
    :cond_5
    iget-wide v6, v0, Lgnv;->b:J

    .line 4902
    const-wide/16 v8, 0x1389

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    .line 4903
    iput-object v0, v4, Lgfp;->i:Lgnv;

    goto :goto_2

    .line 7119
    :cond_6
    iget-object v1, v0, Lgnv;->d:Ljava/util/List;

    .line 4907
    if-eqz v1, :cond_4

    .line 8119
    iget-object v1, v0, Lgnv;->d:Ljava/util/List;

    .line 4907
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 9119
    iget-object v0, v0, Lgnv;->d:Ljava/util/List;

    .line 4911
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 4912
    if-eqz v0, :cond_7

    .line 9195
    iget-object v1, v0, Lgnu;->a:Ljava/lang/String;

    .line 4912
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 9227
    iget v1, v0, Lgnu;->e:I

    .line 4916
    const/4 v7, 0x3

    if-ne v1, v7, :cond_8

    .line 4917
    iput-object v0, v4, Lgfp;->h:Lgnu;

    .line 4918
    iget-object v0, v4, Lgfp;->l:Lgfn$b;

    invoke-interface {v0, v2}, Lgfn$b;->a(Z)V

    goto :goto_3

    .line 9235
    :cond_8
    iget-boolean v1, v0, Lgnu;->f:Z

    .line 4922
    if-eqz v1, :cond_e

    .line 4923
    iget-object v1, v4, Lgfp;->f:Ljava/util/Map;

    .line 10195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4923
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 4924
    if-eqz v1, :cond_9

    .line 10267
    iget-wide v8, v1, Lgnu;->j:J

    .line 11267
    iget-wide v10, v0, Lgnu;->j:J

    .line 4924
    cmp-long v1, v8, v10

    if-gez v1, :cond_a

    .line 4925
    :cond_9
    iget-object v1, v4, Lgfp;->f:Ljava/util/Map;

    .line 12195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4925
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4928
    :cond_a
    iget-object v1, v4, Lgfp;->e:Ljava/util/Map;

    .line 13195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4928
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 4929
    if-eqz v1, :cond_b

    .line 13267
    iget-wide v8, v1, Lgnu;->j:J

    .line 14267
    iget-wide v10, v0, Lgnu;->j:J

    .line 4929
    cmp-long v1, v8, v10

    if-gez v1, :cond_c

    .line 4930
    :cond_b
    iget-object v1, v4, Lgfp;->e:Ljava/util/Map;

    .line 15195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4930
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4939
    :cond_c
    :goto_4
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 19195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4939
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19227
    iget v1, v0, Lgnu;->e:I

    .line 4940
    const/4 v7, 0x2

    if-ne v1, v7, :cond_7

    .line 19267
    iget-wide v8, v0, Lgnu;->j:J

    .line 4941
    const-wide/16 v10, 0x3eb

    cmp-long v1, v8, v10

    if-eqz v1, :cond_d

    .line 20267
    iget-wide v0, v0, Lgnu;->j:J

    .line 4941
    const-wide/16 v8, 0x3ec

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 4942
    :cond_d
    iput v2, v4, Lgfp;->j:I

    goto/16 :goto_3

    .line 4933
    :cond_e
    iget-object v1, v4, Lgfp;->e:Ljava/util/Map;

    .line 16195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4933
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 4934
    if-eqz v1, :cond_f

    .line 16267
    iget-wide v8, v1, Lgnu;->j:J

    .line 17267
    iget-wide v10, v0, Lgnu;->j:J

    .line 4934
    cmp-long v1, v8, v10

    if-gez v1, :cond_c

    .line 4935
    :cond_f
    iget-object v1, v4, Lgfp;->e:Ljava/util/Map;

    .line 18195
    iget-object v7, v0, Lgnu;->a:Ljava/lang/String;

    .line 4935
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4947
    :cond_10
    iget-object v0, v4, Lgfp;->d:Ljava/util/List;

    iget-object v1, v4, Lgfp;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20955
    iget-object v0, v4, Lgfp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x384

    if-ge v0, v1, :cond_0

    .line 20959
    new-instance v0, Lgfk;

    invoke-direct {v0}, Lgfk;-><init>()V

    .line 20960
    iget-object v1, v4, Lgfp;->d:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    :cond_11
    move v0, v3

    .line 2135
    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 1062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 145
    invoke-interface {v0}, Lgfn$b;->g()V

    .line 146
    iget-object v0, p0, Lgfp$1;->a:Lgfp;

    .line 2062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 146
    invoke-interface {v0, p1, p2}, Lgfn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 141
    return-void
.end method
