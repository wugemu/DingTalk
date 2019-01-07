.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;
.super Ljava/lang/Object;
.source "TeleVoipFailActivity.java"

# interfaces
.implements Lewl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

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
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get phone number fail in voip-fail-page"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)J

    move-result-wide v2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v1, v2}, Leyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
