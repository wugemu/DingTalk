.class public Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "mMenuData is not legal"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 5

    .prologue
    .line 1080
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "processRpcResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 1082
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 1083
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 1084
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    .line 1083
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getMenuClickRpc(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyError()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onBackPressed()V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 91
    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "1003"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Ligh$g;->verify_menu_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->setContentView(I)V

    .line 35
    sget v0, Ligh$f;->list_root:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->c:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Ligh$f;->scroll_view_root:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->d:Landroid/widget/ScrollView;

    .line 1042
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    .line 1055
    :goto_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;-><init>()V

    .line 1056
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    .line 1057
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->menu:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    .line 1058
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    .line 1059
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->innerMenu:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1060
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "no extra list needed to be shown."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_1
    return-void

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->ModuleData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    goto :goto_0

    .line 1051
    :cond_1
    const-class v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->innerMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    .line 1064
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    goto :goto_2

    .line 1066
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->d:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_1
.end method
