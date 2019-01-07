.class final Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;
.super Ljava/lang/Object;
.source "ActiveInviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    sget v3, Lezg$l;->active_invite_member_use:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "\n"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    sget v5, Lezg$l;->dt_org_inactive_invite_has_hidden_mobiles_hint:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Lffx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lffx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 100
    const-string/jumbo v2, "contact_invitelist_invite_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method
