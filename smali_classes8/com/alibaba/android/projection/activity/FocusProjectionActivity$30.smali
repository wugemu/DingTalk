.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;
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
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

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
    .line 2256
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2258
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const-string/jumbo v2, "https://nh.dingtalk.com/admindetail.html?id=zlyj_wlgl"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->dismiss()V

    .line 2270
    return-void

    .line 2259
    :cond_1
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 2260
    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2261
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2262
    :cond_3
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->requestFocus()Z

    goto :goto_0
.end method
