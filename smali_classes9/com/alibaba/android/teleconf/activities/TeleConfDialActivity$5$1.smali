.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;
.super Ljava/lang/Object;
.source "TeleConfDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;Z)Z

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    goto :goto_0
.end method
