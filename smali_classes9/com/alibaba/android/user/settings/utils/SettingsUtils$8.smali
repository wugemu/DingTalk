.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->a:Landroid/support/v7/app/AlertDialog;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 829
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->a:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->a:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 821
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 825
    return-void
.end method
