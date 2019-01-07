.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$6;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->onBackPressed()V
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
    .line 405
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$6;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 408
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 409
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$6;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    .line 410
    return-void
.end method
