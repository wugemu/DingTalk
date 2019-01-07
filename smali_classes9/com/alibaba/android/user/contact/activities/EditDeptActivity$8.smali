.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 632
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    new-instance v6, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8$1;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJLcma;)V

    .line 649
    return-void
.end method
