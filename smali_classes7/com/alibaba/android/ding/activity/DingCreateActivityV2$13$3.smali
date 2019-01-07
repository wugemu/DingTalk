.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;
.super Lcrw;
.source "DingCreateActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;
    .param p2, "x0"    # I

    .prologue
    .line 909
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    invoke-direct {p0, p2}, Lcrw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 1161
    if-eqz v0, :cond_0

    .line 1164
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/huifujinfasongzhekejian"

    invoke-virtual {v1, v0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 914
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    return-void
.end method
