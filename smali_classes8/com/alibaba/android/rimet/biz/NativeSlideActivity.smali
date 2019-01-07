.class public Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "NativeSlideActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Llgf;

.field private f:Llgf;

.field private g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Llgf;)Llgf;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
    .param p1, "x1"    # Llgf;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Llgf;)Llgf;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
    .param p1, "x1"    # Llgf;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 54
    .line 2199
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    const v0, 0x7f110844

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2201
    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 2229
    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 2250
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    new-instance v2, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v1, v2}, Llgf;->a(Llgb;)V

    .line 2260
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$8;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Llgf;->a(Llgb;)V

    .line 2267
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 2268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->h:Z

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->h:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040143

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->hideToolbar()V

    .line 75
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_0

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_already_show_slide_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :goto_0
    const v0, 0x7f110846

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b:Landroid/widget/Button;

    .line 2083
    const v0, 0x7f110845

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c:Landroid/widget/Button;

    .line 2084
    const v0, 0x7f110847

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d:Landroid/widget/Button;

    .line 2085
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2096
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2117
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2118
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2144
    :goto_1
    const-class v0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 79
    return-void

    .line 1136
    :cond_0
    :try_start_1
    const-string/jumbo v0, "pref_already_show_slide_"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v0

    const-string/jumbo v0, "pref_already_show_slide_"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a:Ljava/lang/String;

    goto :goto_0

    .line 2120
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2121
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2122
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e:Llgf;

    invoke-virtual {v0}, Llgf;->a()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    invoke-virtual {v0}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->f:Llgf;

    invoke-virtual {v0}, Llgf;->a()V

    .line 287
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 288
    return-void
.end method
