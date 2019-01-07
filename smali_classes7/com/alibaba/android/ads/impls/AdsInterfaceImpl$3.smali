.class final Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;
.super Ljava/lang/Object;
.source "AdsInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;->addNoEntryId(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;->c:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 146
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;->b:Z

    .line 1503
    iget-object v0, v1, Lanm;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1504
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1523
    :cond_0
    return-void

    .line 1508
    :cond_1
    if-eqz v3, :cond_3

    .line 1509
    iget-object v3, v1, Lanm;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1519
    :goto_0
    const-string/jumbo v0, "mgr"

    const-string/jumbo v3, "updatePath,wid=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1521
    iget-object v0, v1, Lanm;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1522
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1526
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1532
    invoke-virtual {v1, v0}, Lanm;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1511
    :cond_3
    iget-object v3, v1, Lanm;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
