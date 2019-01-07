.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeEditActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->dismissLoadingDialog()V

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->setResult(I)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    .line 221
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->dismissLoadingDialog()V

    .line 237
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "updateForm: onException: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 232
    return-void
.end method
