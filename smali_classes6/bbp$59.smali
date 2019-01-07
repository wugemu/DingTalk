.class public final Lbbp$59;
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
.field final synthetic a:Lbgf;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbgf;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 476
    iput-object p1, p0, Lbbp$59;->b:Lbbp;

    iput-object p2, p0, Lbbp$59;->a:Lbgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 479
    iget-object v0, p0, Lbbp$59;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$59;->a:Lbgf;

    .line 2860
    if-eqz v1, :cond_0

    .line 3047
    iget-object v1, v1, Lbgf;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2864
    if-eqz v1, :cond_0

    .line 2869
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 2870
    if-eqz v2, :cond_1

    .line 2871
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 2873
    invoke-static {v2}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2875
    iget-object v1, v0, Lbbo;->f:Lbgp;

    new-array v3, v3, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lbgp;->a(Ljava/util/List;)I

    .line 3478
    :goto_0
    iget-object v1, v0, Lbbo;->b:Lbbq;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderless()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lbbq;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V

    .line 480
    :cond_0
    return-void

    .line 2878
    :cond_1
    iget-object v2, v0, Lbbo;->f:Lbgp;

    new-array v3, v3, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lbgp;->a(Ljava/util/List;)I

    goto :goto_0
.end method
