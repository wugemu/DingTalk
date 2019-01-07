.class public final Lhny;
.super Ljava/lang/Object;
.source "MiniAppViewProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ViewProvider;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/view/H5TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createNavMenu()Lcom/alipay/mobile/nebula/view/H5NavMenuView;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public final createPullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createTitleView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lhms;->a(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    iput-object v0, p0, Lhny;->a:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 24
    iget-object v0, p0, Lhny;->a:Lcom/alipay/mobile/nebula/view/H5TitleView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final createWebContentView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5WebContentView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
