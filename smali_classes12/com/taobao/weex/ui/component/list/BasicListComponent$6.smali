.class Lcom/taobao/weex/ui/component/list/BasicListComponent$6;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

.field final synthetic val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 903
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$6;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$6;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 906
    .line 1465
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$6;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$6;"
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 906
    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$400(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/list/DragHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/component/list/DragHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 909
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
