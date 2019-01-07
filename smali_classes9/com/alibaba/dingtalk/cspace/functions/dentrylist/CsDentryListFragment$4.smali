.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$4;
.super Ljava/lang/Object;
.source "CsDentryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0}, Lgdu$a;->n()V

    .line 187
    return-void
.end method
