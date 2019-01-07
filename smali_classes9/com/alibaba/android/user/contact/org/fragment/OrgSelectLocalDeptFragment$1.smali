.class final Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;
.super Ljava/lang/Object;
.source "OrgSelectLocalDeptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;Z)V

    .line 124
    return-void
.end method
