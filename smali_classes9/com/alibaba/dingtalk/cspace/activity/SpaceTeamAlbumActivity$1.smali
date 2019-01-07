.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity$1;
.super Ljava/lang/Object;
.source "SpaceTeamAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_photo_upload"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->m()V

    .line 51
    return-void
.end method
