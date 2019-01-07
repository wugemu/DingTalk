.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;
.super Ljava/lang/Object;
.source "CsDentryListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;->a(Lgqm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 461
    if-nez p2, :cond_1

    .line 463
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_doc_upload_pic"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0}, Lgdu$a;->r()V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 466
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_doc_upload_doc"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0}, Lgdu$a;->s()V

    goto :goto_0
.end method
