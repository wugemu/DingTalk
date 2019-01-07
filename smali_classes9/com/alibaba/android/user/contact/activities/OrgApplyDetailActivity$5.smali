.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;
.super Ljava/lang/Object;
.source "OrgApplyDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 546
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 547
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;)V

    .line 560
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;->a:Landroid/widget/EditText;

    .line 561
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->rejectOrgApplyWithReason(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V

    .line 562
    return-void
.end method
