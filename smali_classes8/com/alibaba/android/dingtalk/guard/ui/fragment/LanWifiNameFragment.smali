.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "LanWifiNameFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/view/View;

.field private c:Landroid/view/inputmethod/InputMethodManager;

.field private d:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->d:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->d:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Ljava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    .line 2132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->m()Lbsw$b;

    move-result-object v0

    invoke-interface {v0}, Lbsw$b;->R()Ljava/util/List;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2138
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;-><init>()V

    .line 167
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->t()V

    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanWifiNameFragment"

    const-string/jumbo v2, "alpha_set_ssid_name_cancel"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    sget v2, Lbrx$d;->et_wifi_name:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 64
    sget v2, Lbrx$d;->layout_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->b:Landroid/view/View;

    .line 66
    const-string/jumbo v1, ""

    .line 67
    .local v1, "wifiName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->m()Lbsw$b;

    move-result-object v0

    .line 68
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1142
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_2

    .line 1143
    :goto_0
    return-void

    .line 1145
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1146
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1147
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 172
    sget v1, Lbrx$f;->device_fragment_set_wifi_menu:I

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->d:Landroid/view/MenuItem;

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Z)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onDestroy()V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lbrx$d;->action_save:I

    if-ne v0, v1, :cond_2

    .line 2116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->m()Lbsw$b;

    move-result-object v1

    .line 2118
    if-eqz v1, :cond_0

    .line 2119
    invoke-interface {v1, v0}, Lbsw$b;->i(Ljava/lang/String;)V

    .line 2122
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->t()V

    .line 2124
    invoke-static {v0}, Lcms;->c(Ljava/lang/String;)Z

    move-result v0

    .line 2125
    if-eqz v0, :cond_1

    .line 2126
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanWifiNameFragment"

    const-string/jumbo v2, "alpha_ssid_name_contain_chinese"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2128
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanWifiNameFragment"

    const-string/jumbo v2, "alpha_save_ssid_name_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lbrx$e;->device_lan_wifi_name:I

    return v0
.end method
