.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;->a:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 1339
    :goto_0
    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->finish()V

    goto :goto_0
.end method
