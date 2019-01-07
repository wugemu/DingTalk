.class final Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;
.super Ljava/lang/Object;
.source "SpaceLinkShareFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
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
    .line 234
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
    .locals 9
    .param p1, "model"    # Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 237
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgmb$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;)V

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;Lgmb$a;)Lgmb$a;

    .line 250
    :cond_0
    new-instance v0, Lgmd;

    invoke-direct {v0}, Lgmd;-><init>()V

    .line 251
    .local v0, "spaceOperationController":Lgmd;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgmb$a;

    move-result-object v2

    .line 1185
    if-eqz p1, :cond_2

    .line 1189
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    .line 1190
    invoke-virtual {v3, v8}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 1191
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 1193
    new-instance v4, Lgqm;

    const/16 v5, 0x3f2

    sget v6, Lfzs$h;->space_file_delete:I

    invoke-static {v6}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1195
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v4

    invoke-static {}, Lgqh;->a()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1196
    new-instance v4, Lgqm;

    const/16 v5, 0x3fc

    sget v6, Lfzs$h;->dt_space_link_copy_link_extraction:I

    invoke-static {v6}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1197
    new-instance v4, Lgqm;

    const/16 v5, 0x406

    sget v6, Lfzs$h;->dt_navigation_item_share:I

    invoke-static {v6}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1200
    :cond_1
    new-instance v4, Lgmb;

    invoke-direct {v4}, Lgmb;-><init>()V

    .line 1201
    iput-object p1, v4, Lgmb;->p:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 1202
    iput-object v2, v4, Lgmb;->r:Lgmb$a;

    .line 1203
    iget-wide v6, v0, Lgmd;->f:J

    iput-wide v6, v4, Lgmb;->s:J

    .line 1204
    new-instance v2, Lgmc;

    invoke-direct {v2, v1, v4, v3}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1205
    invoke-virtual {v2}, Lgmc;->a()V

    .line 252
    :cond_2
    return-void
.end method
