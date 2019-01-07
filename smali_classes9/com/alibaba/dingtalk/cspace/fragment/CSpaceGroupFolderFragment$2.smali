.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;
.super Ljava/lang/Object;
.source "CSpaceGroupFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 248
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 250
    invoke-static {}, Lglr;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    .line 252
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    .line 259
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Lgdh;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$2;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lgdh;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
