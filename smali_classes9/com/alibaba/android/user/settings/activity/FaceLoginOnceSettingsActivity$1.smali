.class final Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;
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
        "Ljava/lang/Boolean;",
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
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    invoke-interface {v0}, Lfri$b;->a()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 99
    const-string/jumbo v0, "FaceLoginOnceSettingsActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "code:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 95
    return-void
.end method
