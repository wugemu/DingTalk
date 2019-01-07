.class public Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;
.super Lcom/alibaba/security/biometrics/build/i;


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/i;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)Lcom/alibaba/security/biometrics/AuthContext;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    return-object v0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)V
    .locals 4

    .prologue
    .line 0
    .line 2000
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10002"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->finish()V

    .line 0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/i;->onBackPressed()V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10002"

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x9f

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x400

    const/4 v3, 0x1

    .line 0
    invoke-super {p0, p1}, Lcom/alibaba/security/biometrics/build/i;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-class v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0, v1}, Lhwb;->a(Lcom/alibaba/security/biometrics/AuthContext;)V

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a()Lhvj;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "K_SOUNDON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "vol_s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "nav"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10000"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10001"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Lhyx$e;->face_nav_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->setContentView(I)V

    sget v0, Lhyx$d;->face_nav_title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lhwx;

    invoke-direct {v1, p0}, Lhwx;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lhyx$d;->face_nav_title_bar_sound_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_SOUNDON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_SOUNDON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    if-eqz v1, :cond_2

    sget v1, Lhyx$c;->face_top_sound_on:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    new-instance v1, Lhwy;

    invoke-direct {v1, p0}, Lhwy;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lhyx$d;->abface_nav_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lhwz;

    invoke-direct {v1, p0}, Lhwz;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v2, v2, 0xe6

    div-int/lit16 v2, v2, 0x536

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "vol_s"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget v1, Lhyx$c;->face_top_sound_off:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/security/biometrics/build/i;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x9f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
