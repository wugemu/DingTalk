.class final Lanm$1;
.super Ljava/lang/Object;
.source "AdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanm;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lblc;

.field final synthetic e:Lanm;


# direct methods
.method constructor <init>(Lanm;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V
    .locals 0
    .param p1, "this$0"    # Lanm;

    .prologue
    .line 328
    iput-object p1, p0, Lanm$1;->e:Lanm;

    iput-object p2, p0, Lanm$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lanm$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object p4, p0, Lanm$1;->c:Landroid/view/View;

    iput-object p5, p0, Lanm$1;->d:Lblc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    iget-object v0, p0, Lanm$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "register id is empty"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "register id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lanm$1;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lanm$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v0, :cond_1

    .line 340
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "register add view"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lanm$1;->e:Lanm;

    invoke-static {v0}, Lanm;->a(Lanm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanm$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lanm$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1
    iget-object v0, p0, Lanm$1;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 345
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "register add parent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lanm$1;->e:Lanm;

    invoke-static {v0}, Lanm;->b(Lanm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanm$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lanm$1;->c:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_2
    iget-object v0, p0, Lanm$1;->d:Lblc;

    if-eqz v0, :cond_3

    .line 350
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "register add listener"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lanm$1;->e:Lanm;

    invoke-static {v0}, Lanm;->c(Lanm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanm$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lanm$1;->d:Lblc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_3
    iget-object v0, p0, Lanm$1;->e:Lanm;

    iget-object v1, p0, Lanm$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lanm;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
