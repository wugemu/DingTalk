.class final Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 186
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    .line 1189
    if-eqz p1, :cond_1

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1191
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Z)V

    .line 1192
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b:Landroid/view/View;

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 207
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 201
    return-void
.end method
