.class public Lcom/alibaba/dingtalk/share/share/SmsShareUnit;
.super Lgvu;
.source "SmsShareUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 38
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    .line 1287
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1288
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1289
    sget v1, Lgvn$d;->ic_share_sms_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1290
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_sms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v1, "DINGDING_SMS"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->a:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->a:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->b:Lgwm;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->b:Lgwm;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->b:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 48
    :cond_0
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 13
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x32

    .line 52
    const-string/jumbo v9, "share"

    const-string/jumbo v10, "[SmsShareUnit] share clicked"

    invoke-static {v9, v12, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v9, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->b:Lgwm;

    if-eqz v9, :cond_0

    .line 54
    iget-object v9, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->b:Lgwm;

    invoke-interface {v9, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 56
    :cond_0
    if-nez p1, :cond_1

    .line 57
    const-string/jumbo v9, "share"

    const-string/jumbo v10, "[SmsShareUnit] shareInfo is null, cancelShare"

    invoke-static {v9, v12, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v7, 0x0

    .line 61
    .local v7, "smsContent":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v10, "sms_content"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "smsContent":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 64
    .restart local v7    # "smsContent":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "shareInfoTitle":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 67
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 68
    .local v5, "sbTitle":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 69
    const-string/jumbo v9, "..."

    invoke-virtual {v5, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 70
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    .end local v5    # "sbTitle":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 73
    .local v3, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 74
    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 76
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .end local v3    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "shareInfoTitle":Ljava/lang/String;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 81
    .local v2, "dataSb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v9, "sms:"

    invoke-virtual {v2, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v4

    .line 83
    .local v4, "extention":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    .line 84
    const-string/jumbo v9, "address"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 86
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 89
    .end local v0    # "address":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v9, "sms_body"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v9, p0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;->a:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
