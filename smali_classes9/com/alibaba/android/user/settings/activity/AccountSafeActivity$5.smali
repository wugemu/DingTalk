.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 337
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 315
    check-cast p1, Ljava/lang/String;

    .line 1318
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    sget v2, Lezg$h;->setting_pwd_lock_arrow_text:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1323
    :cond_0
    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->setting_pwd_unactivated:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1331
    :cond_1
    :goto_0
    return-void

    .line 1326
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lezg$l;->setting_pwd_unactivated:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
