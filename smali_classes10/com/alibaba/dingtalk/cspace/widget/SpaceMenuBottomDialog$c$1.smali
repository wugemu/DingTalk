.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;
.super Ljava/lang/Object;
.source "SpaceMenuBottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqm;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;Lgqm;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->a:Lgqm;

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
    .line 383
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->a:Lgqm;

    iget v2, v2, Lgqm;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    .line 384
    .local v0, "itemListener":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;
    if-eqz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->a:Lgqm;

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;->a(Lgqm;)V

    .line 389
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->dismiss()V

    .line 390
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;->a:Lgqm;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;->a(Lgqm;)V

    goto :goto_0
.end method
