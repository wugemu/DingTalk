.class final Lbrs$2;
.super Ljava/lang/Object;
.source "DocNavBarViewDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbrs;


# direct methods
.method constructor <init>(Lbrs;)V
    .locals 0
    .param p1, "this$0"    # Lbrs;

    .prologue
    .line 236
    iput-object p1, p0, Lbrs$2;->a:Lbrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 239
    iget-object v1, p0, Lbrs$2;->a:Lbrs;

    invoke-static {v1}, Lbrs;->a(Lbrs;)Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    if-ltz p1, :cond_0

    iget-object v1, p0, Lbrs$2;->a:Lbrs;

    invoke-static {v1}, Lbrs;->b(Lbrs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 241
    iget-object v1, p0, Lbrs$2;->a:Lbrs;

    invoke-static {v1}, Lbrs;->b(Lbrs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "itemId":Ljava/lang/String;
    iget-object v1, p0, Lbrs$2;->a:Lbrs;

    invoke-static {v1}, Lbrs;->a(Lbrs;)Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    move-result-object v1

    .line 1083
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 242
    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lbrs$2;->a:Lbrs;

    invoke-static {v1}, Lbrs;->a(Lbrs;)Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    move-result-object v1

    .line 2083
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 244
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onMenuItemClick(Ljava/lang/String;)V

    .line 248
    .end local v0    # "itemId":Ljava/lang/String;
    :cond_0
    return-void
.end method
