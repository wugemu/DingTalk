.class final Lgeq$3;
.super Ljava/lang/Object;
.source "DentryListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgeq;


# direct methods
.method constructor <init>(Lgeq;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgeq;

    .prologue
    .line 420
    iput-object p1, p0, Lgeq$3;->c:Lgeq;

    iput-object p2, p0, Lgeq$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lgeq$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 423
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;-><init>()V

    .line 424
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    iget-object v1, p0, Lgeq$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lgeq$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    .line 426
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lgeq$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lgeq$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 428
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lgeq$3;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V

    .line 429
    return-void
.end method
