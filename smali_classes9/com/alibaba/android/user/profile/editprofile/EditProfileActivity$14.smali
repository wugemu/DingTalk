.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz p2, :cond_6

    sget v0, Lezg$l;->dt_register_school_title:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v3

    if-eqz p2, :cond_7

    sget v0, Lezg$l;->dt_register_school_title_hint:I

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setHint(I)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v3

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    .line 1021
    :goto_2
    iput v0, v3, Lfuz;->a:I

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfva;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfva;

    move-result-object v3

    .line 1073
    iput-boolean p2, v3, Lfva;->j:Z

    .line 1074
    iget-boolean v0, v3, Lfva;->j:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 1075
    :goto_3
    iget-object v4, v3, Lfva;->b:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1076
    iget-object v4, v3, Lfva;->b:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :cond_3
    iget-object v4, v3, Lfva;->c:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 1079
    iget-object v4, v3, Lfva;->c:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    :cond_4
    iget-object v4, v3, Lfva;->d:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 1082
    iget-object v3, v3, Lfva;->d:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_5
    if-eqz p2, :cond_a

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 281
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "user_register_stu_checked"

    invoke-interface {v0, v5, v1, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 287
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Z)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 289
    return-void

    .line 262
    :cond_6
    sget v0, Lezg$l;->dt_register_company_name:I

    goto/16 :goto_0

    .line 266
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)I

    move-result v0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 270
    goto :goto_2

    :cond_9
    move v0, v2

    .line 1074
    goto :goto_3

    .line 284
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_4
.end method
