.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;
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
    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 107
    .end local v0    # "list":Ljava/util/List;
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    .local v1, "view":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->refresh()V

    goto :goto_1

    .line 108
    .end local v1    # "view":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;
    :cond_1
    return-void
.end method
