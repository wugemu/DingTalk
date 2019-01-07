.class public Lcom/taobao/agoo/BaseNotifyClickActivity;
.super Landroid/app/Activity;
.source "BaseNotifyClickActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lkpl;

.field private c:Lkpm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 24
    .line 1121
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "no impl to parse intent!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "parseMsgByThirdPush"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "result"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "msgSource"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-object v5
.end method

.method static synthetic a(Lcom/taobao/agoo/BaseNotifyClickActivity;Lkpl;)Lkpl;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;
    .param p1, "x1"    # Lkpl;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->b:Lkpl;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/agoo/BaseNotifyClickActivity;Lkpm;)Lkpm;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;
    .param p1, "x1"    # Lkpm;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->c:Lkpm;

    return-object p1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    new-instance v0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$1;-><init>(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V

    invoke-static {v0}, Ljin;->a(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method static synthetic b(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpm;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->c:Lkpm;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 24
    .line 1132
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    const-string/jumbo v1, "message_source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    const-string/jumbo v2, "report"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    new-instance v3, Lkpj;

    invoke-direct {v3}, Lkpj;-><init>()V

    .line 1137
    iput-object v0, v3, Lkpj;->a:Ljava/lang/String;

    .line 1138
    iput-object v1, v3, Lkpj;->d:Ljava/lang/String;

    .line 1139
    iput-object v2, v3, Lkpj;->e:Ljava/lang/String;

    .line 1141
    const-string/jumbo v4, "8"

    iput-object v4, v3, Lkpj;->g:Ljava/lang/String;

    .line 1142
    const-string/jumbo v4, "accs.BaseNotifyClickActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reportClickNotifyMsg messageId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " source:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reportStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lkpj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->c:Lkpm;

    .line 2109
    iget-object v1, v3, Lkpj;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 2112
    :try_start_1
    iget-object v1, v3, Lkpj;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2113
    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    .line 2114
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lkpm;->b(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 2116
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "agoo_ack"

    iget-object v2, v3, Lkpj;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    :try_start_2
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "[report] is error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1144
    :catch_1
    move-exception v0

    .line 1145
    const-string/jumbo v1, "accs.BaseNotifyClickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportClickNotifyMsg exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpl;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/agoo/BaseNotifyClickActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->b:Lkpl;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/taobao/agoo/BaseNotifyClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "onNewIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    return-void
.end method
