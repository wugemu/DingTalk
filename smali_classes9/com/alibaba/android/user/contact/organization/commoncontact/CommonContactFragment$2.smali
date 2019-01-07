.class final Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;
.super Ljava/lang/Object;
.source "CommonContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 377
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "nick":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .line 381
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newInvitationManager(Landroid/app/Activity;)Lgwp;

    move-result-object v0

    .line 382
    .local v0, "manager":Lgwp;
    invoke-interface {v0, v2}, Lgwp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    sget v4, Lezg$l;->dt_share_ding_word_popup_view_content:I

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v7, v3, v1}, Lgwp;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method
