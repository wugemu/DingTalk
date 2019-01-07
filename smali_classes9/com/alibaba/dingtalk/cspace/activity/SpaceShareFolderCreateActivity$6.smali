.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;
.super Ljava/lang/Object;
.source "SpaceShareFolderCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 151
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 154
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .line 155
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Ljava/util/List;

    move-result-object v6

    const/16 v9, 0x3a

    move v7, v5

    move v8, v5

    .line 154
    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    .line 157
    return-void
.end method
