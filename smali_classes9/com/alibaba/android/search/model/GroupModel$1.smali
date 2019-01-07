.class final Lcom/alibaba/android/search/model/GroupModel$1;
.super Ljava/lang/Object;
.source "GroupModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/GroupModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/search/model/GroupModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/GroupModel;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/GroupModel;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alibaba/android/search/model/GroupModel$1;->c:Lcom/alibaba/android/search/model/GroupModel;

    iput-object p2, p0, Lcom/alibaba/android/search/model/GroupModel$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/search/model/GroupModel$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 327
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 295
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1298
    if-eqz p1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/search/activity/BaseSearchActivity;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/search/activity/BaseSearchActivity;

    .line 1301
    invoke-virtual {v0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->c()Ljava/io/Serializable;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v1, :cond_1

    .line 1304
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "choose_enterprise_group_conversation"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1308
    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 1310
    iget-object v2, p0, Lcom/alibaba/android/search/model/GroupModel$1;->a:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_choose_group_conversation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1318
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/search/model/GroupModel$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
