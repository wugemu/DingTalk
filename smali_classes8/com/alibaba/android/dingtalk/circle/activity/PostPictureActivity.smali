.class public Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
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
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 197
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 4
    .param p0, "photoObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    .line 340
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 341
    .local v0, "viewPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->originUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 346
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->getRequestParams(J)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->calcOriginUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    goto :goto_1

    .line 346
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    .line 4280
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4281
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 4284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 4285
    if-eqz v0, :cond_1

    .line 4288
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 4289
    if-eqz v1, :cond_1

    .line 4292
    iget v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 4293
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 4294
    if-eqz v1, :cond_1

    .line 4297
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 4298
    invoke-static {v5}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4309
    invoke-static {v5}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4312
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4313
    iput v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoSize:I

    .line 4314
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_2

    .line 4315
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 4316
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 4317
    add-int/lit8 v7, v3, 0x1

    iput v7, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->index:I

    .line 4314
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 4302
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 56
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    .line 4351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4352
    const-string/jumbo v1, "is_disable_save"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4353
    const-string/jumbo v1, "is_disable_view_all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4354
    const-string/jumbo v1, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4355
    const-string/jumbo v1, "photoList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4356
    const-string/jumbo v1, "current_photo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4357
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    .line 4358
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Z)V

    .line 4359
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b(Z)V

    .line 4360
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c(Z)V

    .line 4361
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(Z)V

    .line 4362
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;)V

    .line 4384
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lbpu$d;->view_pager_container:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 56
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 3
    .param p1, "photoObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .param p2, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p2, :cond_0

    .line 2158
    if-eqz p2, :cond_2

    if-nez p1, :cond_4

    .line 2170
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 2173
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 2174
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2175
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2176
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_3
    :goto_2
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0

    .line 2161
    :cond_4
    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    invoke-static {p0, v0, v1}, Lbqi;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2162
    iget v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->index:I

    if-lez v0, :cond_5

    iget v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoSize:I

    if-lez v0, :cond_5

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2165
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2178
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lbnw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$f;->icon_c_like_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$a;->ui_common_theme_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    sget v1, Lbpu$a;->ui_common_theme_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$f;->icon_c_like:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lbpu$a;->ui_common_level1_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    sget v1, Lbpu$a;->ui_common_level1_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    .line 4322
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4323
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4326
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 4327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 4328
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 4329
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 4330
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 4331
    aput-object v0, v1, v2

    .line 4328
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 56
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbpu$d;->like:I

    if-ne v0, v1, :cond_2

    .line 2431
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2433
    if-eqz v0, :cond_0

    .line 2434
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v1, v2, v3}, Lbnw;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2451
    if-eqz v0, :cond_0

    .line 2454
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v1

    .line 2455
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$5;

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    invoke-interface {v1, v2, v3}, Lbou;->b(Ljava/lang/Long;Lcma;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 3445
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;-><init>(Landroid/content/Context;)V

    .line 3446
    sget v2, Lbpu$f;->icon_c_like:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a(Ljava/lang/String;)V

    .line 3447
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a(Landroid/view/View;)V

    .line 3479
    if-eqz v0, :cond_0

    .line 3482
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v1

    .line 3483
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    invoke-interface {v1, v2, v3, v4}, Lbou;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbpu$d;->cmt:I

    if-ne v0, v1, :cond_3

    .line 3511
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    if-eqz v0, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 3513
    if-eqz v0, :cond_0

    .line 3514
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3515
    const-string/jumbo v2, "extra_post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3516
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbpu$d;->check_detail:I

    if-ne v0, v1, :cond_0

    .line 3522
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    if-eqz v0, :cond_0

    .line 3523
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 3524
    if-eqz v0, :cond_0

    .line 3525
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3526
    const-string/jumbo v2, "extra_post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3527
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1109
    if-eqz v2, :cond_1

    .line 1112
    const-string/jumbo v0, "extra_post"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 1123
    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 1127
    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 1131
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 1114
    :cond_0
    const-string/jumbo v0, "extra_uid"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->h:J

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 82
    :goto_0
    if-nez v0, :cond_2

    .line 83
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "PostPictureActivity getIntentData fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->finish()V

    .line 93
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1115
    goto :goto_0

    .line 87
    :cond_2
    sget v0, Lbpu$e;->activity_post_picture:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->setContentView(I)V

    .line 1137
    sget v0, Lbpu$d;->summary:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b:Landroid/widget/TextView;

    .line 1138
    sget v0, Lbpu$d;->like:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    sget v0, Lbpu$d;->cmt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    sget v0, Lbpu$d;->check_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    sget v0, Lbpu$d;->like_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1142
    sget v0, Lbpu$d;->like_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->d:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->e:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 90
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->h:J

    .line 1231
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;J)V

    invoke-static {v2}, Lbpa;->a(Ljava/lang/Runnable;)V

    .line 2102
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "circle_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2103
    const-string/jumbo v1, "circle_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2104
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 389
    sget v1, Lbpu$f;->save_to_phone:I

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 98
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->f:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v4, v4, v0}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 416
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
