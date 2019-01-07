.class final Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;
.super Ljava/lang/Object;
.source "ChangePwdActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 282
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
