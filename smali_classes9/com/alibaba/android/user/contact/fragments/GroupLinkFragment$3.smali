.class final Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;
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
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    sget v1, Lezg$l;->dt_im_group_generate_link_fail:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    goto :goto_0
.end method
