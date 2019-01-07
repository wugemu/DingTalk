.class final Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;
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
        "Ljava/lang/String;",
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
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 134
    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    .line 134
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    sget v3, Lezg$l;->dt_login_facebox_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lfri$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 143
    return-void
.end method
