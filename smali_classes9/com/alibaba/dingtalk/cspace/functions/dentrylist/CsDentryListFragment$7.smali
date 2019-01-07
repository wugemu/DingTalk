.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;
.super Ljava/lang/Object;
.source "CsDentryListFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->b:Landroid/util/SparseArray;

    .line 421
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Lgqm;)V
    .locals 4
    .param p1, "menuObject"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 431
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->c:Landroid/util/SparseArray;

    iget v3, p1, Lgqm;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "clickKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->b:Landroid/util/SparseArray;

    iget v3, p1, Lgqm;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .local v1, "fileType":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v2

    invoke-interface {v2, v1}, Lgdu$a;->a(Ljava/lang/String;)V

    .line 437
    return-void
.end method
