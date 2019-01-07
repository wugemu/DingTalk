.class final Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;
.super Ljava/lang/Object;
.source "ActiveInviteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 120
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 121
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v4, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    sget v5, Lezg$l;->active_invite_sb_use:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "title":Ljava/lang/String;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Lffx;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lffx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    const-string/jumbo v4, "contact_invitelist_invite_click"

    invoke-static {v4}, Lfxo;->a(Ljava/lang/String;)V

    .line 132
    .end local v1    # "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 127
    .restart local v1    # "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v7

    const-string/jumbo v5, "\n"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    sget v7, Lezg$l;->dt_org_inactive_invite_this_mobile_hidden_hint:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
