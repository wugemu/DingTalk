.class public Lcom/taobao/ma/ui/ScanCombineActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ScanCombineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:Lcom/taobao/ma/ui/ScanBaseFragment;

.field private e:Lcom/taobao/ma/ui/ScanBaseFragment;

.field private f:Lcom/taobao/ma/ui/ScanBaseFragment;

.field private final g:[Ljava/lang/String;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lecw;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Activity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "FragmentActivity"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->g:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;
    .param p1, "x1"    # Lcom/taobao/ma/ui/ScanBaseFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->d:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/ma/ui/ScanCombineActivity;)Lecw;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->i:Lecw;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->d:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;
    .param p1, "x1"    # Lcom/taobao/ma/ui/ScanBaseFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/taobao/ma/ui/ScanCombineActivity;Lcom/taobao/ma/ui/ScanBaseFragment;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;
    .param p1, "x1"    # Lcom/taobao/ma/ui/ScanBaseFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->e:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object p1
.end method

.method static synthetic d(Lcom/taobao/ma/ui/ScanCombineActivity;)Lcom/taobao/ma/ui/ScanBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->e:Lcom/taobao/ma/ui/ScanBaseFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lelh$e;->img_back:I

    if-ne v0, v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/taobao/ma/ui/ScanCombineActivity;->finish()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lelh$e;->img_more:I

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-static {v0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/ScanBaseFragment;->f()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lelh$f;->activity_scan_combine:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->setContentView(I)V

    .line 1093
    sget v0, Lelh$e;->img_more:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    sget v0, Lelh$e;->img_back:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    sget v0, Lelh$e;->radio_btn_qr_scan:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->a:Landroid/widget/RadioButton;

    .line 1096
    sget v0, Lelh$e;->radio_btn_card_scan:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->b:Landroid/widget/RadioButton;

    .line 1097
    sget v0, Lelh$e;->radio_btn_scan_doc:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    .line 1098
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    invoke-virtual {v0}, Lgzo;->d()Lgrm;

    move-result-object v0

    invoke-interface {v0}, Lgrm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Lecw;

    sget v1, Lelh$h;->icon_doc_fill:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/ma/ui/ScanCombineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$b;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->i:Lecw;

    .line 1100
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->i:Lecw;

    invoke-static {p0, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    .line 2079
    iput v1, v0, Lecw;->b:I

    .line 1101
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->i:Lecw;

    invoke-static {p0, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    .line 3070
    iput v1, v0, Lecw;->a:I

    .line 1102
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->i:Lecw;

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    sget v1, Lelh$h;->dt_photo_scan_doc:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/ScanCombineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->j:Landroid/view/View;

    .line 1111
    :goto_0
    sget v0, Lelh$e;->radio_btn_group:I

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/taobao/ma/ui/ScanCombineActivity$1;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/ScanCombineActivity$1;-><init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V

    .line 1112
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1171
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1173
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->q:Ljava/lang/String;

    sget v0, Lelh$e;->scan_red_dot:I

    .line 1174
    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 1173
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 1175
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/taobao/ma/ui/ScanCombineActivity$2;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/ScanCombineActivity$2;-><init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3184
    new-instance v0, Lcom/taobao/ma/ui/ScanCombineActivity$3;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/ScanCombineActivity$3;-><init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->h:Landroid/content/BroadcastReceiver;

    .line 3193
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lhcp;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3194
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->b:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->j:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 4198
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4199
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 4200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->h:Landroid/content/BroadcastReceiver;

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 289
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    instance-of v0, v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->f:Lcom/taobao/ma/ui/ScanBaseFragment;

    instance-of v0, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3245
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3246
    if-nez v0, :cond_1

    .line 3279
    :cond_0
    :goto_0
    return-void

    .line 3251
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->g:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/ma/ui/ScanCombineActivity;->g:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3252
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3253
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 3256
    :cond_2
    const-string/jumbo v1, "mFragments"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3257
    if-eqz v0, :cond_0

    .line 3258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3259
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3260
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "noteStateNotSaved"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3265
    if-eqz v1, :cond_0

    .line 3267
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 3271
    :catch_0
    move-exception v0

    .line 3272
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 3273
    :catch_1
    move-exception v0

    .line 3274
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 3275
    :catch_2
    move-exception v0

    .line 3276
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 3277
    :catch_3
    move-exception v0

    .line 3278
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
