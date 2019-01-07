.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;
.super Ljava/lang/Object;
.source "CreateOrgStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;Lcom/alibaba/android/user/contact/view/CheckBoxTextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;->a:Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 232
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;->a:Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    .line 1215
    iget-object v1, v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 233
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;->a:Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setChecked(Z)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
