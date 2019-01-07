.class public final Lbbp$52;
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
.field final synthetic a:Lazp;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lazp;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 422
    iput-object p1, p0, Lbbp$52;->b:Lbbp;

    iput-object p2, p0, Lbbp$52;->a:Lazp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lbbp$52;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v4

    iget-object v5, p0, Lbbp$52;->a:Lazp;

    .line 3221
    if-eqz v5, :cond_3

    .line 3222
    iget-object v0, v5, Lazp;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3223
    iget-object v0, v4, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 3224
    if-nez v0, :cond_5

    .line 3225
    iget-object v3, v4, Lbbo;->f:Lbgp;

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8, v2, v1}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 3226
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3227
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object v3, v0

    .line 3230
    :goto_0
    if-eqz v3, :cond_3

    .line 3231
    iget-object v0, v5, Lazp;->b:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 3231
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    .line 3232
    iget-object v0, v5, Lazp;->d:Ljava/lang/Integer;

    .line 6033
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 3233
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v8

    if-eq v8, v0, :cond_0

    .line 3234
    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(I)V

    .line 3235
    iget-object v0, v4, Lbbo;->f:Lbgp;

    iget-object v8, v5, Lazp;->d:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v6, v7, v8}, Lbgp;->b(JI)I

    .line 3236
    invoke-static {v3}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 6713
    :cond_0
    iget-object v8, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 3241
    if-eqz v8, :cond_2

    .line 3243
    iget-object v0, v5, Lazp;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, v5, Lazp;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->K()I

    move-result v9

    if-eq v0, v9, :cond_4

    .line 3245
    const-string/jumbo v0, "positiveStatusCount"

    iget-object v2, v5, Lazp;->f:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 3247
    :goto_1
    iget-object v2, v5, Lazp;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, v5, Lazp;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->L()I

    move-result v9

    if-eq v2, v9, :cond_1

    .line 3249
    const-string/jumbo v0, "unResponseStatusCount"

    iget-object v2, v5, Lazp;->g:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 3251
    :cond_1
    if-eqz v0, :cond_2

    .line 3252
    iget-object v0, v4, Lbbo;->f:Lbgp;

    invoke-interface {v0, v6, v7, v8}, Lbgp;->a(JLjava/util/Map;)I

    .line 3253
    invoke-virtual {v3, v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/Map;)V

    .line 3254
    invoke-static {v3}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 3258
    :cond_2
    invoke-virtual {v4}, Lbbo;->e()V

    .line 426
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move-object v3, v0

    goto/16 :goto_0
.end method
