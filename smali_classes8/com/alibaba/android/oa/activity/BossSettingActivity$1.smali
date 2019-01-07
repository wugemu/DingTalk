.class final Lcom/alibaba/android/oa/activity/BossSettingActivity$1;
.super Ljava/lang/Object;
.source "BossSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/BossSettingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lega;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/BossSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/BossSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/BossSettingActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    check-cast p1, Lega;

    .line 1076
    if-eqz p1, :cond_0

    .line 1077
    invoke-virtual {p1}, Lega;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v4, v4, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    if-eq v3, v4, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    .line 1081
    iget-object v3, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, p1, Lega;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->h:Z

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    if-eqz v0, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    sget v3, Ledz$f;->btn_toggle_cal_push:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1081
    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 100
    return-void
.end method
