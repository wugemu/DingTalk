.class public final Lhlj;
.super Ljava/lang/Object;
.source "UICSettings.java"


# instance fields
.field public a:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhlj;->a:J

    .line 30
    const-string/jumbo v0, "SP_KEY_UIC_REFRESH_TIME"

    invoke-static {v0}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lhlj;->a:J

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    invoke-interface {v2, v5, p0}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 70
    .local v0, "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string/jumbo v2, "cloudsetting"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "key="

    aput-object v6, v5, v4

    aput-object p0, v5, v3

    const/4 v6, 0x2

    const-string/jumbo v7, "value="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {v1}, Ligb;->f(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 77
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 74
    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 77
    goto :goto_0
.end method
