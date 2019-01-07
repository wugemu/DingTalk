.class final Lcom/alibaba/android/oa/activity/BossSettingActivity$3;
.super Ljava/lang/Object;
.source "BossSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/BossSettingActivity;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
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
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->dismissLoadingDialog()V

    .line 1193
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 189
    return-void

    .line 1193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->dismissLoadingDialog()V

    .line 205
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;->a:Lcom/alibaba/android/oa/activity/BossSettingActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 207
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 200
    return-void
.end method
