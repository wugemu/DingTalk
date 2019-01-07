.class final Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;
.super Ljava/lang/Object;
.source "SpaceLinkShareFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

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
    .line 269
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_sharelink_mgr_mainpage_delete_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgex$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgex$a;

    move-result-object v0

    invoke-interface {v0}, Lgex$a;->a()V

    .line 273
    :cond_0
    return-void
.end method
