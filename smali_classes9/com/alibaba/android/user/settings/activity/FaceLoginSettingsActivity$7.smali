.class final Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;
.super Ljava/lang/Object;
.source "FaceLoginSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 225
    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v1, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Z)V

    .line 225
    return-void

    .line 1229
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v2, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->b:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;->a:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0

    .line 243
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 237
    return-void
.end method
