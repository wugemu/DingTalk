.class Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

.field final synthetic val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    .line 130
    return-void
.end method
