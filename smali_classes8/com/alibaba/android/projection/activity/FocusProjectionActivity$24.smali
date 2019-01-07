.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1962
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1963
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1964
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 1965
    return-void
.end method
