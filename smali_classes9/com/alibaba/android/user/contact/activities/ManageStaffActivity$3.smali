.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$3;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 699
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V

    .line 703
    return-void
.end method
