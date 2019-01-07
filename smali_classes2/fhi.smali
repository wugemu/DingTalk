.class public final Lfhi;
.super Ljava/lang/Object;
.source "EnterpriseSquareEntranceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfhi$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lfhi$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Lifn;

.field c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lfhi$1;

    invoke-direct {v0, p0, p1}, Lfhi$1;-><init>(Lfhi;Landroid/app/Activity;)V

    iput-object v0, p0, Lfhi;->c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .line 68
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lfhi;->c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 69
    new-instance v0, Lfhi$2;

    invoke-direct {v0, p0}, Lfhi$2;-><init>(Lfhi;)V

    iput-object v0, p0, Lfhi;->b:Lifn;

    .line 88
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    iget-object v1, p0, Lfhi;->b:Lifn;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/settings/CloudSetting;)Lfhi$a;
    .locals 7
    .param p0, "cloudSetting"    # Lcom/alibaba/wukong/settings/CloudSetting;

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p0, :cond_0

    move-object v1, v3

    .line 106
    :goto_0
    return-object v1

    .line 95
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    :try_start_0
    const-class v4, Lfhi$a;

    invoke-static {v2, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfhi$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v1, "enterpriseSquareEntranceInfo":Lfhi$a;
    goto :goto_0

    .line 102
    .end local v1    # "enterpriseSquareEntranceInfo":Lfhi$a;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string/jumbo v4, "promotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "EnterpriseSquareEntranceInfo parse error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public final a()Lfhi$a;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 110
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "user_promotion"

    const-string/jumbo v3, "enterprise_square_entrance_info"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 111
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    invoke-static {v0}, Lfhi;->a(Lcom/alibaba/wukong/settings/CloudSetting;)Lfhi$a;

    move-result-object v1

    return-object v1
.end method
