.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$3;
.super Ljava/lang/Object;
.source "ManageOrgMemberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$3;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$3;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->fullScroll(I)Z

    .line 322
    return-void
.end method
