.class final Lfzz$10;
.super Ljava/lang/Object;
.source "CSpaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lfzz;


# direct methods
.method constructor <init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lfzz;

    .prologue
    .line 552
    iput-object p1, p0, Lfzz$10;->b:Lfzz;

    iput-object p2, p0, Lfzz$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 555
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;-><init>()V

    .line 556
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    iget-object v1, p0, Lfzz$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lfzz$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    .line 558
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lfzz$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    .line 559
    iget-object v1, p0, Lfzz$10;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 560
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lfzz$10;->b:Lfzz;

    invoke-static {v2}, Lfzz;->f(Lfzz;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V

    .line 561
    return-void
.end method
