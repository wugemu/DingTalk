.class public final Lbbp$39;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazk;

.field final synthetic b:I

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lazk;I)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 311
    iput-object p1, p0, Lbbp$39;->c:Lbbp;

    iput-object p2, p0, Lbbp$39;->a:Lazk;

    iput p3, p0, Lbbp$39;->b:I

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
    const-wide/16 v12, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 314
    iget-object v0, p0, Lbbp$39;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v5

    iget-object v6, p0, Lbbp$39;->a:Lazk;

    iget v0, p0, Lbbp$39;->b:I

    .line 3320
    if-eqz v6, :cond_0

    iget-object v1, v6, Lazk;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v6, Lazk;->e:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 3321
    :cond_0
    :goto_0
    return-void

    .line 3323
    :cond_1
    iget-object v1, v6, Lazk;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v7

    .line 3324
    if-eqz v7, :cond_0

    .line 3328
    new-instance v8, Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {v8, v6}, Lcom/alibaba/android/ding/base/objects/CommentObject;-><init>(Lazk;)V

    .line 3329
    iput v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->g:I

    .line 3332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3333
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3334
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v2

    .line 3335
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    if-ne v0, v3, :cond_b

    .line 3336
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3340
    :cond_2
    :goto_2
    invoke-virtual {v7, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(Ljava/util/List;)V

    .line 3368
    if-eqz v7, :cond_11

    .line 3371
    invoke-static {v7}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lbkh;->l(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    move v0, v2

    .line 3343
    :goto_3
    if-eqz v0, :cond_4

    .line 3344
    iget-object v9, v5, Lbbo;->g:Lbgq;

    .line 4049
    iget-object v1, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    .line 4050
    if-nez v1, :cond_12

    .line 4051
    const/4 v0, 0x0

    .line 3344
    :goto_4
    invoke-interface {v9, v0}, Lbgq;->a(Lbeq;)I

    .line 3345
    invoke-virtual {v5}, Lbbo;->c()V

    .line 3346
    invoke-virtual {v5}, Lbbo;->b()V

    .line 3347
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 5169
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbjw$4;

    invoke-direct {v3, v0, v8}, Lbjw$4;-><init>(Lbjw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    invoke-virtual {v1, v2, v3}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    .line 3351
    :cond_4
    iget-object v0, v6, Lazk;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lazk;->g:Ljava/lang/Integer;

    .line 3352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, v6, Lazk;->g:Ljava/lang/Integer;

    .line 3353
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 3354
    iget-object v0, v6, Lazk;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(J)V

    .line 3355
    iget-object v0, v5, Lbbo;->f:Lbgp;

    iget-object v1, v6, Lazk;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lazk;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbgp;->h(Ljava/lang/String;I)I

    .line 3357
    :cond_5
    iget-object v0, v6, Lazk;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lazk;->q:Ljava/lang/Integer;

    .line 3358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v6, Lazk;->q:Ljava/lang/Integer;

    .line 3359
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 3360
    iget-object v0, v6, Lazk;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(J)V

    .line 3361
    iget-object v0, v5, Lbbo;->f:Lbgp;

    iget-object v1, v6, Lazk;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lazk;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbgp;->i(Ljava/lang/String;I)I

    .line 5227
    :cond_6
    iget-wide v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(J)V

    .line 5229
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5230
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    .line 5233
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5234
    invoke-static {v7}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5235
    const-string/jumbo v0, "ding.extension.comment.at"

    const-string/jumbo v1, "yes"

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5238
    :cond_7
    iget-wide v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 5239
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5240
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5241
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v0

    .line 5242
    add-long/2addr v0, v12

    .line 5243
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(J)V

    .line 5244
    iget-object v2, v5, Lbbo;->f:Lbgp;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lbgp;->b(Ljava/lang/String;J)I

    .line 5245
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0, v7}, Layv;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5247
    :cond_8
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5248
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t()J

    move-result-wide v0

    .line 5249
    add-long/2addr v0, v12

    .line 5250
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(J)V

    .line 5251
    iget-object v2, v5, Lbbo;->f:Lbgp;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lbgp;->c(Ljava/lang/String;J)I

    .line 5255
    :cond_9
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 5256
    iget-object v0, v5, Lbbo;->b:Lbbq;

    .line 6224
    new-instance v1, Lbbq$9;

    invoke-direct {v1, v0, v8}, Lbbq$9;-><init>(Lbbq;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3334
    :cond_a
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_1

    .line 3337
    :cond_b
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    if-le v0, v3, :cond_2

    .line 3338
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 3374
    :cond_c
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3381
    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v0, :cond_11

    .line 3385
    invoke-static {v7}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-wide v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-eqz v0, :cond_d

    move v0, v3

    .line 3387
    goto/16 :goto_3

    .line 3389
    :cond_d
    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    .line 3390
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v3

    .line 3392
    goto/16 :goto_3

    .line 3394
    :cond_e
    invoke-static {v7}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-eqz v0, :cond_f

    move v0, v3

    .line 3396
    goto/16 :goto_3

    .line 3399
    :cond_f
    invoke-static {v7}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    .line 3400
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-nez v0, :cond_11

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    .line 3401
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v3

    goto/16 :goto_3

    :cond_11
    move v0, v2

    goto/16 :goto_3

    .line 4053
    :cond_12
    new-instance v4, Lbeq;

    invoke-direct {v4}, Lbeq;-><init>()V

    .line 4054
    iget-wide v10, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    .line 4132
    iput-wide v10, v4, Lbeq;->a:J

    .line 4055
    iget-wide v10, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    .line 4136
    iput-wide v10, v4, Lbeq;->b:J

    .line 4056
    iget-wide v10, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    .line 4140
    iput-wide v10, v4, Lbeq;->c:J

    .line 4057
    iget-object v0, v1, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->getValue()I

    move-result v0

    .line 4144
    iput v0, v4, Lbeq;->d:I

    .line 4058
    iget-object v0, v1, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v10, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v0, v10, :cond_13

    instance-of v0, v1, Layz;

    if-eqz v0, :cond_13

    move-object v0, v1

    .line 4059
    check-cast v0, Layz;

    iget-object v0, v0, Layz;->a:Ljava/lang/String;

    .line 4148
    iput-object v0, v4, Lbeq;->e:Ljava/lang/String;

    .line 4061
    :cond_13
    iget-wide v10, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    iput-wide v10, v4, Lbeq;->f:J

    .line 4062
    iget-object v0, v1, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    iput-object v0, v4, Lbeq;->g:Ljava/util/Map;

    .line 4063
    iput-boolean v2, v4, Lbeq;->h:Z

    .line 4064
    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    move v2, v3

    :cond_14
    iput-boolean v2, v4, Lbeq;->i:Z

    .line 4261
    iget-object v0, v8, Lcom/alibaba/android/ding/base/objects/CommentObject;->r:Ljava/lang/String;

    .line 4065
    iput-object v0, v4, Lbeq;->j:Ljava/lang/String;

    move-object v0, v4

    .line 4066
    goto/16 :goto_4
.end method
