.class public final Lftd;
.super Lclj;
.source "NameCardGuidePresenter.java"

# interfaces
.implements Lfsx$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclj",
        "<",
        "Lfsx$b;",
        ">;",
        "Lfsx$a;"
    }
.end annotation


# instance fields
.field private b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lclj;-><init>()V

    return-void
.end method

.method static synthetic a(Lftd;)Lcli;
    .locals 1
    .param p0, "x0"    # Lftd;

    .prologue
    .line 23
    iget-object v0, p0, Lftd;->a:Lcli;

    return-object v0
.end method

.method static synthetic a(Lftd;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .locals 0
    .param p0, "x0"    # Lftd;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 23
    iput-object p1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    return-object p1
.end method

.method static synthetic b(Lftd;)Lcli;
    .locals 1
    .param p0, "x0"    # Lftd;

    .prologue
    .line 23
    iget-object v0, p0, Lftd;->a:Lcli;

    return-object v0
.end method

.method static synthetic c(Lftd;)Lcli;
    .locals 1
    .param p0, "x0"    # Lftd;

    .prologue
    .line 23
    iget-object v0, p0, Lftd;->a:Lcli;

    return-object v0
.end method

.method static synthetic d(Lftd;)Lcli;
    .locals 1
    .param p0, "x0"    # Lftd;

    .prologue
    .line 23
    iget-object v0, p0, Lftd;->a:Lcli;

    return-object v0
.end method


# virtual methods
.method public final a(ZI)V
    .locals 5
    .param p1, "status"    # Z
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-nez v1, :cond_2

    .line 53
    iget-object v1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    .line 55
    :cond_2
    iget-object v1, p0, Lftd;->b:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    .line 57
    .local v0, "settingModel":Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_1
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    new-instance v2, Lftd$3;

    invoke-direct {v2, p0, p2}, Lftd$3;-><init>(Lftd;I)V

    .line 1077
    new-instance v3, Lfug$6;

    invoke-direct {v3, v1, v2}, Lfug$6;-><init>(Lfug;Lcma;)V

    .line 1083
    if-nez v0, :cond_3

    .line 1084
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "cardSettingObject is null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :pswitch_0
    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    goto :goto_1

    .line 62
    :pswitch_1
    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    goto :goto_1

    .line 65
    :pswitch_2
    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    goto :goto_1

    .line 68
    :pswitch_3
    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    goto :goto_1

    .line 71
    :pswitch_4
    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    goto :goto_1

    .line 1087
    :cond_3
    iget-object v1, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->toIdl()Lcha;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/user/namecard/service/CardIService;->updateCardSetting(Lcha;Liyv;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
