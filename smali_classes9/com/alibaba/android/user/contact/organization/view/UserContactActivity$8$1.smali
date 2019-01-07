.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Ljava/util/List;)Z

    .line 1824
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l()V

    .line 1825
    return-void
.end method
