.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->val$onClickListener:Landroid/view/View$OnClickListener;

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
    .line 204
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Ljqd;

    .line 1010
    .local v1, "wmlContext":Ljqd;
    new-instance v2, Ljrk;

    invoke-direct {v2}, Ljrk;-><init>()V

    .line 206
    const-string/jumbo v3, "navRightButton"

    .line 207
    invoke-virtual {v2, v3}, Ljrk;->a(Ljava/lang/String;)Ljrk;

    move-result-object v0

    .line 208
    .local v0, "event":Ljrk;
    invoke-interface {v1}, Ljqd;->getRuntimeInstance()Ljrz;

    move-result-object v2

    invoke-interface {v2, v0}, Ljrz;->a(Ljrk;)V

    .line 211
    .end local v0    # "event":Ljrk;
    .end local v1    # "wmlContext":Ljqd;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 214
    :cond_1
    return-void
.end method
