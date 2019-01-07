.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;
.super Ljava/lang/Object;
.source "SpaceShareFolderCreateActivity.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v2}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 407
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgic;

    .line 408
    .local v1, "spaceUpdateInfo":Lgic;
    iget-object v2, v1, Lgic;->a:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "spaceUpdateInfo":Lgic;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
