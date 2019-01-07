.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;
.super Ljava/lang/Object;
.source "SelectedContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    if-nez p2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 166
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 177
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .line 178
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1$2;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;)V

    .line 179
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
