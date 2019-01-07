.class final Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;
.super Ljava/lang/Object;
.source "TeleConfCallingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "delay":J
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    const-wide/16 v0, 0x3e8

    .line 208
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;)V

    invoke-virtual {v2, v3, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    .end local v0    # "delay":J
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    sget v4, Leuj$l;->dt_conference_get_number_error:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
