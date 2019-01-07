.class final Lcom/alibaba/android/user/contact/activities/ConcernListActivity$2;
.super Ljava/lang/Object;
.source "ConcernListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ConcernListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 212
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->b(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->select_contact_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v0, "show_local_contact"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "IDENTIFIY_CONCERN_LIST"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    return-object p1
.end method
