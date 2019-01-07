.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 1995
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1999
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2000
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 2001
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 2002
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 2003
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lfvj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, "date":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2005
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    .line 2007
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2008
    return-void
.end method
