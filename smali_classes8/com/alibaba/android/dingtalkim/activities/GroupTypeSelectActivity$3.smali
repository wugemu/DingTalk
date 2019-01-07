.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/action/upgrade_cooperative_group_internal"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;)V

    .line 139
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
