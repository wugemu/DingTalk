.class public Leuk;
.super Leul;
.source "ApmtConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leuk$c;,
        Leuk$a;,
        Leuk$d;,
        Leuk$e;,
        Leuk$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Leuk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leuk;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Leuk;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Ljava/lang/String;
    .locals 10
    .param p1, "record"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 406
    if-nez p1, :cond_0

    .line 421
    :goto_0
    return-object v2

    .line 409
    :cond_0
    const/4 v1, 0x0

    .line 410
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    .line 413
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->h:Ljava/lang/String;

    .line 415
    .local v0, "nickName":Ljava/lang/String;
    iget-wide v4, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 416
    iget-object v3, p0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_2
    iget-object v3, p0, Leuk;->b:Landroid/app/Activity;

    sget v4, Leuj$l;->and_conference_who_launch_conf:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v8

    .line 30397
    if-nez p1, :cond_4

    .line 421
    :goto_1
    aput-object v2, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 30400
    :cond_4
    iget v2, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    .line 30401
    const/16 v4, 0x64

    if-lt v2, v4, :cond_5

    const-string/jumbo v2, "99+"

    .line 30402
    :goto_2
    iget-object v4, p0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$l;->and_conf_txt_conference_members:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 30401
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method static synthetic a(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 4
    .param p0, "x0"    # Leuk;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 46
    .line 31195
    if-nez p1, :cond_1

    .line 31211
    :cond_0
    :goto_0
    return-void

    .line 31198
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videocall_joinmeeting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 31200
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31201
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 31202
    iget-object v0, p0, Leuk;->b:Landroid/app/Activity;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 31210
    :cond_2
    if-eqz p1, :cond_0

    .line 31213
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 31214
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;-><init>()V

    .line 31215
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;->conferenceId:Ljava/lang/String;

    .line 31216
    new-instance v0, Leuk$2;

    invoke-direct {v0, p0}, Leuk$2;-><init>(Leuk;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Leuk;->b:Landroid/app/Activity;

    .line 31217
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 31216
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Leyo$d;)V

    goto :goto_0
.end method

.method static synthetic b(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 6
    .param p0, "x0"    # Leuk;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 46
    .line 31265
    if-nez p1, :cond_1

    .line 32224
    :cond_0
    :goto_0
    return-void

    .line 31268
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "meeting_join_meeting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 31273
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Leuk;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31277
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31278
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->e()J

    move-result-wide v0

    .line 31279
    iget-object v2, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31315
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Leuk;->c:Ljava/lang/String;

    const-string/jumbo v4, "Goto telconf running activity"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31316
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 31317
    const-string/jumbo v3, "isFromService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31318
    const-string/jumbo v3, "conf_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31319
    invoke-virtual {p0}, Leuk;->b()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 31285
    :goto_1
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Leuk;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Running telconf "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", click conf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31283
    :cond_2
    iget-object v2, p0, Leuk;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->dt_conference_in_other_conference:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 31287
    :cond_3
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;-><init>()V

    .line 31288
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;->appointId:Ljava/lang/String;

    .line 31289
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Leuk;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Join telconf "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;->appointId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31290
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    new-instance v0, Leuk$3;

    invoke-direct {v0, p0}, Leuk$3;-><init>(Leuk;)V

    const-class v1, Leyo$d;

    .line 31310
    invoke-virtual {p0}, Leuk;->b()Landroid/app/Activity;

    move-result-object v4

    .line 31291
    invoke-static {v0, v1, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 32219
    if-eqz v2, :cond_0

    .line 32222
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 32223
    if-eqz v1, :cond_0

    .line 32226
    new-instance v4, Leye$5;

    invoke-direct {v4, v3, v0}, Leye$5;-><init>(Leye;Leyo$d;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->joinAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;Liyv;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    const/4 v1, -0x1

    .line 65
    .local v1, "type":I
    iget-object v2, p0, Leuk;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Leuk;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 66
    iget-object v2, p0, Leuk;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 67
    .local v0, "item":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v1

    .line 71
    .end local v0    # "item":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "headerHolder":Leuk$b;
    const/4 v9, 0x0

    .line 83
    .local v9, "runningHolder":Leuk$e;
    const/4 v7, 0x0

    .line 84
    .local v7, "notStartHolder":Leuk$d;
    const/4 v2, 0x0

    .line 85
    .local v2, "endedHolder":Leuk$a;
    const/4 v6, 0x0

    .line 86
    .local v6, "moreHolder":Leuk$c;
    invoke-virtual/range {p0 .. p1}, Leuk;->getItemViewType(I)I

    move-result v5

    .line 87
    .local v5, "itemViewType":I
    if-nez p2, :cond_7

    .line 88
    move-object/from16 v0, p0

    iget-object v10, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 89
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_2

    .line 90
    sget v10, Leuj$j;->teleconf_business_conf_header:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v3, Leuk$b;

    .end local v3    # "headerHolder":Leuk$b;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Leuk$b;-><init>(Leuk;B)V

    .line 92
    .restart local v3    # "headerHolder":Leuk$b;
    sget v10, Leuj$i;->header_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1432
    iput-object v10, v3, Leuk$b;->a:Landroid/widget/TextView;

    .line 93
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Leuk;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 138
    .local v8, "record":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    if-eqz v8, :cond_1

    .line 139
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_e

    .line 8156
    if-eqz v3, :cond_1

    if-nez v8, :cond_d

    .line 152
    :cond_1
    :goto_1
    return-object p2

    .line 94
    .end local v8    # "record":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_3

    .line 95
    sget v10, Leuj$j;->layout_conf_video_record_running_item:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v9, Leuk$e;

    .end local v9    # "runningHolder":Leuk$e;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Leuk$e;-><init>(Leuk;B)V

    .line 97
    .restart local v9    # "runningHolder":Leuk$e;
    sget v10, Leuj$i;->tv_caller:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1436
    iput-object v10, v9, Leuk$e;->a:Landroid/widget/TextView;

    .line 98
    sget v10, Leuj$i;->tv_duration:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2436
    iput-object v10, v9, Leuk$e;->b:Landroid/widget/TextView;

    .line 99
    sget v10, Leuj$i;->tv_enter:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3436
    iput-object v10, v9, Leuk$e;->c:Landroid/widget/TextView;

    .line 100
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_3
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_4

    .line 102
    sget v10, Leuj$j;->layout_conf_video_record_order_item:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v7, Leuk$d;

    .end local v7    # "notStartHolder":Leuk$d;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Leuk$d;-><init>(Leuk;B)V

    .line 104
    .restart local v7    # "notStartHolder":Leuk$d;
    sget v10, Leuj$i;->tv_caller:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3442
    iput-object v10, v7, Leuk$d;->a:Landroid/widget/TextView;

    .line 105
    sget v10, Leuj$i;->tv_callees:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 4442
    iput-object v10, v7, Leuk$d;->b:Landroid/widget/TextView;

    .line 106
    sget v10, Leuj$i;->tv_countdown:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 5442
    iput-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 107
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    :cond_4
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-eq v5, v10, :cond_5

    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .line 109
    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_6

    .line 110
    :cond_5
    sget v10, Leuj$j;->layout_conf_video_record_item:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v2, Leuk$a;

    .end local v2    # "endedHolder":Leuk$a;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Leuk$a;-><init>(Leuk;B)V

    .line 112
    .restart local v2    # "endedHolder":Leuk$a;
    sget v10, Leuj$i;->tv_caller:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 5448
    iput-object v10, v2, Leuk$a;->a:Landroid/widget/TextView;

    .line 113
    sget v10, Leuj$i;->tv_callees:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 6448
    iput-object v10, v2, Leuk$a;->b:Landroid/widget/TextView;

    .line 114
    sget v10, Leuj$i;->tv_video_conf_begin_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 7448
    iput-object v10, v2, Leuk$a;->c:Landroid/widget/TextView;

    .line 115
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    :cond_6
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_0

    .line 117
    sget v10, Leuj$j;->teleconf_business_conf_more:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance v6, Leuk$c;

    .end local v6    # "moreHolder":Leuk$c;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v10}, Leuk$c;-><init>(Leuk;B)V

    .line 119
    .restart local v6    # "moreHolder":Leuk$c;
    sget v10, Leuj$i;->more_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v6, Leuk$c;->a:Landroid/widget/TextView;

    .line 120
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_7
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_8

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "headerHolder":Leuk$b;
    check-cast v3, Leuk$b;

    .restart local v3    # "headerHolder":Leuk$b;
    goto/16 :goto_0

    .line 125
    :cond_8
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_9

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "runningHolder":Leuk$e;
    check-cast v9, Leuk$e;

    .restart local v9    # "runningHolder":Leuk$e;
    goto/16 :goto_0

    .line 127
    :cond_9
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_a

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "notStartHolder":Leuk$d;
    check-cast v7, Leuk$d;

    .restart local v7    # "notStartHolder":Leuk$d;
    goto/16 :goto_0

    .line 129
    :cond_a
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-eq v5, v10, :cond_b

    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .line 130
    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_c

    .line 131
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "endedHolder":Leuk$a;
    check-cast v2, Leuk$a;

    .restart local v2    # "endedHolder":Leuk$a;
    goto/16 :goto_0

    .line 132
    :cond_c
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_0

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "moreHolder":Leuk$c;
    check-cast v6, Leuk$c;

    .restart local v6    # "moreHolder":Leuk$c;
    goto/16 :goto_0

    .line 8432
    .restart local v8    # "record":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :cond_d
    iget-object v10, v3, Leuk$b;->a:Landroid/widget/TextView;

    .line 8159
    iget-object v11, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 141
    :cond_e
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_12

    .line 9163
    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 9436
    iget-object v10, v9, Leuk$e;->a:Landroid/widget/TextView;

    .line 9166
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Leuk;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9167
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v10, v11, :cond_f

    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_11

    .line 10436
    :cond_f
    iget-object v10, v9, Leuk$e;->b:Landroid/widget/TextView;

    .line 9169
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    sget v12, Leuj$l;->conf_txt_conference_time_min:I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-wide v14, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12436
    :cond_10
    :goto_2
    iget-object v10, v9, Leuk$e;->c:Landroid/widget/TextView;

    .line 9181
    new-instance v11, Leuk$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Leuk$1;-><init>(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 9170
    :cond_11
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_10

    .line 9171
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->q:J

    .line 9172
    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    .line 9174
    iget-wide v12, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    .line 9175
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    .line 9176
    invoke-virtual {v14, v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 9177
    const-string/jumbo v10, "/"

    invoke-virtual {v14, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 9178
    invoke-virtual {v14, v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 11436
    iget-object v10, v9, Leuk$e;->b:Landroid/widget/TextView;

    .line 9179
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    sget v12, Leuj$l;->conf_txt_conference_time_min:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 143
    :cond_12
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_18

    .line 13323
    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 13442
    iget-object v10, v7, Leuk$d;->a:Landroid/widget/TextView;

    .line 13326
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Leuk;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14442
    iget-object v10, v7, Leuk$d;->b:Landroid/widget/TextView;

    .line 13327
    iget-object v11, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->i:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13329
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v10, v11, :cond_13

    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_15

    .line 13331
    :cond_13
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->r:J

    const-wide/16 v12, 0xe10

    cmp-long v10, v10, v12

    if-ltz v10, :cond_14

    .line 15442
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13332
    iget-wide v12, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 16425
    invoke-static {v12, v13}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v11

    .line 13332
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16442
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13333
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->bg_setting_itemTextColor:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 13335
    :cond_14
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->r:J

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    long-to-int v10, v10

    .line 13336
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    sget v12, Leuj$l;->conf_txt_conference_progress_time_min:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 17442
    iget-object v11, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13337
    move-object/from16 v0, p0

    iget-object v12, v0, Leuk;->b:Landroid/app/Activity;

    sget v13, Leuj$l;->and_conference_countdown:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18442
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13338
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->conf_video_countdown_order_item:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 13340
    :cond_15
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_1

    .line 13341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 13342
    iget-wide v12, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long v10, v12, v10

    .line 13344
    const-wide/32 v12, 0x36ee80

    cmp-long v12, v10, v12

    if-gez v12, :cond_16

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_17

    .line 19442
    :cond_16
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13345
    iget-wide v12, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20442
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13346
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->bg_setting_itemTextColor:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 13348
    :cond_17
    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    long-to-int v10, v10

    .line 13349
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    sget v12, Leuj$l;->conf_txt_conference_progress_time_min:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 21442
    iget-object v11, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13350
    move-object/from16 v0, p0

    iget-object v12, v0, Leuk;->b:Landroid/app/Activity;

    sget v13, Leuj$l;->and_conference_countdown:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22442
    iget-object v10, v7, Leuk$d;->c:Landroid/widget/TextView;

    .line 13351
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->conf_video_countdown_order_item:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 145
    :cond_18
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-eq v5, v10, :cond_19

    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .line 146
    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_20

    .line 23357
    :cond_19
    if-eqz v2, :cond_1

    if-eqz v8, :cond_1

    .line 23448
    iget-object v10, v2, Leuk$a;->a:Landroid/widget/TextView;

    .line 23360
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Leuk;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24448
    iget-object v10, v2, Leuk$a;->b:Landroid/widget/TextView;

    .line 23361
    iget-object v11, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->i:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23362
    iget v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->k:I

    if-nez v10, :cond_1b

    .line 25448
    iget-object v10, v2, Leuk$a;->a:Landroid/widget/TextView;

    .line 23363
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->C3:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23367
    :goto_3
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v10, v11, :cond_1a

    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_1d

    .line 23369
    :cond_1a
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 27429
    invoke-static {v10, v11}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v10

    .line 23370
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 23371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$l;->calendar_today:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 27448
    iget-object v11, v2, Leuk$a;->c:Landroid/widget/TextView;

    .line 23372
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 26448
    :cond_1b
    iget-object v10, v2, Leuk$a;->a:Landroid/widget/TextView;

    .line 23365
    move-object/from16 v0, p0

    iget-object v11, v0, Leuk;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->C6_1:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 23374
    :cond_1c
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 28425
    invoke-static {v10, v11}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v10

    .line 28448
    iget-object v11, v2, Leuk$a;->c:Landroid/widget/TextView;

    .line 23375
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 23377
    :cond_1d
    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v11, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v10, v11, :cond_1

    .line 23378
    const-string/jumbo v10, ""

    .line 23379
    iget-object v11, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v12, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v11, v12, :cond_1f

    .line 23380
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Leyr;->d(J)Ljava/lang/String;

    move-result-object v10

    .line 29448
    :cond_1e
    :goto_4
    iget-object v11, v2, Leuk$a;->c:Landroid/widget/TextView;

    .line 23384
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 23381
    :cond_1f
    iget-object v11, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v12, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v11, v12, :cond_1e

    .line 23382
    iget-wide v10, v8, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->o:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Leyr;->d(J)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 148
    :cond_20
    sget-object v10, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_1

    .line 30389
    if-eqz v6, :cond_1

    if-eqz v8, :cond_1

    .line 30392
    move-object/from16 v0, p0

    iget-object v10, v0, Leuk;->b:Landroid/app/Activity;

    sget v11, Leuj$l;->conf_txt_conference_load_more:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, ""

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 30393
    iget-object v11, v6, Leuk$c;->a:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->values()[Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    iget-object v1, p0, Leuk;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 59
    .local v0, "object":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
