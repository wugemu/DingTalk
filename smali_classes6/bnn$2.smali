.class final Lbnn$2;
.super Ljava/lang/Object;
.source "VideoPoster.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnn;
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
        "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbnn;


# direct methods
.method constructor <init>(Lbnn;)V
    .locals 0
    .param p1, "this$0"    # Lbnn;

    .prologue
    .line 146
    iput-object p1, p0, Lbnn$2;->a:Lbnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1, p2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v0}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v0}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 167
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 146
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1149
    iget-object v0, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v0}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v0}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1152
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1153
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v2}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1156
    const-string/jumbo v2, "circle_pick_photo_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1157
    iget-object v0, p0, Lbnn$2;->a:Lbnn;

    invoke-static {v0}, Lbnn;->a(Lbnn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
