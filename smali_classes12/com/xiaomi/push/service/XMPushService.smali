.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;

# interfaces
.implements Lkdh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$k;,
        Lcom/xiaomi/push/service/XMPushService$e;,
        Lcom/xiaomi/push/service/XMPushService$l;,
        Lcom/xiaomi/push/service/XMPushService$n;,
        Lcom/xiaomi/push/service/XMPushService$f;,
        Lcom/xiaomi/push/service/XMPushService$d;,
        Lcom/xiaomi/push/service/XMPushService$o;,
        Lcom/xiaomi/push/service/XMPushService$m;,
        Lcom/xiaomi/push/service/XMPushService$b;,
        Lcom/xiaomi/push/service/XMPushService$a;,
        Lcom/xiaomi/push/service/XMPushService$c;,
        Lcom/xiaomi/push/service/XMPushService$g;,
        Lcom/xiaomi/push/service/XMPushService$j;,
        Lcom/xiaomi/push/service/XMPushService$h;,
        Lcom/xiaomi/push/service/XMPushService$i;
    }
.end annotation


# static fields
.field public static g:I

.field private static final l:I


# instance fields
.field a:J

.field public b:Lkde;

.field public c:Lkcb;

.field d:Landroid/os/Messenger;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/XMPushService$k;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/content/BroadcastReceiver;

.field private h:Lkdf;

.field private i:Lkba;

.field private j:Ljava/lang/String;

.field private k:Lcom/xiaomi/push/service/XMPushService$e;

.field private m:Lkdc;

.field private n:Lcom/xiaomi/push/service/PacketSync;

.field private o:Lkch;

.field private p:Lkdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xiaomi/push/service/XMPushService;->l:I

    const-string/jumbo v0, "app.chat.xiaomi.net"

    const-string/jumbo v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Ljyw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "app.chat.xiaomi.net"

    const-string/jumbo v1, "42.62.94.2:443"

    invoke-static {v0, v1}, Ljyw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "app.chat.xiaomi.net"

    const-string/jumbo v1, "114.54.23.2"

    invoke-static {v0, v1}, Ljyw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "app.chat.xiaomi.net"

    const-string/jumbo v1, "111.13.142.2"

    invoke-static {v0, v1}, Ljyw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "app.chat.xiaomi.net"

    const-string/jumbo v1, "111.206.200.2"

    invoke-static {v0, v1}, Ljyw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/service/XMPushService;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lcom/xiaomi/push/service/PacketSync;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->d:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    new-instance v0, Lkbm;

    invoke-direct {v0, p0}, Lkbm;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->p:Lkdk;

    new-instance v0, Lkbu;

    invoke-direct {v0, p0}, Lkbu;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string/jumbo v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string/jumbo v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v2, "Push Service"

    const-string/jumbo v3, "Push Service"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lkde;)Lkde;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    return-object v0
.end method

.method private a(Lkdu;Ljava/lang/String;Ljava/lang/String;)Lkdu;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "open channel should be called first before sending a packet, pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 25000
    :cond_1
    iput-object p2, p1, Lkdu;->u:Ljava/lang/String;

    .line 26000
    iget-object v0, p1, Lkdu;->t:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27000
    iput-object v0, p1, Lkdu;->t:Ljava/lang/String;

    .line 28000
    :cond_2
    iget-object v2, p1, Lkdu;->s:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drop a packet as the channel is not connected, chid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v3, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-eq v2, v3, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drop a packet as the channel is not opened, chid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid session. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 0
    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v0, v5

    new-array v6, v0, [Lkdt;

    const-string/jumbo v0, "ext_encrypt"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move v1, v2

    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_1

    new-instance v7, Lkdt;

    aget-object v0, v5, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v7, v0}, Lkdt;-><init>(Landroid/os/Bundle;)V

    aput-object v7, v6, v1

    aget-object v0, v6, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Lkdu;Ljava/lang/String;Ljava/lang/String;)Lkdu;

    move-result-object v0

    check-cast v0, Lkdt;

    aput-object v0, v6, v1

    aget-object v0, v6, v1

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    array-length v1, v6

    new-array v1, v1, [Lkcy;

    :goto_2
    array-length v3, v6

    if-ge v2, v3, :cond_2

    aget-object v3, v6, v2

    .line 22000
    iget-object v4, v3, Lkdu;->t:Ljava/lang/String;

    .line 23000
    iget-object v5, v3, Lkdu;->s:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v4

    iget-object v4, v4, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lkcy;->a(Lkdu;Ljava/lang/String;)Lkcy;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lkca;

    invoke-direct {v0, p0, v1}, Lkca;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lkcy;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 0
    .line 48000
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v1

    sget-object v0, Lkav;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkav;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    sget-object v0, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lkav;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "security is empty. ignore."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    .line 51018
    :cond_1
    :goto_0
    return-void

    .line 48000
    :cond_2
    if-eqz v2, :cond_9

    .line 49000
    sget-object v0, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    if-eqz v1, :cond_47

    if-eqz v2, :cond_47

    sget-object v0, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lkav;->u:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    iget-object v7, v1, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "session changed. old session="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", new session="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " chid = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    move v0, v9

    :goto_1
    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "security changed. chid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sechash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljvs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    move v1, v9

    .line 50000
    :goto_2
    sget-object v0, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/xiaomi/push/service/aq$b;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/aq$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    :cond_3
    sget-object v0, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    sget-object v0, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    sget-object v0, Lkav;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    sget-object v0, Lkav;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    sget-object v0, Lkav;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    sget-object v0, Lkav;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/xiaomi/push/service/aq$b;->e:Z

    sget-object v0, Lkav;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    sget-object v0, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    sget-object v0, Lkav;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->k:Lkcb;

    sget-object v0, Lkav;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/service/aq$b;->a(Landroid/os/Messenger;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/push/service/aq$b;->l:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/push/service/aq$b;)V

    .line 48000
    invoke-static {p0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lkcb;->a(Landroid/content/Context;Lcom/xiaomi/push/service/aq$b;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v6, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    if-ne v0, v6, :cond_5

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$m;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$m;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v2, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v1, Lcom/xiaomi/push/service/aq$c;->b:Lcom/xiaomi/push/service/aq$c;

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "the client is binding. %1$s %2$s."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v2, v2, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v2, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v1, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-ne v0, v1, :cond_1

    iget-object v6, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    move-object v7, p0

    move-object v8, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lkcb;->a(Landroid/content/Context;Lcom/xiaomi/push/service/aq$b;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lkav;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Service called closechannel chid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljuw;->a(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lkav;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51000
    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ext_encrypt"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    new-instance v3, Lkdt;

    invoke-direct {v3, v2}, Lkdt;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lkdu;Ljava/lang/String;Ljava/lang/String;)Lkdu;

    move-result-object v0

    check-cast v0, Lkdt;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v1

    .line 51001
    iget-object v2, v0, Lkdu;->t:Ljava/lang/String;

    .line 51002
    iget-object v3, v0, Lkdu;->s:Ljava/lang/String;

    .line 51000
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkcy;->a(Lkdu;Ljava/lang/String;)Lkcy;

    move-result-object v0

    new-instance v1, Lkbb;

    invoke-direct {v1, p0, v0}, Lkbb;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    .line 48000
    :cond_e
    sget-object v0, Lkav;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lkav;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ext_packet"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lkds;

    invoke-direct {v4, v3}, Lkds;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lkdu;Ljava/lang/String;Ljava/lang/String;)Lkdu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51003
    iget-object v2, v0, Lkdu;->t:Ljava/lang/String;

    .line 51004
    iget-object v3, v0, Lkdu;->s:Ljava/lang/String;

    .line 48000
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkcy;->a(Lkdu;Ljava/lang/String;)Lkcy;

    move-result-object v0

    new-instance v1, Lkbb;

    invoke-direct {v1, p0, v0}, Lkbb;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lkav;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkav;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ext_packet"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/smack/packet/f;

    invoke-direct {v4, v3}, Lcom/xiaomi/smack/packet/f;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lkdu;Ljava/lang/String;Ljava/lang/String;)Lkdu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51005
    iget-object v2, v0, Lkdu;->t:Ljava/lang/String;

    .line 51006
    iget-object v3, v0, Lkdu;->s:Ljava/lang/String;

    .line 48000
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkcy;->a(Lkdu;Ljava/lang/String;)Lkcy;

    move-result-object v0

    new-instance v1, Lkbb;

    invoke-direct {v1, p0, v0}, Lkbb;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lkav;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request reset connection from chid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    sget-object v2, Lkav;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v1, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-ne v0, v1, :cond_1

    .line 51007
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    .line 48000
    if-eqz v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lkde;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_12
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$n;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$n;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lkav;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open channel should be called first before update info, pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lkav;->p:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/aq;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aq$b;

    move-object v5, v0

    :cond_16
    :goto_4
    if-eqz v5, :cond_1

    sget-object v0, Lkav;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lkav;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    :cond_17
    sget-object v0, Lkav;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkav;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v5

    goto :goto_4

    :cond_19
    const-string/jumbo v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkax;->a(Landroid/content/Context;)Lkax;

    .line 51008
    sget-object v0, Ljux;->a:Ljava/lang/String;

    const-string/jumbo v1, "xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Ljux;->a:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Ljux;->a:Ljava/lang/String;

    const-string/jumbo v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move v0, v9

    .line 48000
    :goto_5
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkax;->a(Landroid/content/Context;)Lkax;

    move-result-object v0

    invoke-virtual {v0}, Lkax;->a()I

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "register without being provisioned. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move v0, v3

    .line 51008
    goto :goto_5

    .line 48000
    :cond_1c
    const-string/jumbo v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "mipush_env_chanage"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "mipush_env_type"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v1

    .line 51009
    iget-object v2, v1, Lkcs;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v6, v1, Lkcs;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v1, Lkcs;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, v1, Lkcs;->b:Ljava/util/List;

    const-string/jumbo v7, ","

    invoke-static {v6, v7}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v7, "unregistered_pkg_names"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1d
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48000
    if-eqz v0, :cond_1e

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Lkbw;

    const/16 v2, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkbw;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    .line 51009
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 48000
    :cond_1e
    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_20
    const-string/jumbo v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v3

    .line 51010
    iget-object v4, v3, Lkcs;->b:Ljava/util/List;

    monitor-enter v4

    :try_start_2
    iget-object v5, v3, Lkcs;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, v3, Lkcs;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Lkcs;->b:Ljava/util/List;

    const-string/jumbo v6, ","

    invoke-static {v5, v6}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v6, "mipush_app_info"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v6, "unregistered_pkg_names"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_21
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48000
    :cond_22
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 51010
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 48000
    :cond_23
    sget-object v0, Lkay;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "uninstall_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move v9, v3

    :goto_6
    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/aq;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    if-eqz v9, :cond_24

    const-string/jumbo v0, "1"

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    const-string/jumbo v0, "close the miliao channel as the app is uninstalled."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v1, "pref_registered_pkg_names"

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v9, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, v0}, Lkak;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p0, v0}, Lkak;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    invoke-static {p0, v0}, Lkak;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-static {v0, v2}, Lkai;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    move-result-object v1

    invoke-static {p0, v1}, Lkai;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/af;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uninstall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " msg sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/xiaomi/smack/l; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to send Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/smack/l;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->d(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v0, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkav;->z:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-lt v1, v2, :cond_27

    invoke-static {p0, v0, v1}, Lkak;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_27
    sget-object v1, Lkav;->D:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkav;->E:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lkak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v0, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lkav;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lkav;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lkav;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lkav;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljvs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid notification for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    invoke-static {v2}, Ljvs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v3, v9

    goto :goto_7

    :cond_2b
    if-eqz v3, :cond_2c

    invoke-static {p0, v2}, Lkak;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    invoke-static {p0, v2, v1}, Lkak;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v0, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v1

    .line 51011
    iget-object v2, v1, Lkcs;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_6
    iget-object v6, v1, Lkcs;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v1, Lkcs;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lkcs;->c:Ljava/util/List;

    const-string/jumbo v6, ","

    invoke-static {v0, v6}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v6, "mipush_app_info"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v6, "disable_push_pkg_names"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2e
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 48000
    :cond_2f
    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    :cond_30
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    invoke-virtual {v0}, Lkch;->b()V

    new-instance v0, Lkbx;

    invoke-direct {v0, p0, v4}, Lkbx;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 51012
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 48000
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->f()V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/service/aq;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->d()V

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v0

    invoke-virtual {v0}, Lkbd;->b()V

    invoke-static {}, Lkcr;->a()V

    goto/16 :goto_0

    .line 51011
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 48000
    :cond_31
    const-string/jumbo v0, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_32
    const-string/jumbo v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v0, "mipush_app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "mipush_app_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v0

    .line 51013
    iget-object v1, v0, Lkcs;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_8
    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    const-string/jumbo v7, ","

    invoke-static {v6, v7}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v7, "disable_push_pkg_names_cache"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_33
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 48000
    :cond_34
    const-string/jumbo v0, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v0

    .line 51014
    iget-object v1, v0, Lkcs;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_9
    iget-object v6, v0, Lkcs;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Lkcs;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, v0, Lkcs;->c:Ljava/util/List;

    const-string/jumbo v7, ","

    invoke-static {v6, v7}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v7, "disable_push_pkg_names"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_35
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 48000
    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v0

    .line 51015
    iget-object v1, v0, Lkcs;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_a
    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, v0, Lkcs;->d:Ljava/util/List;

    const-string/jumbo v7, ","

    invoke-static {v6, v7}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lkcs;->a:Landroid/content/Context;

    const-string/jumbo v7, "mipush_app_info"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v7, "disable_push_pkg_names_cache"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_36
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 48000
    :cond_37
    if-nez v5, :cond_38

    const v0, 0x42c1d83

    const-string/jumbo v1, "null payload"

    invoke-static {p0, v2, v5, v0, v1}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_0

    .line 51013
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 51014
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 51015
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    .line 48000
    :cond_38
    invoke-static {v2, v5}, Lkcu;->b(Ljava/lang/String;[B)V

    new-instance v0, Lkct;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkct;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 51016
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 48000
    const-string/jumbo v0, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v0, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/xiaomi/xmpush/thrift/f;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/f;-><init>()V

    :try_start_e
    invoke-static {v2, v1}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    invoke-static {p0}, Lket;->a(Landroid/content/Context;)Lket;

    move-result-object v1

    .line 51017
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string/jumbo v0, "pkgName is null or empty, upload ClientUploadDataItem failed."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/apache/thrift/f; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 48000
    :catch_1
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 51017
    :cond_3a
    const/4 v3, 0x0

    :try_start_f
    invoke-static {v2, v3}, Lkbi;->a(Lcom/xiaomi/xmpush/thrift/f;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {}, Lkbi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/f;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    :cond_3b
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/f;->g(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    iget-object v0, v1, Lket;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lkbj;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)V
    :try_end_f
    .catch Lorg/apache/thrift/f; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .line 48000
    :cond_3c
    const-string/jumbo v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "Service called on timer"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_0

    :cond_3d
    const-string/jumbo v0, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "Service called on check alive."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_0

    :cond_3e
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51018
    :try_start_10
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "network changed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :goto_9
    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    invoke-virtual {v0}, Lken;->a()V

    :cond_3f
    invoke-static {p0}, Lkeh;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    .line 51019
    iget-object v1, v0, Lkde;->g:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_11
    iget-object v0, v0, Lkde;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 51018
    invoke-static {p0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_40
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-nez v0, :cond_42

    .line 51020
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->i()Z

    move-result v0

    if-eqz v0, :cond_41

    move v3, v9

    .line 51018
    :cond_41
    if-nez v3, :cond_42

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    invoke-virtual {v0, v9}, Lkch;->b(I)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$d;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 51021
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 51018
    :cond_42
    invoke-static {p0}, Ljzd;->a(Landroid/content/Context;)Ljzd;

    move-result-object v0

    invoke-virtual {v0}, Ljzd;->a()V

    :goto_a
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto/16 :goto_8

    :cond_43
    const-string/jumbo v0, "network changed, no active network"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 51019
    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0

    .line 51018
    :cond_44
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$f;

    invoke-direct {v0, p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    .line 51022
    invoke-virtual {p0, v0, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto :goto_a

    .line 48000
    :catch_3
    move-exception v1

    goto/16 :goto_6

    :cond_45
    move v1, v0

    goto/16 :goto_2

    :cond_46
    move v0, v3

    goto/16 :goto_1

    :cond_47
    move v1, v3

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/aq;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/aq$b;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$o;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;ILjava/lang/String;Ljava/lang/String;)V

    .line 30000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "Enter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Leave"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 47000
    const-string/jumbo v1, "Leave"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Enter"

    invoke-static {p3}, Lkce;->a(Landroid/content/Context;)Lkce;

    move-result-object v2

    invoke-virtual {v2, p2}, Lkce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p3}, Lkce;->a(Landroid/content/Context;)Lkce;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lkce;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update geofence statue failed geo_id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 0
    goto :goto_0
.end method

.method private b(Lcom/xiaomi/push/service/XMPushService$h;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    .line 31000
    invoke-static {}, Ljuw;->a()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Lkch;->a:Lkch$c;

    if-eq v1, v0, :cond_0

    const-string/jumbo v0, "run job outside job job thread"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v1, "Run job outside job thread"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lkch$b;->run()V

    .line 0
    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()V

    return-void
.end method

.method public static synthetic c()I
    .locals 1

    sget v0, Lcom/xiaomi/push/service/XMPushService;->l:I

    return v0
.end method

.method public static synthetic c(Lcom/xiaomi/push/service/XMPushService;)Lkdf;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lkdf;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    invoke-static {}, Ljuq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/xiaomi/push/service/XMPushService;)Lkde;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    return-object v0
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljvn;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/XMPushService;)Lkch;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    return-object v0
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkcs;->a(Landroid/content/Context;)Lkcs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkcs;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method private static f()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string/jumbo v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string/jumbo v4, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkcr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkcr;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lkcr;->a()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 3

    .prologue
    .line 0
    .line 51023
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "try to connect while connecting."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "try to connect while is connected."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lkdf;

    invoke-static {p0}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51024
    iput-object v1, v0, Lkdf;->h:Ljava/lang/String;

    .line 51025
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->p:Lkdk;

    new-instance v2, Lkbo;

    invoke-direct {v2, p0}, Lkbo;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lkdc;->a(Lkdk;Lkdl;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    invoke-virtual {v0}, Lkdc;->p()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;
    :try_end_0
    .catch Lcom/xiaomi/smack/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 51023
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->e()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    goto :goto_0

    .line 51025
    :catch_0
    move-exception v0

    const-string/jumbo v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lkdc;->b(ILjava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    invoke-virtual {v0, p1}, Lkch;->b(I)V

    return-void
.end method

.method public final a(ILjava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disconnect "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0, p1, p2}, Lkde;->b(ILjava/lang/Exception;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/aq;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/push/service/XMPushService$h;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    iget v1, p1, Lcom/xiaomi/push/service/XMPushService$h;->g:I

    .line 43000
    iget-object v1, v0, Lkch;->a:Lkch$c;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lkch;->a:Lkch$c;

    invoke-static {v0}, Lkch$c;->a(Lkch$c;)Lkch$c$a;

    move-result-object v2

    .line 44000
    const/4 v0, 0x0

    :goto_0
    iget v3, v2, Lkch$c$a;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, v2, Lkch$c$a;->a:[Lkch$d;

    aget-object v3, v3, v0

    iget-object v3, v3, Lkch$d;->d:Lkch$b;

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lkch$c$a;->a:[Lkch$d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lkch$d;->a()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lkch$c$a;->b()V

    .line 43000
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/xiaomi/push/service/XMPushService$h;J)V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    .line 32000
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delay < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :catch_0
    move-exception v0

    :goto_0
    return-void

    .line 32000
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lkch;->a(Lkch$b;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/push/service/aq$b;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x3e8

    .line 0
    if-eqz p1, :cond_0

    .line 42000
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget v2, p1, Lcom/xiaomi/push/service/aq$b;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule rebind job in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$o;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;ILjava/lang/String;Ljava/lang/String;)V

    .line 29000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[BZ)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lkcu;->b(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aq$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v1, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lkcu;->b(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    new-instance v0, Lkby;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lkby;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto :goto_0
.end method

.method public final a(Lkde;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 0
    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lken;->a(Lkde;)V

    invoke-direct {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lkba;

    .line 45000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lkba;->c:J

    iget-object v1, v0, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v1, 0x0

    iput v1, v0, Lkba;->d:I

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aq$b;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V

    .line 46000
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto :goto_0

    .line 0
    :cond_0
    return-void
.end method

.method public final a(Lkde;ILjava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lken;->a(Lkde;ILjava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    return-void
.end method

.method public final a(Lkde;Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lken;->a(Lkde;Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    return-void
.end method

.method a(Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljvn;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$l;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$l;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$f;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    goto :goto_0
.end method

.method public final a([BLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v6, 0x42c1d83

    .line 0
    if-nez p1, :cond_0

    const-string/jumbo v0, "null payload"

    invoke-static {p0, p2, p1, v6, v0}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string/jumbo v0, "register request without payload"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    :try_start_0
    invoke-static {v1, p1}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v0, v2, :cond_1

    new-instance v4, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/aj;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->f()[B

    move-result-object v0

    invoke-static {v4, v0}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkcu;->a(Ljava/lang/String;[B)V

    new-instance v0, Lkct;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/aj;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/aj;->i()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lkct;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 24000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V
    :try_end_1
    .catch Lorg/apache/thrift/f; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const v0, 0x42c1d83

    const-string/jumbo v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/f; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, " data container error."

    invoke-static {p0, p2, p1, v6, v0}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string/jumbo v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string/jumbo v0, "register request with invalid payload"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/f; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    invoke-static {p0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lkde;)V
    .locals 1

    const-string/jumbo v0, "begin to connect..."

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    invoke-static {}, Lkeo;->a()Lken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lken;->b(Lkde;)V

    return-void
.end method

.method public final b(Z)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lkba;

    .line 37000
    iget-object v2, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p1, :cond_2

    iget-object v0, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v1, Lkba;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lkba;->d:I

    :cond_0
    iget-object v0, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget-object v0, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$d;

    iget-object v1, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 38000
    invoke-virtual {v0, v2, v10, v11}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 37000
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2, v8}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39000
    iget v2, v1, Lkba;->d:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_6

    const v0, 0x493e0

    .line 37000
    :cond_3
    :goto_1
    iget-object v2, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2, v8}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Lkba;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkba;->d:I

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule reconnect in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/push/service/XMPushService$d;

    iget-object v4, v1, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    iget v0, v1, Lkba;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 40000
    sget-object v0, Lkeo$a;->a:Lkeo;

    .line 41000
    iget-boolean v0, v0, Lkeo;->a:Z

    .line 37000
    if-eqz v0, :cond_5

    invoke-static {}, Lkan;->b()V

    :cond_5
    iget v0, v1, Lkba;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lkan;->a()V

    goto :goto_0

    .line 39000
    :cond_6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v4, v1, Lkba;->d:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_7

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_1

    :cond_7
    iget v4, v1, Lkba;->d:I

    if-le v4, v8, :cond_8

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_1

    :cond_8
    iget-wide v2, v1, Lkba;->c:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lkba;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    iget v0, v1, Lkba;->b:I

    sget v2, Lkba;->e:I

    if-lt v0, v2, :cond_9

    iget v0, v1, Lkba;->b:I

    goto/16 :goto_1

    :cond_9
    iget v0, v1, Lkba;->b:I

    iget v2, v1, Lkba;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lkba;->b:I

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x3e8

    iput v2, v1, Lkba;->b:I

    goto/16 :goto_1

    .line 37000
    :cond_b
    const-string/jumbo v0, "should not reconnect as no client or network."

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    invoke-virtual {v0}, Lkde;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkch;->a(I)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->d:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljuq;->a:Landroid/content/Context;

    .line 0
    invoke-static {p0}, Lkcq;->a(Landroid/content/Context;)Lkcp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lkcp;->g:I

    invoke-static {v0}, Ljux;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/module/PushChannelRegion;->Global:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "app.chat.global.xiaomi.net"

    invoke-static {v0}, Lkdf;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lkbq;

    invoke-direct {v1, p0}, Lkbq;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->d:Landroid/os/Messenger;

    .line 2000
    new-instance v0, Lkaw;

    invoke-direct {v0, p0}, Lkaw;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkbd;->a(Lkbd$a;)V

    const-class v7, Ljyw;

    monitor-enter v7

    :try_start_0
    invoke-static {v0}, Ljyw;->a(Ljyw$a;)V

    const/4 v1, 0x0

    new-instance v2, Lkaw$a;

    invoke-direct {v2}, Lkaw$a;-><init>()V

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "push"

    const-string/jumbo v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljyw;->a(Landroid/content/Context;Ljyv;Ljyw$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    new-instance v0, Lkbr;

    const/16 v3, 0x1466

    const-string/jumbo v4, "xiaomi.com"

    move-object v1, p0

    move-object v2, v8

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lkbr;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lkdj;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lkdf;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lkdf;

    .line 3000
    iput-boolean v9, v0, Lkdf;->g:Z

    .line 0
    new-instance v0, Lkdc;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lkdf;

    invoke-direct {v0, p0, v1}, Lkdc;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    .line 4000
    new-instance v0, Lkcb;

    invoke-direct {v0}, Lkcb;-><init>()V

    .line 0
    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    :try_start_1
    invoke-static {}, Ljuq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 0
    :cond_2
    :goto_1
    invoke-static {p0}, Lkcr;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    .line 6000
    if-eqz p0, :cond_3

    iget-object v1, v0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 0
    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lcom/xiaomi/push/service/PacketSync;

    new-instance v0, Lkba;

    invoke-direct {v0, p0}, Lkba;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lkba;

    new-instance v0, Lkcc;

    invoke-direct {v0}, Lkcc;-><init>()V

    .line 7000
    invoke-static {}, Lkea;->a()Lkea;

    move-result-object v1

    const-string/jumbo v2, "all"

    const-string/jumbo v3, "xm:chat"

    .line 8000
    instance-of v4, v0, Lkdz;

    if-nez v4, :cond_6

    instance-of v4, v0, Ljava/lang/Class;

    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provider must be a PacketExtensionProvider or a Class instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_4
    sget-object v0, Lcom/xiaomi/push/service/module/PushChannelRegion;->Europe:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "fr.app.chat.global.xiaomi.net"

    invoke-static {v0}, Lkdf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/xiaomi/push/service/module/PushChannelRegion;->China:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 0
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8000
    :cond_6
    invoke-static {v2, v3}, Lkea;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lkea;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9000
    sget-object v0, Lkeo$a;->a:Lkeo;

    .line 0
    invoke-virtual {v0, p0}, Lkeo;->a(Lcom/xiaomi/push/service/XMPushService;)V

    new-instance v0, Lkch;

    const-string/jumbo v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lkch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lkbs;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lkbs;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 10000
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    :cond_7
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->f()V

    new-instance v1, Lkbt;

    invoke-direct {v1, p0}, Lkbt;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/push/service/aq$a;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11000
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    .line 0
    :goto_2
    if-eqz v0, :cond_9

    .line 12000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_b

    sget v0, Lcom/xiaomi/push/service/XMPushService;->l:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->startForeground(ILandroid/app/Notification;)V

    .line 0
    :cond_9
    :goto_3
    invoke-static {p0}, Lket;->a(Landroid/content/Context;)Lket;

    move-result-object v0

    new-instance v1, Lkcj;

    invoke-direct {v1, p0}, Lkcj;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-string/jumbo v2, "UPLOADER_PUSH_CHANNEL"

    .line 13000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v0, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    .line 0
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:Landroid/content/BroadcastReceiver;

    .line 15000
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.xiaomi.metoknlp.geofencing.state_change_protected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.xiaomi.metoknlp.permission.NOTIFY_FENCE_STATE"

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 0
    invoke-static {p0}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v0

    new-instance v1, Lkcd;

    invoke-direct {v1, p0}, Lkcd;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const v2, 0x15180

    .line 16000
    invoke-virtual {v0, v1, v2, v6}, Ljvd;->a(Ljvd$a;II)Z

    .line 0
    new-instance v0, Lcom/xiaomi/tinyData/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/a;-><init>(Landroid/content/Context;)V

    .line 17000
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "XMPushService created pid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/xiaomi/push/service/XMPushService;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    return-void

    .line 11000
    :cond_a
    invoke-static {p0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->H:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lkaq;->a(IZ)Z

    move-result v0

    goto :goto_2

    .line 12000
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/push/service/XMJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lkbp;

    invoke-direct {v1, p0}, Lkbp;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0, v1, v9}, Lcom/xiaomi/push/service/XMPushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_3

    .line 14000
    :cond_c
    iget-object v0, v0, Lket;->b:Ljava/util/Map;

    .line 13000
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 17000
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/XMPushService$e;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    invoke-virtual {v0}, Lkch;->b()V

    new-instance v0, Lkbn;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkbn;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 33000
    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$i;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 34000
    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->f()V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/aq;->d()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lkdc;

    .line 35000
    iget-object v0, v0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 0
    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v0

    invoke-virtual {v0}, Lkbd;->b()V

    invoke-static {}, Lkcr;->a()V

    .line 36000
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "Service destroyed"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    return-void

    .line 36000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    if-nez p1, :cond_2

    const-string/jumbo v2, "onStart() with intent NULL"

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->o:Lkch;

    .line 18000
    iget-object v2, v2, Lkch;->a:Lkch$c;

    .line 19000
    iget-boolean v3, v2, Lkch$c;->b:Z

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v2, v2, Lkch$c;->a:J

    sub-long v2, v4, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 0
    :goto_1
    if-eqz v0, :cond_4

    const-string/jumbo v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string/jumbo v2, "onStart() with intent.Action = %s, chid = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lkav;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 19000
    goto :goto_1

    .line 0
    :cond_4
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    .line 20000
    invoke-virtual {p0, v0, v6, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto :goto_2

    .line 0
    :cond_5
    const-string/jumbo v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    .line 21000
    invoke-virtual {p0, v0, v6, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    sget v0, Lcom/xiaomi/push/service/XMPushService;->g:I

    return v0
.end method
