.class final Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;
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
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    sget v2, Lezg$l;->dt_login_facebox_reset_success:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    sget v3, Lezg$l;->dt_login_facebox_verify_success_content:I

    .line 1143
    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1142
    invoke-interface {v0, v1, v2}, Lfri$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->finish()V

    .line 139
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method
