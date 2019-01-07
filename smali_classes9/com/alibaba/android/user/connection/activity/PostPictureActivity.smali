.class public Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 201
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 4
    .param p0, "photoObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    .line 344
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 345
    .local v0, "viewPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->originUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 350
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->getRequestParams(J)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->calcOriginUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    .line 5284
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5285
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5287
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 5288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 5289
    if-eqz v0, :cond_1

    .line 5292
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 5293
    if-eqz v1, :cond_1

    .line 5296
    iget v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 5297
    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 5298
    if-eqz v1, :cond_1

    .line 5301
    iget-object v5, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    .line 5302
    invoke-static {v5}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5313
    invoke-static {v5}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5316
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 5317
    iput v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->photoSize:I

    .line 5318
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_2

    .line 5319
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 5320
    iput-object v0, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 5321
    add-int/lit8 v7, v3, 0x1

    iput v7, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->index:I

    .line 5318
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 5306
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 60
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .param p2, "x2"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    .line 5355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5356
    const-string/jumbo v1, "is_disable_save"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5357
    const-string/jumbo v1, "is_disable_view_all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5358
    const-string/jumbo v1, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5359
    const-string/jumbo v1, "photoList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5360
    const-string/jumbo v1, "current_photo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5361
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    .line 5362
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Z)V

    .line 5363
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b(Z)V

    .line 5364
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c(Z)V

    .line 5365
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(Z)V

    .line 5366
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;)V

    .line 5388
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lezg$h;->view_pager_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 60
    return-void
.end method

.method private a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 3
    .param p1, "photoObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .param p2, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p2, :cond_0

    .line 2162
    if-eqz p2, :cond_2

    if-nez p1, :cond_4

    .line 2174
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 2177
    iget-object v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 2178
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2179
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2180
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_3
    :goto_2
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0

    .line 2165
    :cond_4
    iget-wide v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    invoke-static {p0, v0, v1}, Lfff;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2166
    iget v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->index:I

    if-lez v0, :cond_5

    iget v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->photoSize:I

    if-lez v0, :cond_5

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->photoSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2169
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2182
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$l;->icon_c_like_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$e;->ui_common_theme_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$e;->ui_common_theme_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$l;->icon_c_like:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$e;->ui_common_level1_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$e;->ui_common_level1_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    .line 5326
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5327
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5330
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 5331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 5332
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 5333
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 5334
    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 5335
    aput-object v0, v1, v2

    .line 5332
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 60
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->like:I

    if-ne v0, v1, :cond_2

    .line 2435
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    if-eqz v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 2437
    if-eqz v0, :cond_0

    .line 2438
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v1, v2, v3}, Lfcn;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2455
    if-eqz v0, :cond_0

    .line 3036
    sget-object v1, Lfdm$a;->a:Lfdk;

    .line 2459
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    new-instance v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;

    invoke-direct {v4, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;-><init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v1, v2, v3, v4}, Lfdk;->b(JLcma;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 3449
    :cond_1
    new-instance v1, Lcom/alibaba/android/user/connection/anim/GoodView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/anim/GoodView;-><init>(Landroid/content/Context;)V

    .line 3450
    sget v2, Lezg$l;->icon_c_like:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/anim/GoodView;->a(Ljava/lang/String;)V

    .line 3451
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/anim/GoodView;->a(Landroid/view/View;)V

    .line 3483
    if-eqz v0, :cond_0

    .line 4036
    sget-object v1, Lfdm$a;->a:Lfdk;

    .line 3487
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$6;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$6;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lfdk;->a(JLjava/lang/String;Lcma;)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->cmt:I

    if-ne v0, v1, :cond_3

    .line 4512
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    if-eqz v0, :cond_0

    .line 4513
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 4514
    if-eqz v0, :cond_0

    .line 4515
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4516
    const-string/jumbo v2, "extra_post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4517
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->check_detail:I

    if-ne v0, v1, :cond_0

    .line 4523
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    if-eqz v0, :cond_0

    .line 4524
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 4525
    if-eqz v0, :cond_0

    .line 4526
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/connection_post_pic.html"

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1112
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1113
    if-eqz v2, :cond_1

    .line 1116
    const-string/jumbo v0, "extra_post"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 1127
    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 1131
    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    .line 1135
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1136
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 1118
    :cond_0
    const-string/jumbo v0, "extra_uid"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->h:J

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 86
    :goto_0
    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "PostPictureActivity getIntentData fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->finish()V

    .line 97
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1119
    goto :goto_0

    .line 91
    :cond_2
    sget v0, Lezg$j;->activity_connection_post_picture:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->setContentView(I)V

    .line 1141
    sget v0, Lezg$h;->summary:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    .line 1142
    sget v0, Lezg$h;->like:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    sget v0, Lezg$h;->cmt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    sget v0, Lezg$h;->check_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    sget v0, Lezg$h;->like_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1146
    sget v0, Lezg$h;->like_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->e:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 94
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->h:J

    .line 1235
    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;J)V

    invoke-static {v2}, Lfds;->a(Ljava/lang/Runnable;)V

    .line 2106
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "connection_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2107
    const-string/jumbo v1, "connection_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2108
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 393
    sget v1, Lezg$l;->save_to_phone:I

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 394
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 395
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 102
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->f:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v4, v4, v0}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
