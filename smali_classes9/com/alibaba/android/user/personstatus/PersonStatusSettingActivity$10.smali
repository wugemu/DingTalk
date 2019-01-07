.class final Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;
.super Ljava/lang/Object;
.source "PersonStatusSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->dismissLoadingDialog()V

    .line 207
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->dismissLoadingDialog()V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->finish()V

    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_settings_card_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$10;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 194
    return-void
.end method
