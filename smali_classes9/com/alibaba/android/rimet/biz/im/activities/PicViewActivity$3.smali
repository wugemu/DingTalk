.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 265
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "chat_image_view_grid_click"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 268
    .local v3, "id":I
    const v6, 0x7f11157d

    if-ne v3, v6, :cond_5

    .line 269
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->onBackPressed()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 275
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_2
    :goto_1
    const-string/jumbo v6, "intent_key_find_in_chat"

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v7}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 283
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "photoList_fetcher"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    .line 284
    .local v2, "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 286
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6, v7, v2, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Landroid/os/Bundle;)V

    goto :goto_0

    .line 277
    .end local v2    # "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "im"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "error="

    aput-object v10, v8, v9

    .line 279
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "photoList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-object v5, v6

    check-cast v5, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 289
    .local v5, "objects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "photoList_fetcher"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    .line 290
    .local v2, "fetcher":Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    if-eqz v5, :cond_4

    .line 291
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6, v7, v5, p3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 293
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v6, v7, v2, p3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "fetcher":Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    .end local v5    # "objects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_5
    const v6, 0x7f11157e

    if-ne v3, v6, :cond_0

    .line 298
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "chat_image_save_to_album"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v6

    invoke-virtual {v6, p2, v11}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(IZ)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 1
    .param p1, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 308
    :cond_0
    return-void
.end method
