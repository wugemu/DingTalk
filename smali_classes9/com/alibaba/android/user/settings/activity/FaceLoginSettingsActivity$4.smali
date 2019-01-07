.class final Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 164
    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 164
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 173
    return-void
.end method
