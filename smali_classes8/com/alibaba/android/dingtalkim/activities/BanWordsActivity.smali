.class public Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$i;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$a;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;,
        Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:I

.field private d:Lcom/alibaba/wukong/im/Conversation;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ListView;

.field private i:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcjo$a;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":white"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":black"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 61
    sget v0, Lctk$i;->app_name:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a:I

    .line 676
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->m:Landroid/view/View$OnClickListener;

    .line 1078
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 4070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4071
    const-string/jumbo v2, "group_ban_white_remove"

    .line 4072
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4073
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 4074
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 60
    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;I)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 60
    .line 4055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4057
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4058
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 4059
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4060
    const-string/jumbo v0, "group_ban_white_more_add"

    move-object v1, v0

    .line 4064
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 4065
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 60
    return-object v1

    .line 4062
    :cond_0
    const-string/jumbo v0, "group_ban_white_add"

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;IJ)Lcom/alibaba/wukong/im/Message;
    .locals 8
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    const-wide/32 v6, 0x5265c00

    const-wide/32 v4, 0x36ee80

    const/4 v3, 0x3

    .line 60
    .line 5012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5014
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5015
    if-le p1, v3, :cond_0

    .line 5016
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5018
    :cond_0
    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    .line 5019
    const-wide/32 v0, 0xea60

    div-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5020
    if-le p1, v3, :cond_1

    .line 5021
    const-string/jumbo v0, "group_ban_black_more_add_min"

    move-object v1, v0

    .line 5040
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 5041
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 60
    return-object v1

    .line 5023
    :cond_1
    const-string/jumbo v0, "group_ban_black_add_min"

    move-object v1, v0

    goto :goto_0

    .line 5025
    :cond_2
    cmp-long v0, p2, v6

    if-gez v0, :cond_4

    .line 5026
    div-long v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5027
    if-le p1, v3, :cond_3

    .line 5028
    const-string/jumbo v0, "group_ban_black_more_add_hour"

    move-object v1, v0

    goto :goto_0

    .line 5030
    :cond_3
    const-string/jumbo v0, "group_ban_black_add_hour"

    move-object v1, v0

    goto :goto_0

    .line 5033
    :cond_4
    div-long v0, p2, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5034
    if-le p1, v3, :cond_5

    .line 5035
    const-string/jumbo v0, "group_ban_black_more_add_day"

    move-object v1, v0

    goto :goto_0

    .line 5037
    :cond_5
    const-string/jumbo v0, "group_ban_black_add_day"

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->showLoadingDialog()V

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->listUserBanModel(Lcom/alibaba/wukong/Callback;)V

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Landroid/view/View;J)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # J

    .prologue
    .line 60
    .line 5670
    if-eqz p1, :cond_0

    .line 5671
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5672
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Z)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 60
    .line 2278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->i:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

    if-eqz v0, :cond_5

    .line 2279
    if-eqz p1, :cond_4

    .line 2280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    .line 2281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    .line 2282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    sget v2, Lctk$i;->dt_group_setting_all_silent_header_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserBanObject;

    .line 2285
    if-eqz v0, :cond_0

    .line 2286
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2290
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isBanWords()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserBanObject;

    .line 2295
    if-eqz v0, :cond_2

    .line 2296
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2300
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2301
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 2302
    invoke-static {v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lctk$i;->dt_group_setting_all_silent_tips_v2:I

    .line 2301
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->i:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;->notifyDataSetChanged()V

    .line 60
    :cond_5
    return-void

    .line 2302
    :cond_6
    sget v0, Lctk$i;->dt_group_setting_all_silent_tips:I

    goto :goto_2

    .line 2304
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 2305
    invoke-static {v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lctk$i;->dt_group_setting_all_silent_tips_not_enable_v2:I

    .line 2304
    :goto_4
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2305
    :cond_8
    sget v0, Lctk$i;->dt_group_setting_all_silent_tips_not_enable:I

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # [J

    .prologue
    .line 60
    .line 2364
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a([JZ)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[JJ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # [J
    .param p2, "x2"    # J

    .prologue
    .line 60
    .line 4474
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a([JJZ)V

    .line 60
    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;[JLcom/alibaba/wukong/Callback;)V
    .locals 17
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "users"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "[J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_2

    .line 970
    :cond_0
    if-eqz p2, :cond_1

    .line 971
    const-string/jumbo v3, ""

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 975
    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    .line 976
    .local v7, "conversationId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 977
    .local v8, "orgId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    .local v5, "nameString":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v10, "usersList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v2, 0x0

    .line 980
    .local v2, "i":I
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-wide v14, p1, v3

    .line 981
    .local v14, "u":J
    new-instance v16, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 982
    .local v16, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 983
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    add-int/lit8 v2, v2, 0x1

    .line 985
    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    .line 980
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 989
    .end local v14    # "u":J
    .end local v16    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->SYSTEM_MSG:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v12

    .line 990
    .local v12, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v3

    new-instance v13, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$4;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v5}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$4;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/StringBuilder;)V

    .line 1536
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method private a([JJZ)V
    .locals 8
    .param p1, "users"    # [J
    .param p2, "banWordsTime"    # J
    .param p4, "add"    # Z

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->showLoadingDialog()V

    .line 484
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$12;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[JZJ)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v6, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/wukong/im/Conversation;[JLcom/alibaba/wukong/Callback;)V

    .line 530
    :cond_0
    return-void
.end method

.method private a([JZ)V
    .locals 3
    .param p1, "users"    # [J
    .param p2, "add"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->showLoadingDialog()V

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[JZ)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/wukong/im/Conversation;[JLcom/alibaba/wukong/Callback;)V

    .line 419
    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 5046
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5047
    const-string/jumbo v2, "group_ban_black_remove"

    .line 5048
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5049
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 5050
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 60
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    .line 6533
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 6534
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->showLoadingDialog()V

    .line 6535
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanOpen:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 6536
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, p1, v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateBanWords(ZLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 60
    :cond_0
    return-void

    .line 6535
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanClose:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # [J

    .prologue
    .line 60
    .line 2459
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2460
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->values()[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 2461
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2462
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->values()[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->textId:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2464
    :cond_0
    sget v0, Lctk$i;->dt_group_setting_member_silent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2470
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 60
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    .line 3224
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->showLoadingDialog()V

    .line 3225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 60
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # [J

    .prologue
    .line 60
    .line 6368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a([JZ)V

    .line 60
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
    .param p1, "x1"    # [J

    .prologue
    .line 60
    .line 6478
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a([JJZ)V

    .line 60
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    .line 3352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3355
    if-eqz v0, :cond_0

    .line 3356
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    return-object v1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    .line 7314
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 60
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 60
    .line 7422
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lctk$g;->activity_ban_words:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->setContentView(I)V

    .line 1102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1103
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_3

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->finish()V

    move v0, v1

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 1113
    sget v0, Lctk$f;->list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->h:Landroid/widget/ListView;

    .line 1114
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->i:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->i:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    .line 1135
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->l:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 1138
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->l:Landroid/content/BroadcastReceiver;

    .line 1167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1168
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a()V

    .line 99
    :cond_2
    return-void

    .line 1108
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 269
    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    if-eqz v0, :cond_0

    .line 1175
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->k:Lcjo$a;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1179
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 270
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 271
    return-void
.end method
