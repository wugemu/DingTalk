.class final Lcom/alibaba/android/rimet/RimetDDContext$20;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/HealthSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initWukongIM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$20;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2522
    const/4 v1, 0x0

    .line 2523
    .local v1, "value":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-interface {v2, p1, p2}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 2524
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    .line 2525
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2528
    :cond_0
    return-object v1
.end method

.method public final isVipUser()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2533
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 2534
    invoke-virtual {v4}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getModule()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v5}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 2535
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_0

    move v2, v3

    .line 2539
    :goto_0
    return v2

    .line 2538
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Ligb;->f(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method
