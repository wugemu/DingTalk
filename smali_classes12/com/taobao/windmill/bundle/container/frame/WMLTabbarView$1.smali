.class public final Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;
.super Ljava/lang/Object;
.source "WMLTabbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    .local v0, "index":I
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->b(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->b(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;

    move-result-object v2

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$1;->a:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    invoke-interface {v2, v0, v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;->a(ILcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V

    goto :goto_0
.end method
