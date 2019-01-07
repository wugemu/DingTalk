.class public Ldjb;
.super Ljava/lang/Object;
.source "ChatVoiceController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjb$a;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private A:Lctj$a;

.field final a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

.field public d:Ldvw;

.field e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ldiz;

.field public j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

.field private l:Landroid/hardware/SensorManager;

.field private m:Landroid/hardware/Sensor;

.field private n:Z

.field private o:Lcug;

.field private p:Landroid/widget/ListView;

.field private q:Landroid/widget/Button;

.field private r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Ldjb$a;

.field private w:Landroid/media/SoundPool;

.field private x:I

.field private y:J

.field private z:Lcom/alibaba/wukong/im/AudioStreamController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Ldjb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldjb;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ListView;Lcug;Landroid/widget/Button;Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ldiz;Ldjb$a;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "contentListView"    # Landroid/widget/ListView;
    .param p3, "adapter"    # Lcug;
    .param p4, "btnVoice"    # Landroid/widget/Button;
    .param p5, "recordeView"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p6, "chatMessageSender"    # Ldiz;
    .param p7, "chatVoiceListener"    # Ldjb$a;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, Ldjb;->n:Z

    .line 78
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v0, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldjb;->s:J

    .line 82
    iput-boolean v2, p0, Ldjb;->t:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjb;->u:Z

    .line 89
    iput-boolean v2, p0, Ldjb;->f:Z

    .line 91
    iput-boolean v2, p0, Ldjb;->g:Z

    .line 93
    iput-boolean v2, p0, Ldjb;->h:Z

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldjb;->y:J

    .line 215
    new-instance v0, Ldjb$2;

    invoke-direct {v0, p0}, Ldjb$2;-><init>(Ldjb;)V

    iput-object v0, p0, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 350
    new-instance v0, Ldjb$3;

    invoke-direct {v0, p0}, Ldjb$3;-><init>(Ldjb;)V

    iput-object v0, p0, Ldjb;->A:Lctj$a;

    .line 118
    iput-object p1, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 119
    iput-object p2, p0, Ldjb;->p:Landroid/widget/ListView;

    .line 120
    iput-object p3, p0, Ldjb;->o:Lcug;

    .line 121
    iput-object p4, p0, Ldjb;->q:Landroid/widget/Button;

    .line 122
    iput-object p5, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .line 123
    iput-object p6, p0, Ldjb;->i:Ldiz;

    .line 124
    iput-object p7, p0, Ldjb;->v:Ldjb$a;

    .line 125
    return-void
.end method

.method static synthetic a(Ldjb;J)J
    .locals 2
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # J

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldjb;->y:J

    return-wide v0
.end method

.method static synthetic a(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    return-object v0
.end method

.method static synthetic a(Ldjb;Lcom/alibaba/wukong/im/AudioStreamController;)Lcom/alibaba/wukong/im/AudioStreamController;
    .locals 0
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/AudioStreamController;

    .prologue
    .line 61
    iput-object p1, p0, Ldjb;->z:Lcom/alibaba/wukong/im/AudioStreamController;

    return-object p1
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ListView;Lcug;Landroid/widget/Button;Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ldiz;Ldjb$a;)Ldjb;
    .locals 8
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "contentListView"    # Landroid/widget/ListView;
    .param p2, "adapter"    # Lcug;
    .param p3, "btnVoice"    # Landroid/widget/Button;
    .param p4, "recordeView"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p5, "chatMessageSender"    # Ldiz;
    .param p6, "chatVoiceListener"    # Ldjb$a;

    .prologue
    .line 113
    new-instance v0, Ldjb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldjb;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ListView;Lcug;Landroid/widget/Button;Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ldiz;Ldjb$a;)V

    return-object v0
.end method

.method private a(I)V
    .locals 7
    .param p1, "soundId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 594
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 3192
    iget v0, v0, Lctj;->c:I

    .line 594
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 598
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method static synthetic a(Ldjb;I)V
    .locals 0
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ldjb;->a(I)V

    return-void
.end method

.method static synthetic a(Ldjb;Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 61
    .line 8551
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v0, :cond_0

    .line 8552
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 8553
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ChatVoiceController"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "playVoice start next, messageId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 8554
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8553
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8555
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "IM"

    .line 8556
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v6

    .line 8557
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v7

    .line 8556
    invoke-static {v5, v6, v0, v7}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 8555
    invoke-virtual {v1, v2, v3, v4, v0}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic a(Ldjb;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 61
    .line 7487
    iget-object v0, p0, Ldjb;->o:Lcug;

    if-eqz v0, :cond_1

    .line 7488
    iget-object v0, p0, Ldjb;->o:Lcug;

    invoke-virtual {v0}, Lcug;->c()Ljava/util/List;

    move-result-object v6

    .line 7489
    if-eqz v6, :cond_1

    .line 7491
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 7492
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 7498
    :goto_1
    if-ltz v0, :cond_1

    .line 7499
    :goto_2
    iget-object v1, p0, Ldjb;->o:Lcug;

    .line 8123
    invoke-virtual {v1}, Lcug;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    move v1, v2

    .line 7499
    :goto_3
    if-eqz v1, :cond_1

    .line 7500
    add-int/lit8 v4, v0, 0x1

    .line 7502
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 7505
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 7507
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7508
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 7512
    :goto_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    if-eq v1, v7, :cond_0

    const/16 v7, 0xfc

    if-eq v1, v7, :cond_0

    const/16 v7, 0xcc

    if-ne v1, v7, :cond_4

    .line 7516
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v7

    if-nez v7, :cond_4

    .line 7517
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v7

    if-nez v7, :cond_4

    .line 7518
    iget-object v2, p0, Ldjb;->p:Landroid/widget/ListView;

    iget-object v3, p0, Ldjb;->p:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 7519
    iget-object v2, p0, Ldjb;->p:Landroid/widget/ListView;

    new-instance v3, Ldjb$4;

    invoke-direct {v3, p0, v1, v0}, Ldjb$4;-><init>(Ldjb;ILcom/alibaba/wukong/im/Message;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v5

    .line 7533
    :cond_1
    return v2

    .line 7496
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 7497
    goto/16 :goto_0

    :cond_3
    move v1, v5

    .line 8126
    goto :goto_3

    .line 7534
    :cond_4
    if-nez p2, :cond_1

    move v0, v4

    .line 7538
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic b(Ldjb;J)J
    .locals 1
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Ldjb;->s:J

    return-wide p1
.end method

.method static synthetic b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    return-object v0
.end method

.method static synthetic b(Ldjb;Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p0, "x0"    # Ldjb;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 61
    .line 8608
    if-eqz p1, :cond_0

    .line 8609
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iput-wide v0, p0, Ldjb;->y:J

    .line 8612
    :cond_0
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ldjb$6;

    invoke-direct {v2, p0, p1}, Ldjb$6;-><init>(Ldjb;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1, p1, v2}, Ldjr;->a(ZLcom/alibaba/wukong/im/Message;Lcma;)V

    .line 61
    return-void
.end method

.method static synthetic c(Ldjb;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic d(Ldjb;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Ldjb;)V
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    .line 7196
    iget-object v0, p0, Ldjb;->v:Ldjb$a;

    if-eqz v0, :cond_0

    .line 7197
    iget-object v0, p0, Ldjb;->v:Ldjb$a;

    invoke-interface {v0}, Ldjb$a;->a()V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic f(Ldjb;)Ldvw;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->d:Ldvw;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Ldjb;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Ldjb;)Z
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-boolean v0, p0, Ldjb;->f:Z

    return v0
.end method

.method static synthetic h(Ldjb;)Ldiz;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->i:Ldiz;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Ldjb;->v:Ldjb$a;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Ldjb;->v:Ldjb$a;

    invoke-interface {v0}, Ldjb$a;->c()V

    .line 736
    :cond_0
    return-void
.end method

.method static synthetic i(Ldjb;)Z
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-boolean v0, p0, Ldjb;->h:Z

    return v0
.end method

.method static synthetic j(Ldjb;)Z
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-boolean v0, p0, Ldjb;->g:Z

    return v0
.end method

.method static synthetic k(Ldjb;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    return-object v0
.end method

.method static synthetic l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->z:Lcom/alibaba/wukong/im/AudioStreamController;

    return-object v0
.end method

.method static synthetic m(Ldjb;)V
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    .line 7335
    iget-object v0, p0, Ldjb;->z:Lcom/alibaba/wukong/im/AudioStreamController;

    if-eqz v0, :cond_0

    .line 7336
    iget-object v0, p0, Ldjb;->z:Lcom/alibaba/wukong/im/AudioStreamController;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/AudioStreamController;->cancel()V

    .line 7337
    const/4 v0, 0x0

    iput-object v0, p0, Ldjb;->z:Lcom/alibaba/wukong/im/AudioStreamController;

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic n(Ldjb;)J
    .locals 2
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-wide v0, p0, Ldjb;->s:J

    return-wide v0
.end method

.method static synthetic o(Ldjb;)Z
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-boolean v0, p0, Ldjb;->n:Z

    return v0
.end method

.method static synthetic p(Ldjb;)Lcug;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->o:Lcug;

    return-object v0
.end method

.method static synthetic q(Ldjb;)V
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    .line 7476
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v0, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 61
    return-void
.end method

.method static synthetic r(Ldjb;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic s(Ldjb;)I
    .locals 1
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget v0, p0, Ldjb;->x:I

    return v0
.end method

.method static synthetic t(Ldjb;)J
    .locals 2
    .param p0, "x0"    # Ldjb;

    .prologue
    .line 61
    iget-wide v0, p0, Ldjb;->y:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 1343
    iget-object v0, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    .line 1344
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    .line 1346
    iget-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Ldjb;->m:Landroid/hardware/Sensor;

    .line 2142
    iget-object v0, p0, Ldjb;->q:Landroid/widget/Button;

    new-instance v1, Ldjb$1;

    invoke-direct {v1, p0}, Ldjb$1;-><init>(Ldjb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Ldjb;->A:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->a(Lctj$a;)V

    .line 135
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 563
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_send_audio_success_play_tip"

    .line 3083
    invoke-virtual {v1, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 563
    if-nez v1, :cond_1

    .line 564
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ChatVoiceController"

    const-string/jumbo v3, "feature play send success tip sound closed"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 569
    :try_start_0
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    .line 570
    iget-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    new-instance v2, Ldjb$5;

    invoke-direct {v2, p0}, Ldjb$5;-><init>(Ldjb;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 579
    iget-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    iget-object v2, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Lctk$h;->audio_send_voice:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Ldjb;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ChatVoiceController"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "initSoundPool exception : "

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 584
    const/4 v1, 0x0

    iput-object v1, p0, Ldjb;->w:Landroid/media/SoundPool;

    goto :goto_0

    .line 588
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    iget v1, p0, Ldjb;->x:I

    invoke-direct {p0, v1}, Ldjb;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    iget-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldjb;->t:Z

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjb;->t:Z

    .line 747
    :try_start_0
    iget-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 748
    invoke-direct {p0}, Ldjb;->h()V

    .line 749
    iget-object v0, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 758
    iget-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldjb;->t:Z

    if-nez v0, :cond_0

    .line 759
    iput-boolean v1, p0, Ldjb;->t:Z

    .line 761
    :try_start_0
    iget-object v0, p0, Ldjb;->l:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldjb;->m:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjb;->u:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .line 5610
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    .line 769
    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a()V

    .line 772
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-direct {p0}, Ldjb;->h()V

    .line 6476
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v0, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 777
    invoke-virtual {p0}, Ldjb;->c()V

    .line 779
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Ldjb;->A:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->b(Lctj$a;)V

    .line 781
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->c()V

    .line 785
    :cond_0
    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setRecordListener(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;)V

    .line 789
    :cond_1
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 791
    iget-object v0, p0, Ldjb;->w:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 792
    iput-object v2, p0, Ldjb;->w:Landroid/media/SoundPool;

    .line 794
    :cond_2
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 741
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x3

    const/4 v7, 0x0

    .line 670
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v7

    .line 671
    .local v1, "distance":F
    float-to-double v8, v1

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_1

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 672
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Ldjb;->n:Z

    .line 673
    iget-object v5, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v2

    .line 674
    .local v2, "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v2, v5, :cond_2

    .line 722
    :cond_0
    :goto_1
    return-void

    .end local v2    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    move v5, v7

    .line 672
    goto :goto_0

    .line 679
    .restart local v2    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_2
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v5

    .line 4192
    iget v4, v5, Lctj;->c:I

    .line 680
    .local v4, "playStatus":I
    iget-object v5, p0, Ldjb;->r:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .line 4610
    iget-boolean v5, v5, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    .line 680
    if-nez v5, :cond_0

    if-ne v4, v6, :cond_0

    .line 685
    iget-boolean v5, p0, Ldjb;->u:Z

    if-eqz v5, :cond_3

    .line 686
    iput-boolean v7, p0, Ldjb;->u:Z

    goto :goto_1

    .line 690
    :cond_3
    iget-boolean v5, p0, Ldjb;->n:Z

    if-eqz v5, :cond_6

    .line 692
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4725
    iget-object v5, p0, Ldjb;->v:Ldjb$a;

    if-eqz v5, :cond_4

    .line 4726
    iget-object v5, p0, Ldjb;->v:Ldjb$a;

    invoke-interface {v5}, Ldjb$a;->b()V

    .line 694
    :cond_4
    iget-object v5, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v5, v6, :cond_0

    .line 697
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v5, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 698
    iget-object v5, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 5160
    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a(Z)V

    .line 700
    iget-object v5, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v5, :cond_5

    .line 701
    iget-object v5, p0, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 702
    .local v0, "audio":Landroid/media/AudioManager;
    if-eqz v0, :cond_5

    .line 703
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 704
    .local v3, "oldV":I
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    if-gt v5, v6, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_5

    .line 705
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v0, v12, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 709
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v3    # "oldV":I
    :cond_5
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v5

    invoke-virtual {v5, v7}, Lctj;->a(I)V

    goto/16 :goto_1

    .line 713
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 714
    invoke-direct {p0}, Ldjb;->h()V

    .line 715
    iget-object v5, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v5, v7, :cond_0

    .line 718
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v5, p0, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 719
    iget-object v5, p0, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V

    goto/16 :goto_1
.end method
