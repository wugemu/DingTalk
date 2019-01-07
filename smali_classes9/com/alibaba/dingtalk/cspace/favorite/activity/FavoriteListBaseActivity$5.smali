.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->dismissLoadingDialog()V

    .line 329
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    check-cast p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 332
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->dismissLoadingDialog()V

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 337
    return-void
.end method
