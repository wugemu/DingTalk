.class final Lcom/alibaba/android/search/utils/SearchUtils$1;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 533
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1510
    if-nez p1, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->a:Landroid/app/Activity;

    sget v1, Lemt$g;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const-string/jumbo v3, "search_result"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .line 1518
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1519
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1521
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    .line 1523
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method
