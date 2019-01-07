.class final Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;
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
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

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
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->c(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    .line 107
    :cond_0
    return-void
.end method
