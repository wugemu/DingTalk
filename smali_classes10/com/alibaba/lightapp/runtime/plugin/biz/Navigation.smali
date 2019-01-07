.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON_KEY_ACTION:Ljava/lang/String; = "action"

.field private static final JSON_KEY_RETURNURL:Ljava/lang/String; = "returnUrl"

.field public static sMenuTextDefaultColor:Ljava/lang/String;

.field public static sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

.field private static sReturnUrl:Ljava/lang/String;


# instance fields
.field private hasSetHomeClick:Z

.field private helpIconIndex:I

.field private helpShowIcon:Z

.field private homeClickText:Ljava/lang/String;

.field private homeClickTitle:Ljava/lang/String;

.field private isShowActionBar:Z

.field private isShowFirst:Z

.field private leftAndroid:Z

.field private leftControl:Z

.field private leftShow:Z

.field private leftShowIcon:Z

.field private leftText:Ljava/lang/String;

.field private mActionsCallbackId:Ljava/lang/String;

.field private mDropListMenuCallbackId:Ljava/lang/String;

.field private mHelpIconCallbackId:Ljava/lang/String;

.field private mHomeCallbackId:Ljava/lang/String;

.field private mLeftCallbackId:Ljava/lang/String;

.field private mMenuCallbackId:Ljava/lang/String;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTextColor:Ljava/lang/String;

.field private mOverflowMenuBackgroundColor:Ljava/lang/String;

.field private mRightCallbackId:Ljava/lang/String;

.field private rightControl:Z

.field private rightDisable:Z

.field private rightShow:Z

.field private rightText:Ljava/lang/String;

.field private showRedDotBesideTitle:Z

.field private showSubTitleIcon:Z

.field private tempSubTitle:Ljava/lang/String;

.field private tempSubTitleIcon:Ljava/lang/String;

.field private tempTitle:Ljava/lang/String;

.field private titleClickEventEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "#F7F7F7"

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "#000000"

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sMenuTextDefaultColor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShow:Z

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftControl:Z

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShowIcon:Z

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftText:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftAndroid:Z

    .line 64
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightShow:Z

    .line 65
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightControl:Z

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightDisable:Z

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightText:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->hasSetHomeClick:Z

    .line 73
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowFirst:Z

    .line 74
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowActionBar:Z

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpShowIcon:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpIconIndex:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    .line 747
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getCallbackValue()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 720
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 722
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-object v1

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getItemCallbackValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 731
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-object v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private showTitleDropListMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, "dropListItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 713
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->showTitleDropListMenu(Ljava/util/List;)V

    .line 716
    :cond_0
    return-void
.end method

.method private updateActionBar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 628
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 629
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowActionBar:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->hideActionBar(Z)V

    .line 631
    :cond_0
    return-void
.end method

.method private updateActionBarRightView()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mRightCallbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateRight()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuCallbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateMenu()V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mActionsCallbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateActions()V

    .line 688
    :cond_2
    return-void
.end method

.method private updateActions()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 706
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 707
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowFirst:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActions(Ljava/util/List;Z)V

    .line 709
    :cond_0
    return-void
.end method

.method private updateHome(Z)V
    .locals 1
    .param p1, "needControlHomeClick"    # Z

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 649
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setNeedControlHome(Z)V

    .line 652
    :cond_0
    return-void
.end method

.method private updateIcon()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 671
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 672
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpShowIcon:Z

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpIconIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setHelpIcon(ZI)V

    .line 674
    :cond_0
    return-void
.end method

.method private updateLeft()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftAndroid:Z

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 658
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 659
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShow:Z

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShowIcon:Z

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftControl:Z

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setLeft(ZZZLjava/lang/String;)V

    .line 662
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftControl:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->inappropriateSetInterceptBackButton(Z)V

    .line 664
    .end local v0    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    :cond_1
    return-void
.end method

.method private updateMenu()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 699
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 700
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mOverflowMenuBackgroundColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    return-void
.end method

.method private updateRight()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 692
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 693
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightShow:Z

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightControl:Z

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightDisable:Z

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setRight(ZZZLjava/lang/String;)V

    .line 695
    :cond_0
    return-void
.end method

.method private updateSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 642
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 645
    :cond_0
    return-void
.end method

.method private updateTitle(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "eventEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 635
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 636
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 638
    :cond_0
    return-void
.end method


# virtual methods
.method public back(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 382
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 384
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public close(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 401
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 404
    :goto_0
    return-object v1

    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "invalid context"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createEditor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 464
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 465
    .local v2, "reqArgs":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 466
    .local v0, "actionObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 467
    const-string/jumbo v3, "returnUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sReturnUrl:Ljava/lang/String;

    .line 469
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sReturnUrl->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sReturnUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string/jumbo v3, "json_object"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .end local v0    # "actionObject":Lorg/json/JSONObject;
    .end local v2    # "reqArgs":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v4, v1, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 473
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v3
.end method

.method public finishEditor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "finish_editor"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 482
    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->reload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    .line 484
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    .line 485
    .local v2, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    const/4 v3, 0x0

    .line 486
    .local v3, "returnUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "returnUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sReturnUrl:Ljava/lang/String;

    .line 492
    :cond_1
    sput-object v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sReturnUrl:Ljava/lang/String;

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "goto->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-virtual {v2, v4, v0, v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 499
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4
.end method

.method public getDelegateModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    return-object v0
.end method

.method public goBack(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 390
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->goBack()V

    .line 393
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public hideBar(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "hidden"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowActionBar:Z

    .line 352
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 353
    .local v1, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v1, :cond_0

    .line 354
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowActionBar:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->hideActionBar(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    :goto_0
    return-object v2

    .line 356
    .restart local v1    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "model null"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 360
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 619
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 621
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mDropListMenuCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mDropListMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHelpIconClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 597
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getCallbackValue()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 598
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 599
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mHelpIconCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public onHomeClick()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 555
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 557
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 558
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 585
    :cond_0
    :goto_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getCallbackValue()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 586
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 587
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mHomeCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 588
    return-void

    .line 561
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 566
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 568
    :cond_3
    sget v3, Lhdn$k;->sure:I

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lhdn$k;->cancel:I

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$1;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V

    .line 577
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public onLeftClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getCallbackValue()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 550
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 551
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mLeftCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public onMenuItemClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 603
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getItemCallbackValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 604
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 605
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mActionsCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mActionsCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 612
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Component;->onPause()V

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateHome(Z)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Component;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempTitle:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->showRedDotBesideTitle:Z

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->titleClickEventEnable:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateTitle(Ljava/lang/String;ZZ)V

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempTitle:Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitleIcon:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->showSubTitleIcon:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitle:Ljava/lang/String;

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateActionBar()V

    .line 99
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateLeft()V

    .line 100
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateIcon()V

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->hasSetHomeClick:Z

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateHome(Z)V

    .line 102
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateActionBarRightView()V

    .line 103
    return-void
.end method

.method public onRightClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getCallbackValue()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 592
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 593
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mRightCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public reload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->refreshWebView()V

    .line 411
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public replace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 417
    .local v2, "ctx":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v9, v2, Landroid/app/Activity;

    if-nez v9, :cond_1

    .line 418
    :cond_0
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const-string/jumbo v12, "context is null or context is not activity"

    .line 419
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 457
    :goto_0
    return-object v9

    :cond_1
    move-object v0, v2

    .line 421
    check-cast v0, Landroid/app/Activity;

    .line 425
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    .line 426
    .local v4, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "link":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "pageUrl":Ljava/lang/String;
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v9

    invoke-interface {v9, v6}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v7

    .line 432
    .local v7, "safeTunnelMicroAppInfo":Lhqy;
    if-eqz v7, :cond_2

    .line 433
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v9

    invoke-interface {v9, v5, v7}, Lhqw;->a(Ljava/lang/String;Lhqy;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 434
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v9

    invoke-interface {v9, v5, v7}, Lhqw;->b(Ljava/lang/String;Lhqy;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 435
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v11, 0xf

    const-string/jumbo v12, "unsafe url"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v5    # "link":Ljava/lang/String;
    .end local v6    # "pageUrl":Ljava/lang/String;
    .end local v7    # "safeTunnelMicroAppInfo":Lhqy;
    :catch_0
    move-exception v3

    .line 453
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 454
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x2

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 439
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .restart local v5    # "link":Ljava/lang/String;
    .restart local v6    # "pageUrl":Ljava/lang/String;
    .restart local v7    # "safeTunnelMicroAppInfo":Lhqy;
    :cond_2
    :try_start_1
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {v5}, Lhec;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "replace_api_enable_stick_v451"

    const/4 v10, 0x1

    .line 443
    invoke-static {v9, v10}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10008000

    invoke-virtual {v4, v9, v1, v10}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 450
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 451
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 446
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public declared-synchronized setActions(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 317
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mActionsCallbackId:Ljava/lang/String;

    .line 318
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuCallbackId:Ljava/lang/String;

    .line 320
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "actions"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 321
    .local v4, "menuItemsJSON":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 323
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 324
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "id"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v6, "text"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 327
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v8, "invalid Id "

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v6

    .line 330
    .restart local v0    # "i":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 331
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v8, "every item must contain text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 315
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "menuItemsJSON":Lorg/json/JSONArray;
    .end local v5    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 335
    .restart local v0    # "i":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "menuItemsJSON":Lorg/json/JSONArray;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    .line 336
    invoke-virtual {v6, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v6

    .line 337
    invoke-virtual {v6, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v2

    .line 338
    .local v2, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "showFirst"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->isShowFirst:Z

    .line 343
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateActions()V

    .line 345
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_1
.end method

.method public setHomeClick(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mHomeCallbackId:Ljava/lang/String;

    .line 199
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->hasSetHomeClick:Z

    .line 200
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateHome(Z)V

    .line 201
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickText:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->homeClickTitle:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mHelpIconCallbackId:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "showIcon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpShowIcon:Z

    .line 255
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "iconIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->helpIconIndex:I

    .line 257
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateIcon()V

    .line 258
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLeft(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mLeftCallbackId:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShow:Z

    .line 185
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "control"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftControl:Z

    .line 186
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "showIcon"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftShowIcon:Z

    .line 187
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "text"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftText:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->leftAndroid:Z

    .line 191
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateLeft()V

    .line 193
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setMenu(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 265
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuCallbackId:Ljava/lang/String;

    .line 266
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mActionsCallbackId:Ljava/lang/String;

    .line 268
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "items"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 270
    .local v6, "menuItemsJSON":Lorg/json/JSONArray;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "backgroundColor"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mOverflowMenuBackgroundColor:Ljava/lang/String;

    .line 271
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "textColor"

    const-string/jumbo v10, "#000000"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuTextColor:Ljava/lang/String;

    .line 272
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 274
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 275
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v8, "text"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 278
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "invalid Id "

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v1    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "text":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v8

    .line 281
    .restart local v1    # "i":I
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 282
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "every item must contain text"

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 263
    .end local v1    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "menuItemsJSON":Lorg/json/JSONArray;
    .end local v7    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 286
    .restart local v1    # "i":I
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "menuItemsJSON":Lorg/json/JSONArray;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v8, "iconId"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "iconid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "menu_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "drawableId":I
    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    .line 289
    invoke-virtual {v8, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    .line 290
    invoke-virtual {v8, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setIconId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    .line 291
    invoke-virtual {v8, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    .line 292
    invoke-virtual {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    const-string/jumbo v9, "url"

    const-string/jumbo v10, ""

    .line 293
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setUrl(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    const-string/jumbo v9, "showRedDot"

    const/4 v10, 0x0

    .line 294
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadgeJustRedDot(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v8

    const-string/jumbo v9, "badge"

    const-string/jumbo v10, ""

    .line 295
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadge(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v4

    .line 296
    .local v4, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 298
    .end local v0    # "drawableId":I
    .end local v2    # "iconid":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "text":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateMenu()V

    .line 300
    .end local v1    # "i":I
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto/16 :goto_1
.end method

.method public setPullGesture(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "enable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 369
    .local v1, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setPullGesture(Z)V

    .line 374
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    :goto_0
    return-object v2

    .line 372
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "model null"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setRight(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mRightCallbackId:Ljava/lang/String;

    .line 209
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightShow:Z

    .line 210
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "control"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightControl:Z

    .line 211
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "disabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightDisable:Z

    .line 212
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "text"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$k;->more:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightText:Ljava/lang/String;

    .line 214
    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mOverflowMenuBackgroundColor:Ljava/lang/String;

    .line 215
    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sMenuTextDefaultColor:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuTextColor:Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 218
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightShow:Z

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "iconId"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "iconid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "menu_"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "drawableId":I
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    const-string/jumbo v4, "-2"

    .line 223
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 224
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setIconId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightControl:Z

    .line 225
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setControl(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightDisable:Z

    .line 226
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDisable(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->rightText:Ljava/lang/String;

    .line 228
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "url"

    const-string/jumbo v6, ""

    .line 229
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setUrl(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "showRedDot"

    const/4 v6, 0x0

    .line 230
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadgeJustRedDot(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "badge"

    const-string/jumbo v6, ""

    .line 231
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadge(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v2

    .line 232
    .local v2, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mMenuItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v0    # "drawableId":I
    .end local v1    # "iconid":Ljava/lang/String;
    .end local v2    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateMenu()V

    .line 238
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 208
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setSubtitle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "subtitle"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "showIcon"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 144
    .local v3, "showIcon":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "iconUnicode"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "iconUnicode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 147
    .local v2, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v2, :cond_0

    .line 148
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitle:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v4, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    :goto_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 163
    .end local v1    # "iconUnicode":Ljava/lang/String;
    .end local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .end local v3    # "showIcon":Z
    .end local v4    # "title":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 155
    .restart local v1    # "iconUnicode":Ljava/lang/String;
    .restart local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .restart local v3    # "showIcon":Z
    .restart local v4    # "title":Ljava/lang/String;
    :cond_0
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitle:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempSubTitleIcon:Ljava/lang/String;

    .line 157
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->showSubTitleIcon:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "iconUnicode":Ljava/lang/String;
    .end local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .end local v3    # "showIcon":Z
    .end local v4    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTitle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "showRedDot"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 116
    .local v3, "showRedDot":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "eventEnable"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    .local v1, "eventEnable":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 119
    .local v2, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempTitle:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v4, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->updateTitle(Ljava/lang/String;ZZ)V

    .line 132
    :goto_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 135
    .end local v1    # "eventEnable":Z
    .end local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .end local v3    # "showRedDot":Z
    .end local v4    # "title":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 127
    .restart local v1    # "eventEnable":Z
    .restart local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .restart local v3    # "showRedDot":Z
    .restart local v4    # "title":Ljava/lang/String;
    :cond_0
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->tempTitle:Ljava/lang/String;

    .line 128
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->showRedDotBesideTitle:Z

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->titleClickEventEnable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "eventEnable":Z
    .end local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .end local v3    # "showRedDot":Z
    .end local v4    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 135
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTitleIcon(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "showIcon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 170
    .local v3, "showIcon":Z
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "iconIndex"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "iconIndex":I
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "iconUnicode"

    sget v6, Lhdn$k;->icon_arrow_more:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "iconUnicode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 174
    .local v2, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setTitleIcon(ZILjava/lang/String;)V

    .line 178
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v4
.end method

.method public showPopdownList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 505
    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v10, :cond_1

    .line 506
    :cond_0
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "invalid request"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-object v10

    .line 509
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v1, "dropListItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->mDropListMenuCallbackId:Ljava/lang/String;

    .line 513
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "datalist"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 515
    .local v8, "menuItemsJSON":Lorg/json/JSONArray;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_6

    .line 516
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 517
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    .line 519
    .local v5, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 520
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "iconId"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "iconid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "menu_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "drawable"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 523
    .local v0, "drawableId":I
    invoke-virtual {v5, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setIconId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 526
    .end local v0    # "drawableId":I
    :cond_2
    const-string/jumbo v10, "mediaId"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, "mediaId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 528
    invoke-virtual {v5, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setMediaId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 531
    :cond_3
    const-string/jumbo v10, "id"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v10, "title"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v10

    .line 534
    invoke-virtual {v10, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v10

    const-string/jumbo v11, "url"

    const-string/jumbo v12, ""

    .line 535
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setUrl(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v10

    const-string/jumbo v11, "showRedDot"

    const/4 v12, 0x0

    .line 536
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadgeJustRedDot(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v10

    const-string/jumbo v11, "badge"

    const-string/jumbo v12, ""

    .line 537
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setBadge(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v11

    const-string/jumbo v10, "status"

    const/4 v12, 0x0

    .line 538
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setChecked(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 539
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 538
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 541
    .end local v3    # "iconid":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "mediaId":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->showTitleDropListMenu(Ljava/util/List;)V

    .line 542
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto/16 :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_6
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "invalid request"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
