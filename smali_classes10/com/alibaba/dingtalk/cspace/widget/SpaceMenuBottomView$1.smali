.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;
.super Ljava/lang/Object;
.source "SpaceMenuBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    instance-of v2, p1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 296
    check-cast v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .line 297
    .local v1, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    .line 298
    .local v0, "menuObject":Lgqm;
    if-eqz v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqm;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqm;

    move-result-object v2

    iget v2, v2, Lgqm;->a:I

    iget v3, v0, Lgqm;->a:I

    if-ne v2, v3, :cond_2

    .line 302
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a()V

    .line 303
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqm;

    invoke-interface {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;->a()V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqj;

    move-result-object v2

    invoke-interface {v2, v0}, Lgqj;->a(Lgqm;)V

    goto :goto_0
.end method
