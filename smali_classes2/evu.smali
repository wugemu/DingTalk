.class public Levu;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"


# static fields
.field private static final k:Ljava/lang/String;

.field private static o:Levu;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcjo$a;

.field public c:Lcjo$a;

.field public d:Lcjo$a;

.field public e:Lcjo$a;

.field public f:Lcjo$a;

.field public g:Lcjo$a;

.field public h:Lcom/alibaba/wukong/im/MessageListener;

.field public i:Levq;

.field public j:Z

.field private final l:Landroid/net/Uri;

.field private m:Landroid/app/NotificationManager;

.field private n:Lcjo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-class v0, Levu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levu;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Leuj$k;->general:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Levu;->l:Landroid/net/Uri;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Levu;->j:Z

    .line 162
    if-nez p1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Levu;->a:Landroid/content/Context;

    .line 166
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Levu;->m:Landroid/app/NotificationManager;

    .line 168
    new-instance v0, Levu$1;

    invoke-direct {v0, p0}, Levu$1;-><init>(Levu;)V

    iput-object v0, p0, Levu;->b:Lcjo$a;

    .line 321
    new-instance v0, Levu$2;

    invoke-direct {v0, p0}, Levu$2;-><init>(Levu;)V

    iput-object v0, p0, Levu;->c:Lcjo$a;

    .line 376
    new-instance v0, Levu$3;

    invoke-direct {v0, p0}, Levu$3;-><init>(Levu;)V

    iput-object v0, p0, Levu;->n:Lcjo$a;

    .line 440
    new-instance v0, Levu$4;

    invoke-direct {v0, p0}, Levu$4;-><init>(Levu;)V

    iput-object v0, p0, Levu;->d:Lcjo$a;

    .line 469
    new-instance v0, Levu$5;

    invoke-direct {v0, p0}, Levu$5;-><init>(Levu;)V

    iput-object v0, p0, Levu;->f:Lcjo$a;

    .line 475
    new-instance v0, Levu$6;

    invoke-direct {v0, p0}, Levu$6;-><init>(Levu;)V

    iput-object v0, p0, Levu;->e:Lcjo$a;

    .line 490
    new-instance v0, Levu$7;

    invoke-direct {v0, p0}, Levu$7;-><init>(Levu;)V

    iput-object v0, p0, Levu;->g:Lcjo$a;

    .line 506
    new-instance v0, Levu$8;

    invoke-direct {v0, p0}, Levu$8;-><init>(Levu;)V

    iput-object v0, p0, Levu;->h:Lcom/alibaba/wukong/im/MessageListener;

    goto :goto_0
.end method

.method static synthetic a(Levu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Levu;

    .prologue
    .line 112
    iget-object v0, p0, Levu;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Levu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v0, Levu;->o:Levu;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Levu;

    invoke-direct {v0, p0}, Levu;-><init>(Landroid/content/Context;)V

    sput-object v0, Levu;->o:Levu;

    .line 158
    :cond_0
    sget-object v0, Levu;->o:Levu;

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 566
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    .line 1061
    iget-boolean v1, v0, Leyn;->a:Z

    if-nez v1, :cond_0

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, v0, Leyn;->a:Z

    .line 1065
    new-instance v0, Lexr;

    const-string/jumbo v1, "biz/conference"

    invoke-direct {v0, v1}, Lexr;-><init>(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Lexp;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lexp;-><init>(I)V

    .line 1068
    new-instance v0, Lext;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lext;-><init>(I)V

    .line 1069
    new-instance v0, Lexv;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lexv;-><init>(I)V

    .line 1070
    new-instance v0, Lexq;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lexq;-><init>(I)V

    .line 1071
    new-instance v0, Lexu;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Lexu;-><init>(I)V

    .line 1072
    new-instance v0, Lexx;

    const/16 v1, 0x7d4

    invoke-direct {v0, v1}, Lexx;-><init>(I)V

    .line 1073
    new-instance v0, Lexw;

    const/16 v1, 0x7db

    invoke-direct {v0, v1}, Lexw;-><init>(I)V

    .line 1076
    new-instance v0, Lexp;

    const/16 v1, 0x7d5

    invoke-direct {v0, v1}, Lexp;-><init>(I)V

    .line 1077
    new-instance v0, Lext;

    const/16 v1, 0x7d7

    invoke-direct {v0, v1}, Lext;-><init>(I)V

    .line 1078
    new-instance v0, Lexv;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lexv;-><init>(I)V

    .line 1079
    new-instance v0, Lexq;

    const/16 v1, 0x7d9

    invoke-direct {v0, v1}, Lexq;-><init>(I)V

    .line 1080
    new-instance v0, Lexs;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lexs;-><init>(I)V

    .line 1081
    new-instance v0, Lexo;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1}, Lexo;-><init>(I)V

    .line 1084
    new-instance v0, Lexn;

    const/16 v1, 0x7dc

    invoke-direct {v0, v1}, Lexn;-><init>(I)V

    .line 1086
    new-instance v0, Lexy;

    const/16 v1, 0x97e

    invoke-direct {v0, v1}, Lexy;-><init>(I)V

    .line 1087
    new-instance v0, Lexz;

    const/16 v1, 0x97f

    invoke-direct {v0, v1}, Lexz;-><init>(I)V

    .line 567
    :cond_0
    return-void
.end method

.method static synthetic a(Levu;Lcjo$b;)V
    .locals 8
    .param p0, "x0"    # Levu;
    .param p1, "x1"    # Lcjo$b;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 112
    .line 2614
    if-eqz p1, :cond_0

    iget v0, p1, Lcjo$b;->b:I

    const/16 v1, 0x97e

    if-eq v0, v1, :cond_1

    .line 2654
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .line 2623
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    .line 2625
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x64

    if-eq v1, v4, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    .line 2626
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x65

    if-eq v1, v4, :cond_3

    .line 2627
    :cond_2
    const-string/jumbo v0, "tele_video_h"

    sget-object v1, Levu;->k:Ljava/lang/String;

    const-string/jumbo v2, "Invalid action for video conf push"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2632
    :cond_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_conf_live_call_busy_enable"

    .line 3083
    invoke-virtual {v1, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 2632
    if-eqz v1, :cond_6

    .line 2633
    invoke-static {}, Lewp;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 2634
    :goto_1
    invoke-static {}, Levm;->a()Levm;

    move-result-object v4

    invoke-virtual {v4}, Levm;->c()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2635
    invoke-static {}, Leve;->a()Leve;

    move-result-object v4

    invoke-virtual {v4}, Leve;->c()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2636
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->c()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2637
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    invoke-virtual {v4}, Levn;->c()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2638
    invoke-static {v7}, Lcms;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_7

    .line 2640
    :cond_4
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 2641
    const-string/jumbo v2, "Room :"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2642
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2643
    const-string/jumbo v2, ",video/call/conf run;"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2644
    const-string/jumbo v2, "tele_video_h"

    sget-object v3, Levu;->k:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;-><init>()V

    .line 2647
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->conferenceId:Ljava/lang/String;

    .line 2648
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    .line 2649
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 2650
    invoke-static {v7}, Lcms;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2651
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->status:Ljava/lang/Integer;

    .line 2653
    :cond_5
    invoke-static {v1, v7}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 2633
    goto/16 :goto_1

    .line 2656
    :cond_7
    const-string/jumbo v1, "tele_video_h"

    sget-object v4, Levu;->k:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Video invite push "

    aput-object v6, v5, v3

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    const/16 v2, 0x2712

    invoke-static {v1, v2}, Lewp;->b(Landroid/content/Context;I)V

    .line 2660
    invoke-static {v7}, Lewp;->a(Landroid/content/Context;)V

    .line 2662
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2663
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_callee"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    move-result-object v0

    invoke-static {v0, v1}, Lewb;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V

    .line 2667
    invoke-static {}, Lewp;->a()V

    goto/16 :goto_0
.end method

.method static synthetic a(Levu;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Levu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Levu;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v7, 0x3e8

    .line 680
    invoke-virtual {p0}, Levu;->c()V

    .line 682
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 684
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Levu;->a:Landroid/content/Context;

    .line 685
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$l;->dt_conf_ongoing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Levu;->a:Landroid/content/Context;

    .line 686
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$h;->notification_icon_big:I

    invoke-static {v5, v6}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Leuj$h;->notification_icon_small:I

    .line 687
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 688
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, -0xffff01

    .line 689
    invoke-virtual {v4, v5, v7, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 690
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 691
    invoke-virtual {p0}, Levu;->e()Landroid/app/PendingIntent;

    move-result-object v3

    .line 692
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 693
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Telephone:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-virtual {v4, v5}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "channelId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 695
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 698
    :cond_0
    if-nez p2, :cond_2

    .line 699
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v4

    invoke-virtual {v4}, Lcmp;->d()Z

    move-result v4

    if-nez v4, :cond_2

    .line 700
    const-string/jumbo v4, "_pref_vibrate"

    invoke-static {v4}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 703
    :cond_1
    const-string/jumbo v4, "_pref_sound"

    invoke-static {v4}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 704
    iget-object v4, p0, Levu;->l:Landroid/net/Uri;

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 710
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 711
    .local v2, "confNotification":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 714
    :try_start_0
    iget-object v4, p0, Levu;->m:Landroid/app/NotificationManager;

    if-eqz v4, :cond_3

    .line 715
    iget-object v4, p0, Levu;->m:Landroid/app/NotificationManager;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_3
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v4

    const-string/jumbo v4, "tele_conf"

    sget-object v5, Levu;->k:Ljava/lang/String;

    const-string/jumbo v6, "Start conf notification exp"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Levu;)V
    .locals 0
    .param p0, "x0"    # Levu;

    .prologue
    .line 112
    invoke-virtual {p0}, Levu;->c()V

    return-void
.end method

.method static synthetic c(Levu;)Levq;
    .locals 1
    .param p0, "x0"    # Levu;

    .prologue
    .line 112
    iget-object v0, p0, Levu;->i:Levq;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Levu;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Landroid/app/PendingIntent;
    .locals 13
    .param p1, "beNotification"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 882
    if-eqz p1, :cond_1

    .line 883
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const-class v11, Lcom/alibaba/android/teleconf/service/VoIPCallActionReceiver;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v4, "intent":Landroid/content/Intent;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ne v10, v11, :cond_0

    .line 886
    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 887
    .local v3, "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 889
    .end local v3    # "clearIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 918
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-object v7

    .line 891
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 892
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "https://qr.dingtalk.com/calling_now.html"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Levh;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    new-instance v1, Landroid/content/ComponentName;

    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const-class v11, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 896
    .local v1, "cName":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 897
    const/high16 v10, 0x30000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 899
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v10

    .line 1428
    iget-wide v8, v10, Lewv;->a:J

    .line 900
    .local v8, "uid":J
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v10

    .line 1432
    iget-object v6, v10, Lewv;->b:Ljava/lang/String;

    .line 901
    .local v6, "nick":Ljava/lang/String;
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v10

    .line 1436
    iget-object v5, v10, Lewv;->c:Ljava/lang/String;

    .line 902
    .local v5, "mediaId":Ljava/lang/String;
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v10

    .line 1440
    iget-boolean v0, v10, Lewv;->d:Z

    .line 903
    .local v0, "beCaller":Z
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v10

    .line 1444
    iget-boolean v2, v10, Lewv;->e:Z

    .line 904
    .local v2, "canToPstn":Z
    const-string/jumbo v10, "user_id"

    invoke-virtual {v4, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 905
    const-string/jumbo v10, "user_name"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v10, "media_id"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string/jumbo v10, "from"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const-string/jumbo v10, "conf_voip_to_pstn"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    const-string/jumbo v10, "message"

    const-string/jumbo v11, "conf_talker"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    .line 912
    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 913
    .restart local v3    # "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 915
    .end local v3    # "clearIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v10, p0, Levu;->a:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    goto/16 :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "notificationId"    # I
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 796
    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 800
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    const-class v2, Lcom/alibaba/android/teleconf/service/ConfNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "conf_notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string/jumbo v1, "conf_header_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "tele_conf"

    sget-object v2, Levu;->k:Ljava/lang/String;

    const-string/jumbo v3, "Start notification service exp"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 671
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_click_to_going:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "content":Ljava/lang/String;
    sget v1, Levh;->b:I

    invoke-direct {p0, v0, v1}, Levu;->a(Ljava/lang/String;I)V

    .line 673
    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 723
    iget-object v0, p0, Levu;->m:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 727
    :cond_0
    :try_start_0
    iget-object v0, p0, Levu;->m:Landroid/app/NotificationManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levu;->k:Ljava/lang/String;

    const-string/jumbo v2, "Stop conf notification exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 810
    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 814
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    const-class v2, Lcom/alibaba/android/teleconf/service/ConfNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "tele_conf"

    sget-object v2, Levu;->k:Ljava/lang/String;

    const-string/jumbo v3, "Stop notification service exp"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()Landroid/app/PendingIntent;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 822
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 824
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "/page/conferencePanel"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Levh;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 825
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 829
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 831
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    .line 832
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 833
    .local v1, "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 835
    .end local v1    # "clearIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 837
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    return-object v3
.end method

.method public final f()Landroid/app/PendingIntent;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 841
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 842
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "/page/videoConferenceNew"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Levh;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 843
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 847
    const/high16 v4, 0x30800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    const-string/jumbo v4, "message"

    const-string/jumbo v5, "conf_talker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    .line 851
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 852
    .local v1, "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 855
    .end local v1    # "clearIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 857
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    return-object v3
.end method

.method public final g()Landroid/app/PendingIntent;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 861
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 862
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "/page/videoConferenceNew"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Levh;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 863
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 867
    const/high16 v4, 0x30800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 868
    const-string/jumbo v4, "message"

    const-string/jumbo v5, "conf_talker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    .line 871
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 872
    .local v1, "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 875
    .end local v1    # "clearIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v4, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 877
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    return-object v3
.end method

.method public final h()Landroid/app/PendingIntent;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    .line 922
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 923
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "https://qr.dingtalk.com/page/voipConference"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Levh;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 924
    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    iget-object v7, p0, Levu;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Levu;->a:Landroid/content/Context;

    const-class v8, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 928
    const/high16 v7, 0x30000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    invoke-static {}, Levn;->p()Levn;

    move-result-object v7

    invoke-virtual {v7}, Levn;->l()Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, "cid":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 932
    .local v5, "mainUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Levn;->p()Levn;

    move-result-object v7

    .line 2065
    iget-wide v8, v7, Levn;->r:J

    .line 932
    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 933
    invoke-static {}, Levn;->p()Levn;

    move-result-object v7

    .line 2073
    iget-object v7, v7, Levn;->s:Ljava/lang/String;

    .line 933
    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 934
    invoke-static {}, Levn;->p()Levn;

    move-result-object v7

    .line 2081
    iget-boolean v4, v7, Levn;->t:Z

    .line 935
    .local v4, "isCaller":Z
    const-string/jumbo v7, "conversation_id"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string/jumbo v7, "user"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    const-string/jumbo v7, "from"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    const-string/jumbo v7, "message"

    const-string/jumbo v8, "conf_talker"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ne v7, v8, :cond_0

    .line 941
    iget-object v7, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v7, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 942
    .local v2, "clearIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 944
    .end local v2    # "clearIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v7, p0, Levu;->a:Landroid/content/Context;

    invoke-static {v7, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 946
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    return-object v6
.end method
