.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;
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
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 807
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "set wifi."

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 810
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 811
    return-void
.end method
