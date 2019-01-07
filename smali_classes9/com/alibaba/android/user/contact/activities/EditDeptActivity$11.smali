.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    new-instance v1, Lfru;

    invoke-direct {v1}, Lfru;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfru;)Lfru;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v0

    iput-boolean p2, v0, Lfru;->b:Z

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v2, Lezg$l;->dt_group_manage_dept_edit_external_permission_off_intro:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    if-nez p2, :cond_1

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v0

    iput-object v3, v0, Lfru;->c:Ljava/util/List;

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v0

    iput-object v3, v0, Lfru;->d:Ljava/util/List;

    .line 327
    :cond_1
    return-void

    .line 320
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v2, Lezg$l;->setting_hide_dept_tips:I

    .line 322
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
