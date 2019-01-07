.class final Leau$3$1$1;
.super Ljava/lang/Object;
.source "AgainstHarassmentUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leau$3$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leau$3$1;


# direct methods
.method constructor <init>(Leau$3$1;)V
    .locals 0
    .param p1, "this$1"    # Leau$3$1;

    .prologue
    .line 146
    iput-object p1, p0, Leau$3$1$1;->a:Leau$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "AgainstHarassmentUtils quitSilent failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Leau$3$1$1;->a:Leau$3$1;

    iget-object v0, v0, Leau$3$1;->a:Leau$3;

    iget-object v0, v0, Leau$3;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Leau$3$1$1;->a:Leau$3$1;

    iget-object v0, v0, Leau$3$1;->a:Leau$3;

    iget-object v0, v0, Leau$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 166
    :cond_0
    const-string/jumbo v0, "101002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-static {p1, p2}, Lcms;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 146
    .line 1149
    iget-object v0, p0, Leau$3$1$1;->a:Leau$3$1;

    iget-object v0, v0, Leau$3$1;->a:Leau$3;

    iget-object v0, v0, Leau$3;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Leau$3$1$1;->a:Leau$3$1;

    iget-object v0, v0, Leau$3$1;->a:Leau$3;

    iget-object v0, v0, Leau$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 146
    :cond_0
    return-void
.end method
