.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;Z)Z

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Landroid/view/MenuItem;Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Landroid/view/MenuItem;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 126
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 131
    return-void
.end method
