.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "NameFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;
    .locals 3
    .param p0, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;-><init>()V

    .line 26
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public final k()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    sget v3, Lbrx$d;->uidic_forms_item_edittext:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a:Landroid/widget/EditText;

    .line 39
    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    .line 40
    .local v1, "filters":[Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 42
    sget v3, Lbrx$d;->device_name_text:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "textView":Landroid/widget/TextView;
    sget v3, Lbrx$g;->dt_door_guard_config_set_name:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->v()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->a:Landroid/widget/EditText;

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lbrx$e;->activity_device_config_name:I

    return v0
.end method
