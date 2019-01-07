.class final Lfcd$2;
.super Ljava/lang/Object;
.source "VideoPoster.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcd;
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
.field final synthetic a:Lfcd;


# direct methods
.method constructor <init>(Lfcd;)V
    .locals 0
    .param p1, "this$0"    # Lfcd;

    .prologue
    .line 149
    iput-object p1, p0, Lfcd$2;->a:Lfcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v0}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v0}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 176
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 149
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1152
    iget-object v0, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v0}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v0}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1155
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v1, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v1}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1161
    iget-object v1, p0, Lfcd$2;->a:Lfcd;

    invoke-static {v1}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/connection_post.html"

    new-instance v3, Lfcd$2$1;

    invoke-direct {v3, p0, v0}, Lfcd$2$1;-><init>(Lfcd$2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 149
    :cond_1
    return-void
.end method
