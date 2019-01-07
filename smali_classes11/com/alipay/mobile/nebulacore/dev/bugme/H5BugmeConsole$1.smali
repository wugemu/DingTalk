.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;
.super Ljava/lang/Object;
.source "H5BugmeConsole.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->initTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

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
    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$000(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 98
    .local v0, "index":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->refresh()V

    .line 100
    return-void
.end method
