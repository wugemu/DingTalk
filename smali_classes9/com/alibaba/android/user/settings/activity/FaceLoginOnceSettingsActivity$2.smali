.class final Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;
.super Ljava/lang/Object;
.source "FaceLoginOnceSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->c(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->c(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    .line 127
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 121
    return-void
.end method
