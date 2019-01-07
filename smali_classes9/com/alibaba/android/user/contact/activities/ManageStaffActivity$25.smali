.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1748
    if-nez p2, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->L(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->M(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    goto :goto_0
.end method
