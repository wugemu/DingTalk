.class public Lcom/alibaba/android/user/login/MultiLoginActvity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MultiLoginActvity.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/Button;

.field private d:Lcjo$a;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/MultiLoginActvity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/MultiLoginActvity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lezg$j;->activity_multi_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->setContentView(I)V

    .line 1064
    sget v0, Lezg$h;->image_web_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->a:Landroid/widget/ImageView;

    .line 1065
    sget v0, Lezg$h;->toggle_cellphone_need_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->b:Landroid/widget/ToggleButton;

    .line 1066
    sget v0, Lezg$h;->btn_logout_web:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/MultiLoginActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->c:Landroid/widget/Button;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/login/MultiLoginActvity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/MultiLoginActvity$2;-><init>(Lcom/alibaba/android/user/login/MultiLoginActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2041
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/user/login/MultiLoginActvity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/MultiLoginActvity$1;-><init>(Lcom/alibaba/android/user/login/MultiLoginActvity;)V

    const-class v2, Lcjo$a;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->d:Lcjo$a;

    .line 2060
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->d:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 78
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->d:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/login/MultiLoginActvity;->d:Lcjo$a;

    .line 80
    return-void
.end method
