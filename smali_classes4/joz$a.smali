.class final Ljoz$a;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljoz;

.field private b:I


# direct methods
.method constructor <init>(Ljoz;)V
    .locals 1

    .prologue
    .line 898
    iput-object p1, p0, Ljoz$a;->a:Ljoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Ljoz$a;->b:I

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 904
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v0}, Ljoz;->d(Ljoz;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 959
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget-object v2, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v2}, Ljoz;->d(Ljoz;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 960
    iget-object v2, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v2}, Ljoz;->d(Ljoz;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 961
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 962
    iget-object v2, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v2}, Ljoz;->d(Ljoz;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 959
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 920
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 914
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljoz;->b(Ljoz;Z)Z

    .line 915
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 955
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 909
    iget v0, p0, Ljoz$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljoz$a;->b:I

    .line 910
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/32 v6, 0xea60

    .line 924
    iget v0, p0, Ljoz$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljoz$a;->b:I

    .line 925
    iget v0, p0, Ljoz$a;->b:I

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljoz;->b(Ljoz;Z)Z

    .line 928
    const-string/jumbo v0, "Page_hotpatch"

    const-string/jumbo v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v3}, Ljoz;->e(Ljoz;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 930
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v0}, Ljoz;->f(Ljoz;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v0}, Ljoz;->g(Ljoz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    invoke-static {v0}, Ljoz;->h(Ljoz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljoz$a$1;

    invoke-direct {v1, p0}, Ljoz$a$1;-><init>(Ljoz$a;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    iget-object v0, p0, Ljoz$a;->a:Ljoz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljoz;->c(Ljoz;Z)Z

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8bbe\u7f6e\u6740\u6389\u8fdb\u7a0b\u5b9a\u65f6\u5668\u6210\u529f\uff0c\u95f4\u9694\u91cd\u590d\u65f6\u95f4\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 950
    :cond_0
    return-void
.end method
