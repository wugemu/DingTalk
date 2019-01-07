.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;
.super Ljava/lang/Object;
.source "WMLTabFragment.java"

# interfaces
.implements Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "tabItemModel"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->d()Ljqd;

    move-result-object v4

    invoke-interface {v4}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    .line 82
    .local v0, "WMLRouter":Ljqr;
    iget-object v1, p2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->pageName:Ljava/lang/String;

    .line 83
    .local v1, "enterUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v5}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v0, v1}, Ljqr;->b(Ljava/lang/String;)Z

    move-result v2

    .line 89
    .local v2, "success":Z
    if-nez v2, :cond_2

    .line 90
    invoke-virtual {v0, v1}, Ljqr;->a(Ljava/lang/String;)Z

    .line 92
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 93
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v5}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setSelected(I)V

    .line 100
    .end local v0    # "WMLRouter":Ljqr;
    .end local v1    # "enterUrl":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return-void

    .line 96
    .restart local v0    # "WMLRouter":Ljqr;
    .restart local v1    # "enterUrl":Ljava/lang/String;
    .restart local v2    # "success":Z
    :cond_2
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v4, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;I)I

    .line 97
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;->c(Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setSelected(I)V

    goto :goto_0
.end method
