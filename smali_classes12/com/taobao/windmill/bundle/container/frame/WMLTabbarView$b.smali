.class public final Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;
.super Landroid/widget/LinearLayout;
.source "WMLTabbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .line 137
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setOrientation(I)V

    .line 139
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setGravity(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public final setSelected(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V
    .locals 3
    .param p1, "data"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Ljps;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->getSelectedIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljps;->setImageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->getSelectedTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljqy;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    return-void
.end method

.method public final setUnSelected(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V
    .locals 3
    .param p1, "data"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Ljps;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljps;->setImageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->c:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljqy;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    return-void
.end method
