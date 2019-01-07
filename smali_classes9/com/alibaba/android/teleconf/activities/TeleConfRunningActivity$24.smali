.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->dismiss()V

    .line 1753
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Send conf pwd by IM"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1755
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1756
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const-string/jumbo v3, "android.intent.action.SEND"

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
