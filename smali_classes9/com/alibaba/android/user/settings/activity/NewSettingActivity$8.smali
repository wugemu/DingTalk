.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
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
        "Lfws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

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
    .line 217
    check-cast p1, Lfws;

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Lfws;)Lfws;

    .line 1221
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)Lfws;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->a(Lfws;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 217
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 232
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 228
    return-void
.end method
