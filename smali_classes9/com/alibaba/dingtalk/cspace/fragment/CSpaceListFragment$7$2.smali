.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1588
    new-instance v0, Lgpa;

    invoke-direct {v0}, Lgpa;-><init>()V

    .line 1589
    .local v0, "param":Lgpa;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lgpa;->a:Ljava/lang/Object;

    .line 1590
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgpa;->c:Z

    .line 1591
    const/4 v1, 0x1

    iput v1, v0, Lgpa;->g:I

    .line 1592
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v0, Lgpa;->f:I

    .line 1593
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgpe$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lgpe;->a(Lgpa;Lgpe$b;)V

    .line 1594
    return-void
.end method
