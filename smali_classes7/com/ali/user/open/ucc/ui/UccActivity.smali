.class public Lcom/ali/user/open/ucc/ui/UccActivity;
.super Landroid/app/Activity;
.source "UccActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UccActivity"

.field public static mUccCallback:Lcom/ali/user/open/ucc/UccCallback;


# instance fields
.field a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 113
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string/jumbo v1, "funcType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    const-string/jumbo v2, "targetSite"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "userToken"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string/jumbo v5, "isFromUCC"

    const-string/jumbo v6, "1"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v5, "needSession"

    const-string/jumbo v6, "needSession"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v5, "scene"

    const-string/jumbo v6, "scene"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v5, "needAutoLogin"

    const-string/jumbo v6, "needAutoLogin"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    packed-switch v1, :pswitch_data_0

    .line 93
    const-class v0, Lcom/ali/user/open/ucc/UccService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccService;

    new-instance v5, Lcom/ali/user/open/ucc/ui/UccActivity$3;

    invoke-direct {v5, p0}, Lcom/ali/user/open/ucc/ui/UccActivity$3;-><init>(Lcom/ali/user/open/ucc/ui/UccActivity;)V

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccService;->bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 73
    :pswitch_0
    const-class v0, Lcom/ali/user/open/ucc/UccService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccService;

    new-instance v1, Lcom/ali/user/open/ucc/ui/UccActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/open/ucc/ui/UccActivity$2;-><init>(Lcom/ali/user/open/ucc/ui/UccActivity;)V

    invoke-interface {v0, p0, v2, v4, v1}, Lcom/ali/user/open/ucc/UccService;->trustLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 125
    const-string/jumbo v0, "UccActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 130
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    .line 29
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ali/user/open/ucc/ui/UccActivity;->setContentView(Landroid/view/View;)V

    .line 32
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ali/user/open/ucc/ui/UccActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/open/ucc/ui/UccActivity$1;-><init>(Lcom/ali/user/open/ucc/ui/UccActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 44
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 47
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string/jumbo v0, "UccActivity"

    const-string/jumbo v1, "static field null"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string/jumbo v0, "UccActivity"

    const-string/jumbo v1, "before mtop call showLogin"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 121
    :cond_0
    return-void
.end method
