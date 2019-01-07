.class public final Lgvo;
.super Ljava/lang/Object;
.source "InvitationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lgwp;
.implements Lgwq;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lgvo;->a:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method static synthetic a(Lgvo;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lgvo;

    .prologue
    .line 38
    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V
    .locals 6
    .param p0, "x0"    # Lgvo;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    .prologue
    .line 38
    .line 2189
    if-eqz p1, :cond_0

    .line 2193
    :try_start_0
    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2194
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2195
    iget-object v1, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2196
    :catch_0
    move-exception v0

    .line 2197
    const-string/jumbo v1, "share"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "open invitation app error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2198
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;Lcom/alibaba/wukong/im/invitation/InvitationObject;)V
    .locals 3
    .param p0, "x0"    # Lgvo;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/invitation/InvitationObject;

    .prologue
    .line 38
    .line 2153
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lgvo$2;

    invoke-direct {v1, p0, p1}, Lgvo$2;-><init>(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V

    iget-object v2, p2, Lcom/alibaba/wukong/im/invitation/InvitationObject;->cid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lgvo;Lcom/alibaba/wukong/im/invitation/InvitationObject;)V
    .locals 3
    .param p0, "x0"    # Lgvo;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/invitation/InvitationObject;

    .prologue
    .line 38
    .line 2139
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2143
    if-nez v0, :cond_2

    .line 2144
    iget-object v0, p0, Lgvo;->a:Landroid/app/Activity;

    move-object v1, v0

    .line 2147
    :goto_1
    const-string/jumbo v0, "clipboard"

    .line 2148
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2149
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/wukong/im/invitation/InvitationObject;->taoPassword:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 204
    :try_start_0
    iget-object v3, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 205
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 209
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "nick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 85
    const-string/jumbo v3, ""

    .line 87
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "tao_password_setting"

    .line 88
    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    const-class v4, Lgvr;

    invoke-static {v1, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgvr;

    .line 91
    .local v2, "object":Lgvr;
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v4, 0x0

    const-string/jumbo v5, "%@"

    const-string/jumbo v6, "%s"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "object":Lgvr;
    :cond_0
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "share"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMessageTemplate error="

    aput-object v6, v5, v8

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v4, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    iget-object v2, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p2, p0, Lgvo;->d:Ljava/lang/String;

    .line 61
    iput p1, p0, Lgvo;->c:I

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;>;"
    iget-object v2, p0, Lgvo;->a:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lgvp;->a(Landroid/content/Context;I)Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    move-result-object v0

    .line 65
    .local v0, "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    iget-object v2, p0, Lgvo;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lgvp;->a(Landroid/content/Context;I)Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    if-nez v2, :cond_3

    .line 74
    new-instance v2, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    iget-object v3, p0, Lgvo;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    .line 76
    :cond_3
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    .line 1134
    iput-object p3, v2, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->a:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    .line 1138
    iput-object v1, v2, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    .line 78
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    .line 1142
    iput-object p0, v2, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->b:Lgwq;

    .line 79
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object v2, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->show()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V
    .locals 5
    .param p1, "unit"    # Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvo;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    sget v0, Lgvn$h;->dt_share_app_not_installed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 118
    :cond_1
    const-class v0, Libn;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libn;

    iget v1, p0, Lgvo;->c:I

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->getDest()I

    move-result v2

    iget-object v3, p0, Lgvo;->d:Ljava/lang/String;

    new-instance v4, Lgvo$1;

    invoke-direct {v4, p0, p1}, Lgvo$1;-><init>(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V

    invoke-interface {v0, v1, v2, v3, v4}, Libn;->a(IILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lgvo;->b:Lcom/alibaba/dingtalk/share/invite/InvitationDialog;

    .line 107
    return-void
.end method
