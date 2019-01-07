.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->show()V

    .line 829
    :cond_0
    return-void
.end method
