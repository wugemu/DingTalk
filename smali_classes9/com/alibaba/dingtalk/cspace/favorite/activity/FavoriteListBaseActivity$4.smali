.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;
.super Ljava/lang/Object;
.source "FavoriteListBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->d:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 287
    .local v0, "targetSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    instance-of v1, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_0

    .line 288
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->d:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->c:Ljava/util/List;

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Ljava/util/List;)V

    .line 291
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;->d:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->dismissLoadingDialog()V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 296
    return-void
.end method
