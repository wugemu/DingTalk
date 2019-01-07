.class final Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfGlobalDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    const-string/jumbo v1, "global_dialog_type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->finish()V

    .line 330
    .end local v0    # "type":I
    :cond_0
    return-void
.end method
