.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizePreviewActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v0, "corp_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    return-object p1
.end method
