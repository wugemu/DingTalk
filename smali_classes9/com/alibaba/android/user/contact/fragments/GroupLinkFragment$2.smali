.class final Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;
.super Ljava/lang/Object;
.source "GroupLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    sget v2, Lezg$l;->dt_im_group_link_share_content:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->d(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->e(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .line 115
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    sget v4, Lezg$l;->dt_contacts_org_invite_copy_tips:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v1, v2, v3}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 116
    return-void
.end method
