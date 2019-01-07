.class final Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;
.super Ljava/lang/Object;
.source "TeleConfRetryActivity.java"

# interfaces
.implements Lewl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get phone number fail in conf-retry-page"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)J

    move-result-wide v2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v1, v2}, Leyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;Z)Z

    .line 280
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$6;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
