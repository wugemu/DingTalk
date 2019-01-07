.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 917
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 920
    :cond_0
    return-void
.end method
