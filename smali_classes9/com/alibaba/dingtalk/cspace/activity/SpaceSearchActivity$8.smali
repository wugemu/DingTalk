.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;
.super Ljava/lang/Object;
.source "SpaceSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1278
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 1280
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
