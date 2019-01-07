.class final Lewl$12;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewl;


# direct methods
.method constructor <init>(Lewl;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1224
    iput-object p1, p0, Lewl$12;->a:Lewl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1227
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 1228
    .local v0, "mCloudSetting":Lcom/alibaba/wukong/settings/CloudSettingService;
    if-nez v0, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "save_new_mc_2_local_contact"

    invoke-static {v2, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1232
    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "dt_save_phones"

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 1233
    .local v1, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1234
    iget-object v2, p0, Lewl$12;->a:Lewl;

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lewl;->b(Ljava/lang/String;Z)V

    .line 1237
    .end local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "save_mc_2_local_contact"

    invoke-static {v2, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "dt_phones"

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 1239
    .restart local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1240
    iget-object v2, p0, Lewl$12;->a:Lewl;

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lewl;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
