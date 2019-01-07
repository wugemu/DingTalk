.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;
.super Landroid/os/Handler;
.source "SpaceBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 316
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 317
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->t:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Ljava/util/List;)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 323
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v1, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Z)Z

    .line 324
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    invoke-static {v1, v4}, Lfzt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v6, v1}, Lfzt;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 326
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    invoke-static {v6, v1}, Lfzt;->a(Ljava/lang/String;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 327
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "is_space_admin"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    new-instance v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;

    invoke-direct {v7}, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;-><init>()V

    .line 330
    .local v7, "photoObjectsFetcher":Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;
    iput-object v6, v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;->cacheKey:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 332
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v8

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
