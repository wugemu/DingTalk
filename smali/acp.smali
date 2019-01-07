.class public final Lacp;
.super Ljava/lang/Object;
.source "MailDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacp$a;,
        Lacp$c;,
        Lacp$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lacp;


# instance fields
.field public a:Landroid/content/Context;

.field b:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacp$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lacp;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lacp;->b:Z

    .line 81
    iput-boolean v0, p0, Lacp;->h:Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacp;->d:Ljava/util/Map;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacp;->e:Z

    .line 106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lacp;->a:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacp;->c:Ljava/util/List;

    .line 108
    return-void
.end method

.method private static a(Laat;)Laas;
    .locals 10
    .param p0, "cmailQueryPopRuleModel"    # Laat;

    .prologue
    const/4 v9, 0x0

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "detailModel":Laas;
    const v2, 0x7fffffff

    .line 947
    .local v2, "minValue":I
    if-eqz p0, :cond_1

    iget-object v4, p0, Laat;->b:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 948
    iget-object v4, p0, Laat;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 950
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laas;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laas;

    .line 952
    .local v3, "model":Laas;
    const-string/jumbo v5, "MailDialogManager"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "pop rule("

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, v3, Laas;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", popup:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v3, Laas;->b:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", order:"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v3, Laas;->c:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, ")"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    if-eqz v3, :cond_0

    iget-object v5, v3, Laas;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_0

    iget-object v5, v3, Laas;->b:Ljava/lang/Boolean;

    .line 9022
    invoke-static {v5, v9}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 954
    if-eqz v5, :cond_0

    .line 955
    move-object v0, v3

    .line 956
    iget-object v5, v3, Laas;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 961
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laas;>;"
    .end local v3    # "model":Laas;
    :cond_1
    return-object v0
.end method

.method public static a()Lacp;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lacp;->g:Lacp;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lacp;->g:Lacp;

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    sget-object v1, Lacp;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lacp;->g:Lacp;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lacp;

    invoke-direct {v0}, Lacp;-><init>()V

    sput-object v0, Lacp;->g:Lacp;

    .line 101
    :cond_1
    sget-object v0, Lacp;->g:Lacp;

    monitor-exit v1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lacp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lacp;

    .prologue
    .line 74
    iget-object v0, p0, Lacp;->c:Ljava/util/List;

    return-object v0
.end method

.method static a(Lacp$b;)V
    .locals 3
    .param p0, "event"    # Lacp$b;

    .prologue
    .line 1334
    if-eqz p0, :cond_0

    .line 1335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1337
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "orgMail"

    iget-object v2, p0, Lacp$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1338
    const-string/jumbo v1, "isDistributed"

    iget-boolean v2, p0, Lacp$b;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1339
    const-string/jumbo v1, "pref_key_mail_dispatch_org_mail"

    .line 1340
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    return-void
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
    .locals 1
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 74
    .line 10253
    if-eqz p1, :cond_0

    invoke-static {p1}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10254
    :cond_0
    :goto_0
    return-void

    .line 10256
    :cond_1
    new-instance v0, Lacp$22;

    invoke-direct {v0, p0, p1, p2}, Lacp$22;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    .line 11213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11214
    :cond_0
    :goto_0
    return-void

    .line 11217
    :cond_1
    new-instance v0, Lacp$12;

    invoke-direct {v0, p0, p1, p2}, Lacp$12;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 11248
    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 74
    .line 19616
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19617
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v2

    .line 19618
    invoke-static {}, Lro;->a()Lro;

    move-result-object v7

    const-string/jumbo v8, "tryLoginWithTicket-android"

    new-instance v0, Lacp$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lacp$6;-><init>(Lacp;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-virtual {v7, v2, v8, v0}, Lro;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 19639
    :goto_0
    return-void

    .line 19641
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lacg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lacp;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 4
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    const/4 v3, 0x1

    .line 74
    .line 16350
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16351
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16353
    sget v1, Laxo$i;->dt_mail_stick_top_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16354
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_sticky:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacp$31;

    invoke-direct {v2, p0, p2, v0}, Lacp$31;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16363
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacp$32;

    invoke-direct {v2, p0, v0}, Lacp$32;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16370
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 727
    if-eqz p0, :cond_0

    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 731
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 732
    sget v1, Laxo$i;->dt_mail_cid2email_inner_group_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 733
    sget v1, Laxo$i;->sure:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacp$10;

    invoke-direct {v2, v0}, Lacp$10;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 376
    new-instance v1, Lacp$33;

    invoke-direct {v1, p0, p1}, Lacp$33;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 2895
    if-nez p1, :cond_0

    .line 2897
    invoke-interface {v1, v5}, Lacp$c;->a(Z)V

    .line 2899
    :goto_0
    return-void

    .line 2902
    :cond_0
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 2904
    new-instance v2, Laau;

    invoke-direct {v2}, Laau;-><init>()V

    .line 2905
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mail_popup_cainiao"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "mail_popup_signature"

    aput-object v5, v3, v4

    .line 2906
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Laau;->b:Ljava/util/List;

    .line 2907
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laau;->a:Ljava/lang/String;

    .line 2909
    new-instance v3, Lacp$19;

    invoke-direct {v3, p0, p1, v1}, Lacp$19;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lacp$c;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryPopRule(Laau;Liyv;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "remind"    # Z

    .prologue
    .line 519
    const-string/jumbo v0, "pref_key_mail_login_bind_account_remind"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 520
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2
    .param p0, "remind"    # Z
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string/jumbo v0, "pref_key_mail_login_bind_account_remind"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 524
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lro;->a(Ljava/lang/String;Lcma;)V

    .line 525
    return-void
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laat;)Z
    .locals 8
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Laat;

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    .line 27991
    if-eqz p2, :cond_5

    .line 27992
    iget-object v0, p2, Laat;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p2, Laat;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 27993
    invoke-static {p2}, Lacp;->a(Laat;)Laas;

    move-result-object v0

    move-object v3, v0

    .line 27994
    :goto_0
    if-eqz v3, :cond_4

    .line 28014
    if-eqz v3, :cond_2

    .line 28015
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "doPopupRule, key = "

    aput-object v4, v0, v2

    iget-object v4, v3, Laas;->a:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 28017
    iget-object v0, v3, Laas;->a:Ljava/lang/String;

    const-string/jumbo v4, "mail_popup_signature"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28219
    if-eqz p1, :cond_0

    .line 28223
    const-string/jumbo v0, "pref_key_mail_new_signature_4_0"

    .line 28224
    const-string/jumbo v4, "pref_key_mail_new_signature_v2"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28225
    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28227
    new-instance v4, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;

    invoke-direct {v4, p1}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;-><init>(Landroid/content/Context;)V

    .line 28228
    new-instance v5, Lacp$27;

    invoke-direct {v5, p0, p1, v4}, Lacp$27;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;)V

    .line 29072
    iput-object v5, v4, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;

    .line 28243
    invoke-virtual {v4, v2}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 28244
    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->show()V

    .line 28245
    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 28246
    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 28248
    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    move v0, v1

    .line 27997
    :goto_1
    if-eqz v0, :cond_3

    .line 27998
    iget-object v0, v3, Laas;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lacp;->b(Ljava/lang/String;)V

    move v0, v1

    .line 28006
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 28018
    goto :goto_1

    .line 28019
    :cond_1
    iget-object v0, v3, Laas;->a:Ljava/lang/String;

    const-string/jumbo v4, "mail_popup_cainiao"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29102
    new-instance v0, Lacp$23;

    invoke-direct {v0, p0, p1, v1}, Lacp$23;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 29129
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    invoke-interface {v4, v0, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 29131
    invoke-static {}, Lro;->a()Lro;

    move-result-object v4

    .line 29675
    const-string/jumbo v5, "MailRPC"

    const-string/jumbo v6, "caiNiaoScribePhone"

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29676
    new-instance v5, Lro$18;

    invoke-direct {v5, v4, v0}, Lro$18;-><init>(Lro;Lcma;)V

    .line 29695
    iget-object v0, v4, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v5}, Lcom/alibaba/alimei/idl/service/CMailIService;->isSubscribedCainiao(Liyv;)V

    move v0, v1

    .line 28020
    goto :goto_1

    :cond_2
    move v0, v2

    .line 28026
    goto :goto_1

    .line 28001
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Laas;->b:Ljava/lang/Boolean;

    .line 28002
    invoke-static {p2}, Lacp;->a(Laat;)Laas;

    move-result-object v0

    move-object v3, v0

    .line 28004
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 28006
    goto :goto_2

    :cond_5
    move v0, v2

    .line 74
    goto :goto_2
.end method

.method static synthetic a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)Z
    .locals 5
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    .line 30141
    if-eqz p1, :cond_1

    .line 30146
    if-eqz p2, :cond_1

    const-string/jumbo v2, "pref_key_mail_cainiao_subscribe"

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "pref_key_mail_cainiao_subscribe_is_frist_time"

    .line 30147
    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30148
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_1

    .line 30150
    :cond_0
    const-string/jumbo v2, "pref_key_mail_cainiao_subscribe_is_frist_time"

    invoke-static {v2, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 30151
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 30153
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 30155
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCancelable(Z)V

    .line 30156
    const v1, 0x3f59999a    # 0.85f

    invoke-static {p1, v2, v1}, Lacj;->a(Landroid/content/Context;Landroid/app/Dialog;F)V

    .line 30157
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 30158
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Laxo$g;->alm_cmail_subscribe_cainiao_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30159
    sget v3, Laxo$f;->cmail_cainiao_subscribe_dialog_close:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lacp$24;

    invoke-direct {v4, p0, v2}, Lacp$24;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30165
    sget v3, Laxo$f;->cmail_cainiao_dialog_subscribe_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lacp$25;

    invoke-direct {v4, p0, v2, p1}, Lacp$25;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30173
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 31118
    const-string/jumbo v1, "mail_cainiao_guide_show"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 30175
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method static synthetic a(Lacp;Z)Z
    .locals 1
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacp;->b:Z

    return v0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)Z
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1292
    iget-boolean v4, p0, Lacp;->h:Z

    if-nez v4, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v3

    .line 1296
    :cond_1
    iget-object v4, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1297
    invoke-static {}, Lacp;->c()Lacp$b;

    move-result-object v0

    .line 1298
    .local v0, "event":Lacp$b;
    if-eqz v0, :cond_3

    .line 1299
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 1300
    .local v2, "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    .line 1303
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmail:Ljava/lang/String;

    .line 1304
    .local v1, "mail":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1307
    iget-object v4, v0, Lacp$b;->a:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9330
    const-string/jumbo v4, "pref_key_mail_dispatch_org_mail"

    invoke-static {v4}, Lcpk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    :cond_2
    invoke-virtual {p0, v0}, Lacp;->b(Lacp$b;)V

    .line 1315
    .end local v0    # "event":Lacp$b;
    .end local v1    # "mail":Ljava/lang/String;
    .end local v2    # "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_3
    iget-object v4, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1319
    iget-object v4, p0, Lacp;->c:Ljava/util/List;

    monitor-enter v4

    .line 1321
    :try_start_0
    iget-object v5, p0, Lacp;->c:Ljava/util/List;

    iget-object v6, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp$b;

    .line 1322
    .restart local v0    # "event":Lacp$b;
    invoke-static {v0}, Lacp;->a(Lacp$b;)V

    .line 1323
    iget-object v5, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 9882
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    iget-object v5, v0, Lacp$b;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1325
    :cond_4
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 1326
    .end local v0    # "event":Lacp$b;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 9886
    .restart local v0    # "event":Lacp$b;
    :cond_5
    :try_start_1
    iget-boolean v3, v0, Lacp$b;->b:Z

    if-eqz v3, :cond_6

    .line 9887
    iget-object v3, v0, Lacp$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, p2}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)Z

    move-result v3

    goto :goto_1

    .line 9889
    :cond_6
    iget-object v3, v0, Lacp$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_1
.end method

.method static synthetic b(Lacp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacp;

    .prologue
    .line 74
    iget-object v0, p0, Lacp;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 1330
    const-string/jumbo v0, "pref_key_mail_dispatch_org_mail"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method static synthetic b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
    .locals 8
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcma;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    .line 11266
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 11267
    :cond_0
    const-string/jumbo v0, "MailDialogManager"

    const-string/jumbo v1, "tryShowDialogs"

    invoke-static {v0, v1}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11296
    :cond_1
    :goto_0
    return-void

    .line 11405
    :cond_2
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 11406
    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11407
    const-string/jumbo v0, "pref_key_first_open_dingmail"

    invoke-virtual {p0, v0}, Lacp;->a(Ljava/lang/String;)Z

    move-result v0

    .line 11408
    if-eqz v0, :cond_3

    .line 11409
    const-string/jumbo v0, "pref_key_first_open_dingmail"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11411
    const-string/jumbo v0, "mail_popup_freshmen"

    invoke-direct {p0, v0}, Lacp;->b(Ljava/lang/String;)V

    .line 11413
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 11415
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 12409
    const-string/jumbo v0, "mail_freshmen_dialog_show"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 11419
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Laxo$g;->dingtalk_mail_first_use_layout:I

    invoke-virtual {v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 11421
    sget v0, Laxo$f;->ok_btn:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 11422
    sget v0, Laxo$f;->top_dingmail_btn:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11423
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11425
    new-instance v7, Lacp$34;

    invoke-direct {v7, p0, v4, v0, p1}, Lacp$34;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11441
    new-instance v6, Lacp$2;

    invoke-direct {v6, p0, v0, p1}, Lacp$2;-><init>(Lacp;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11460
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setContentView(Landroid/view/View;)V

    move v0, v1

    .line 11273
    :goto_1
    if-nez v0, :cond_1

    .line 11278
    invoke-direct {p0, p1, p2}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)Z

    move-result v0

    .line 11279
    if-eqz v0, :cond_4

    .line 11280
    iput-boolean v2, p0, Lacp;->h:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 11466
    goto :goto_1

    .line 11285
    :cond_4
    invoke-static {}, Lafh;->b()Ljava/lang/String;

    move-result-object v4

    .line 12504
    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 12505
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12506
    invoke-static {v4}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12507
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->g()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12508
    invoke-static {v4}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13470
    :cond_5
    invoke-static {}, Lafh;->b()Ljava/lang/String;

    move-result-object v4

    .line 13471
    invoke-static {}, Lafh;->c()Ljava/lang/String;

    move-result-object v0

    .line 13475
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v3, v0

    .line 13479
    :cond_6
    if-eqz p1, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    .line 11287
    :goto_2
    if-nez v0, :cond_1

    .line 11292
    const-string/jumbo v0, "show_stick_top_tips"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11293
    const-string/jumbo v0, "show_stick_top_tips"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 11294
    const-string/jumbo v0, "has_show_stick_top_tips"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 11296
    new-instance v0, Lacp$29;

    invoke-direct {v0, p0, p1}, Lacp$29;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 16316
    new-instance v1, Lacp$30;

    invoke-direct {v1, p0, v0, p1}, Lacp$30;-><init>(Lacp;Ljava/lang/Runnable;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-static {p1, v1}, Lafh;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 13483
    :cond_8
    invoke-direct {p0, p1, v3}, Lacp;->b(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 13484
    const-string/jumbo v0, "tryShowServerLogoutEmailDialog"

    invoke-static {v0, v3}, Lafg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13486
    invoke-static {}, Lafh;->d()V

    move v0, v1

    .line 12510
    goto :goto_2

    .line 13888
    :cond_9
    const-string/jumbo v0, "setMailBindAndNologin"

    invoke-static {v0, v4}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13889
    const-string/jumbo v0, "mail_bind_and_nologin"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 14530
    const-string/jumbo v0, "pref_key_mail_login_bind_account_remind"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 14534
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v4}, Lafh;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lacp;->b:Z

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    move-object v0, v3

    .line 12514
    :goto_3
    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_2

    .line 14893
    :cond_b
    const-string/jumbo v0, "mail_bind_but_nologin"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 14894
    invoke-static {v4}, Lafg;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14895
    const-string/jumbo v0, "mail_bind_but_nologin_nerverlogin"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 14540
    :cond_c
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 14541
    iget-object v3, p0, Lacp;->a:Landroid/content/Context;

    sget v5, Laxo$i;->dt_mail_force_logout_title:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 15218
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 14542
    iget-object v3, p0, Lacp;->a:Landroid/content/Context;

    sget v5, Laxo$i;->dt_mail_login_alert_content:I

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 15239
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 16230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 16275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 14546
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 14548
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 14550
    sget v3, Laxo$b;->mail_bind_click:I

    new-instance v5, Lacp$3;

    invoke-direct {v5, p0, v0, p1, v4}, Lacp$3;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_d
    move v0, v2

    .line 12514
    goto/16 :goto_2

    .line 11310
    :cond_e
    invoke-direct {p0, p1}, Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    .line 24783
    invoke-static {p2}, Lacn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24784
    if-nez v0, :cond_0

    .line 24785
    const-string/jumbo v0, ""

    .line 24788
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 24789
    sget v2, Laxo$e;->alm_cmail_account_guide_dlg_icon:I

    .line 25243
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 26230
    iput-boolean v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 24791
    iget-object v2, p0, Lacp;->a:Landroid/content/Context;

    sget v3, Laxo$i;->mail_manager_allocation_mail_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27218
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 24792
    iget-object v2, p0, Lacp;->a:Landroid/content/Context;

    sget v3, Laxo$i;->mail_manager_allocation_mail_desc:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27239
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 24794
    sget v0, Laxo$i;->mail_manager_allocation_login:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27259
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 24795
    sget v0, Laxo$i;->dt_cmail_cancel:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27263
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 24796
    new-instance v0, Lacp$14;

    invoke-direct {v0, p0, v1}, Lacp$14;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 27267
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 24804
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 24805
    new-instance v0, Lacp$15;

    invoke-direct {v0, p0, v1, p1, p2}, Lacp$15;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 27271
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 24814
    new-instance v0, Lacp$16;

    invoke-direct {v0, p0}, Lacp$16;-><init>(Lacp;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 24821
    new-instance v0, Lacp$17;

    invoke-direct {v0, p0}, Lacp$17;-><init>(Lacp;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 24829
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 74
    return-void
.end method

.method static synthetic b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcma;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 74
    .line 20578
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 20579
    iget-object v0, p0, Lacp;->a:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_admin_dispatch_mail_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21218
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 20580
    iget-object v0, p0, Lacp;->a:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_admin_dispatch_mail_onkeylogin_content_fmt:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21239
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 20583
    iget-object v0, p0, Lacp;->a:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_nopwd_login:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21259
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 22230
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 22275
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 20586
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 20588
    new-instance v0, Lacp$4;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lacp$4;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)V

    .line 23271
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 20600
    sget v0, Laxo$i;->dt_cmail_cancel:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24263
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 20601
    new-instance v0, Lacp$5;

    invoke-direct {v0, p0, v2}, Lacp$5;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 24267
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 20607
    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 20609
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 74
    return-void
.end method

.method private b(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 700
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 701
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_force_logout_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 702
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_force_logout_message_fmt:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 705
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 4230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 4275
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 708
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 710
    new-instance v1, Lacp$9;

    invoke-direct {v1, p0, v0}, Lacp$9;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 5271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 723
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 724
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 965
    const-class v4, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 966
    .local v1, "mailService":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v1, :cond_0

    .line 967
    new-instance v2, Lzu;

    invoke-direct {v2}, Lzu;-><init>()V

    .line 969
    .local v2, "param":Lzu;
    move-object v3, p1

    .line 971
    .local v3, "targetKey":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    iput-object v0, v2, Lzu;->b:Ljava/util/List;

    .line 974
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lzu;->a:Ljava/lang/String;

    .line 976
    new-instance v4, Lacp$20;

    invoke-direct {v4, p0, v3}, Lacp$20;-><init>(Lacp;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->changePopRule(Lzu;Liyv;)V

    .line 988
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "param":Lzu;
    .end local v3    # "targetKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)Z
    .locals 6
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 74
    .line 17261
    if-nez p1, :cond_0

    .line 17262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 17265
    :cond_0
    new-instance v1, Lacp$28;

    invoke-direct {v1, p0, p1}, Lacp$28;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 17284
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    .line 18002
    if-eqz p1, :cond_1

    iget-boolean v0, v2, Lacr;->l:Z

    if-nez v0, :cond_1

    iget-object v0, v2, Lacr;->k:Lrz;

    .line 18004
    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17285
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 74
    goto :goto_0

    .line 18007
    :cond_2
    iget-object v0, v2, Lacr;->k:Lrz;

    .line 19041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lrz;->a:J

    .line 18009
    const-string/jumbo v0, "MultiMailManager"

    const-string/jumbo v3, "tryLoginModeChanged-getDingTalkMailLoginMode"

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18011
    invoke-virtual {v2}, Lacr;->h()Labx;

    .line 19260
    iget v3, v2, Lacr;->e:I

    .line 18013
    invoke-static {}, Lro;->a()Lro;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    .line 18014
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lacr$7;

    invoke-direct {v5, v2, v3, v1}, Lacr$7;-><init>(Lacr;ILcma;)V

    const-class v1, Lcma;

    invoke-interface {v0, v5, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 18013
    invoke-virtual {v4, v0}, Lro;->a(Lcma;)V

    goto :goto_1
.end method

.method private static c()Lacp$b;
    .locals 6

    .prologue
    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "event":Lacp$b;
    const-string/jumbo v4, "pref_key_mail_dispatch_org_mail"

    invoke-static {v4}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1350
    .local v3, "pref":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1362
    .end local v0    # "event":Lacp$b;
    :goto_0
    return-object v0

    .line 1354
    .restart local v0    # "event":Lacp$b;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v2, "obj":Lorg/json/JSONObject;
    new-instance v1, Lacp$b;

    invoke-direct {v1}, Lacp$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v0    # "event":Lacp$b;
    .local v1, "event":Lacp$b;
    :try_start_1
    const-string/jumbo v4, "isDistributed"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lacp$b;->b:Z

    .line 1357
    const-string/jumbo v4, "orgMail"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lacp$b;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1360
    .end local v1    # "event":Lacp$b;
    .restart local v0    # "event":Lacp$b;
    goto :goto_0

    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "event":Lacp$b;
    .restart local v1    # "event":Lacp$b;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "event":Lacp$b;
    .restart local v0    # "event":Lacp$b;
    goto :goto_0
.end method

.method static synthetic c(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 3
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 74
    .line 31183
    new-instance v0, Lacp$26;

    invoke-direct {v0, p0}, Lacp$26;-><init>(Lacp;)V

    .line 31208
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 31210
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lro;->a(ILcma;)V

    .line 74
    return-void
.end method

.method static synthetic d(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 4
    .param p0, "x0"    # Lacp;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    const/4 v3, 0x0

    .line 74
    .line 31675
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 31676
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_force_logout_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 31677
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_force_logout_loginmodechange:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 31680
    iget-object v1, p0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 33230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 33275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 31683
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 31685
    new-instance v1, Lacp$8;

    invoke-direct {v1, p0, v0, p1}, Lacp$8;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 34271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 31694
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lacp;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 496
    :cond_1
    invoke-direct {p0, p1, p2}, Lacp;->b(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)Z
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "orgEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p3, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 834
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 839
    :cond_1
    invoke-static {p2}, Lafh;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5649
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 5650
    iget-object v3, p0, Lacp;->a:Landroid/content/Context;

    sget v4, Laxo$i;->dt_mail_admin_dispatch_mail_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6218
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 5651
    iget-object v3, p0, Lacp;->a:Landroid/content/Context;

    sget v4, Laxo$i;->dt_mail_admin_dispatch_mail_alreadylogin_content_fmt:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6239
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 5654
    iget-object v3, p0, Lacp;->a:Landroid/content/Context;

    sget v4, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6259
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 7230
    iput-boolean v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 7275
    iput-boolean v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 5657
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 5659
    new-instance v0, Lacp$7;

    invoke-direct {v0, p0, p2, v2}, Lacp$7;-><init>(Lacp;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 8271
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 5671
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 841
    if-eqz p3, :cond_2

    .line 842
    invoke-interface {p3, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 844
    goto :goto_0

    .line 848
    :cond_3
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 849
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lacp$18;

    invoke-direct {v3, p0, p1, p2, p3}, Lacp$18;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 848
    invoke-virtual {v2, v6, p2, v0}, Lro;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    move v0, v1

    .line 877
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lacp;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 139
    check-cast v0, Ljava/lang/Boolean;

    .line 2022
    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 143
    :cond_0
    return v1
.end method

.method public final b(Lacp$b;)V
    .locals 2
    .param p1, "event"    # Lacp$b;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1366
    if-eqz p1, :cond_0

    iget-object v0, p1, Lacp$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacp;->h:Z

    .line 1371
    iget-object v1, p0, Lacp;->c:Ljava/util/List;

    monitor-enter v1

    .line 1372
    :try_start_0
    iget-object v0, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1373
    iget-object v0, p0, Lacp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
