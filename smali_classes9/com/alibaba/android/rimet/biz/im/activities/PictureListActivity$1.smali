.class final Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;
.super Ljava/lang/Object;
.source "PictureListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v0, 0x7f1100bd

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    .line 74
    .local v12, "current":Ljava/lang/Object;
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 75
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent_key_finish_when_click_view_button"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string/jumbo v0, "intent_key_swipe_objects"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    if-eqz v12, :cond_0

    instance-of v0, v12, Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "photoList_fetcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    .line 82
    .local v2, "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    move-object v3, v12

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    .line 96
    .end local v2    # "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz v12, :cond_0

    instance-of v0, v12, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "photoList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-object v8, v0

    check-cast v8, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 87
    .local v8, "objects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "photoList_fetcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    .line 88
    .local v2, "fetcher":Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    if-eqz v8, :cond_2

    .line 89
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    move-object v9, v12

    check-cast v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z

    move-result v10

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    move-object v3, v12

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method
