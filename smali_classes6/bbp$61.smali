.class public final Lbbp$61;
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
    .line 497
    iput-object p1, p0, Lbbp$61;->b:Lbbp;

    iput-object p2, p0, Lbbp$61;->a:Lazp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 500
    iget-object v0, p0, Lbbp$61;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$61;->a:Lazp;

    .line 3280
    if-eqz v2, :cond_2

    .line 3284
    iget-object v0, v2, Lazp;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3286
    iget-object v0, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 3287
    if-nez v0, :cond_0

    .line 3288
    iget-object v3, v1, Lbbo;->f:Lbgp;

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6, v8, v9}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 3289
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3290
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3294
    :cond_0
    if-eqz v0, :cond_2

    .line 4713
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 3296
    if-eqz v3, :cond_2

    .line 3297
    iget-object v6, v2, Lazp;->j:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 3298
    const-string/jumbo v6, "checkedInCount"

    iget-object v2, v2, Lazp;->j:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3300
    :cond_1
    iget-object v1, v1, Lbbo;->f:Lbgp;

    invoke-interface {v1, v4, v5, v3}, Lbgp;->a(JLjava/util/Map;)I

    .line 3301
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/Map;)V

    .line 501
    :cond_2
    return-void
.end method
