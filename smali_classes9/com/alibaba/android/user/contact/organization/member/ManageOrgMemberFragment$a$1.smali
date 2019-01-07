.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$1;
.super Ljava/lang/Object;
.source "ManageOrgMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$1;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

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
    .line 459
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$1;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)V

    .line 460
    return-void
.end method
