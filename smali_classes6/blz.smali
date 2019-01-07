.class public final Lblz;
.super Ljava/lang/Object;
.source "ApDeviceServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string/jumbo v1, "ApDeviceService"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getPsk context is null"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 99
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 100
    const-string/jumbo v1, "ApDeviceService"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getPsk context is not activity"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string/jumbo v1, "ApDeviceService"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getPsk corpId is null"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lblz$2;

    invoke-direct {v0, p0, p2}, Lblz$2;-><init>(Landroid/content/Context;Lcma;)V

    .line 130
    .local v0, "getPskListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 131
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "getPskListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 133
    .restart local v0    # "getPskListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbnc;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "psk"    # Ljava/lang/String;
    .param p2, "staAuthOn"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "nick":Ljava/lang/String;
    sget v5, Lbrx$g;->and_alpha_someone_pwd:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbrx$g;->dt_alpha_dynamic_auth_pwd_sub_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "subTitle":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "subTitle"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v5, "content"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v5, "bigFont"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v0, "bigTextDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    .line 158
    sget v5, Lbrx$g;->dt_alpha_pwd_copy_cancel:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1067
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->b:Ljava/lang/String;

    .line 159
    new-instance v5, Lblz$3;

    invoke-direct {v5, v0}, Lblz$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;)V

    .line 1075
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->d:Landroid/view/View$OnClickListener;

    .line 166
    sget v5, Lbrx$g;->dt_alpha_pwd_copy:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2063
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->a:Ljava/lang/String;

    .line 167
    new-instance v5, Lblz$4;

    invoke-direct {v5, p0, p1, v0}, Lblz$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;)V

    .line 2079
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->c:Landroid/view/View$OnClickListener;

    .line 175
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->show()V

    goto :goto_0

    .line 150
    .end local v0    # "bigTextDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;
    .end local v3    # "subTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbrx$g;->dt_alpha_dynamic_pwd_sub_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    new-instance v1, Lblz$5;

    invoke-direct {v1, p0, p1}, Lblz$5;-><init>(Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, p0, v1}, Lbnh;->a(Ljava/lang/String;Lblv;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJLcma;)V
    .locals 5
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "timeout"    # J
    .param p5, "listener"    # Lcma;

    .prologue
    .line 260
    new-instance v0, Lbmz;

    invoke-direct {v0}, Lbmz;-><init>()V

    .line 261
    .local v0, "model":Lbmz;
    iput-object p0, v0, Lbmz;->a:Ljava/lang/String;

    .line 262
    invoke-static {}, Lblw;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbmz;->b:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbmz;->c:Ljava/lang/String;

    .line 264
    iput-object p1, v0, Lbmz;->d:Ljava/lang/String;

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbmz;->e:Ljava/lang/Integer;

    .line 266
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v2

    .line 2431
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v3, "noticeOneKeyConnect"

    invoke-static {v1, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    if-nez v0, :cond_1

    .line 2433
    const-string/jumbo v1, "ApDeviceService"

    const-string/jumbo v2, "noticeOneKeyConnect model is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    if-eqz p5, :cond_0

    .line 2435
    const-string/jumbo v1, ""

    const-string/jumbo v2, "model is null"

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2439
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 2440
    if-nez v1, :cond_2

    .line 2441
    if-eqz p5, :cond_0

    .line 2442
    const-string/jumbo v1, ""

    const-string/jumbo v2, "service is null"

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2446
    :cond_2
    new-instance v3, Lbnc$3;

    invoke-direct {v3, v2, p5, p3, p4}, Lbnc$3;-><init>(Lbnc;Lcma;J)V

    invoke-interface {v1, v0, v3}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->noticeOneKeyConnect(Lbmz;Liyv;)V

    goto :goto_0
.end method
