.class final Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;
.super Ljava/lang/Object;
.source "DingTalkIdSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->a(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->e(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    sget v3, Lezg$l;->dingtalk_account_suffix:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 91
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 96
    return-void
.end method
