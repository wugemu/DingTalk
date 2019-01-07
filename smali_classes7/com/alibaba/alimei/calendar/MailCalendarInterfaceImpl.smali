.class public Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
.super Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;
.source "MailCalendarInterfaceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;",
            "Lyb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/alibaba/alimei/framework/account/AccountListener;

.field private g:Lxm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;-><init>()V

    .line 74
    new-instance v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->f:Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 97
    new-instance v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->g:Lxm;

    return-void
.end method

.method private a(IIZLjava/util/List;Ljava/util/List;ILcma;)V
    .locals 13
    .param p1, "startJulianDay"    # I
    .param p2, "days"    # I
    .param p3, "includeShared"    # Z
    .param p6, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 373
    .local p4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    .local p5, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;>;"
    :goto_0
    if-ltz p6, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p6

    if-lt v0, v1, :cond_1

    .line 374
    :cond_0
    invoke-static/range {p4 .. p4}, Lrd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 404
    :goto_1
    return-void

    .line 377
    :cond_1
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 378
    .local v10, "account":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 2254
    :cond_2
    invoke-static {v10}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v11

    .line 383
    .local v11, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v11, :cond_3

    .line 384
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 387
    :cond_3
    invoke-interface {v11, v10}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->createCalendarIfNotExist(Ljava/lang/String;)V

    .line 388
    const/4 v12, 0x0

    new-instance v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;

    move-object v2, p0

    move-object/from16 v3, p4

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;IIZLjava/util/List;ILcma;)V

    move-object v2, v11

    move v3, p1

    move v4, p2

    move v5, v12

    move/from16 v6, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->queryAllLocalEvents(IIZZLxv;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Ljava/util/List;ILcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # I
    .param p7, "x7"    # Lcma;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(IIZLjava/util/List;Ljava/util/List;ILcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    .line 10165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10169
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10174
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10175
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    .line 10176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .line 10177
    if-eqz v0, :cond_0

    .line 10181
    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method private a(Lcma;Z)Z
    .locals 4
    .param p1, "listener"    # Lcma;
    .param p2, "withTrace"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-static {}, Lxn;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "mail has not initialized"

    invoke-static {p1, v2, v3}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    if-eqz p2, :cond_0

    .line 829
    const-string/jumbo v2, "[checkPrecondition]has not initialized"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 858
    :cond_0
    :goto_0
    return v1

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 835
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "mail_calendar switch off"

    invoke-static {p1, v2, v3}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    if-eqz p2, :cond_0

    .line 837
    const-string/jumbo v2, "[checkPrecondition]mail_calendar switch off"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 843
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "mail_calendar is not enable"

    invoke-static {p1, v2, v3}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    if-eqz p2, :cond_0

    .line 845
    const-string/jumbo v2, "[checkPrecondition]mail_calendar is not enable"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_3
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    invoke-virtual {v2}, Lacr;->j()Ljava/util/List;

    move-result-object v0

    .line 850
    .local v0, "loginAccountNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 852
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "have no login loginAccountAddress"

    invoke-static {p1, v2, v3}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    if-eqz p2, :cond_0

    .line 854
    const-string/jumbo v2, "[checkPrecondition]have no loginAccountAddress"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 858
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 66
    .line 10501
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 10511
    :goto_0
    return v0

    .line 10505
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 10506
    if-eqz v0, :cond_2

    .line 10510
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCalendarFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10511
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    .line 10228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10232
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10237
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10238
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    .line 10239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .line 10240
    if-eqz v0, :cond_0

    .line 10244
    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    .line 11213
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 11214
    :cond_0
    return-void

    .line 11217
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    .line 11218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .line 11219
    if-eqz v0, :cond_2

    .line 11223
    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    invoke-super {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    .line 126
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->f:Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 1273
    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    const-class v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->g:Lxm;

    .line 2094
    invoke-static {v0, v1}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 128
    return-void

    .line 1277
    :cond_1
    iget-object v2, v0, Lxr;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    iget-object v0, v0, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(IIZLcma;)V
    .locals 8
    .param p1, "startJulianDay"    # I
    .param p2, "days"    # I
    .param p3, "includeShared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 340
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcma;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->j()Ljava/util/List;

    move-result-object v5

    .line 345
    .local v5, "loginMailAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "has no login mail account"

    invoke-static {p4, v0, v1}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "[queryAllLocalEvents]has no login mail account"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Lcma;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lacg;->b(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "eventInstanceObject"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 597
    .line 5071
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5072
    :cond_0
    const-string/jumbo v0, "[Calendar Nav]event instance object is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 5073
    :goto_0
    return-void

    .line 5075
    :cond_1
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail_calendar/mail_event_detail"

    new-instance v2, Lrj$2;

    invoke-direct {v2, p2}, Lrj$2;-><init>(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;JJJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J

    .prologue
    .line 602
    invoke-static/range {p1 .. p7}, Lrj;->a(Landroid/content/Context;JJJ)V

    .line 603
    return-void
.end method

.method public final a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;>;>;"
    const/4 v5, 0x0

    .line 262
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "agentMail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {p1, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 308
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v3

    if-nez v3, :cond_1

    .line 272
    invoke-interface {p1, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 276
    :cond_1
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v3

    invoke-interface {v3, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    invoke-interface {p1, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_2
    new-instance v2, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcma;Ljava/lang/String;)V

    .line 299
    .local v2, "listener2":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;>;>;"
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    .line 300
    .local v1, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v1, :cond_3

    .line 301
    invoke-interface {v1, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryCalendarFolders(Lxv;)V

    goto :goto_0

    .line 303
    :cond_3
    sget-object v3, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v4, "queryCalendars fail for folderApi is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {p1, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 141
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
    .locals 5
    .param p1, "calendarSyncListener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 561
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V

    .line 576
    .local v0, "eventListener":Lyb;
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "basic_SyncCalendar"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    sget-object v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "startSyncFolder fail for accountName is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-static {p1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 488
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v0, :cond_1

    .line 489
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->startSyncFolder(Z)V

    goto :goto_0

    .line 491
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "startSyncFolder fail for folderApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;Lcma;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "startJulianDay"    # I
    .param p3, "nums"    # I
    .param p4, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 459
    .line 4254
    .local p5, "sharedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;>;"
    invoke-static {p1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 460
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-eqz v0, :cond_0

    .line 461
    new-instance v7, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$11;

    invoke-direct {v7, p0, p7}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$11;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcma;)V

    .line 477
    .local v7, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->queryAllLocalEvents(IIZZLjava/util/List;Ljava/util/List;Lxv;)V

    .line 479
    .end local v7    # "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJJLcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;Lcom/alibaba/wukong/Callback;)V
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "deleteMode"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p9, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    const-string/jumbo v2, "[deleteNonRepeatEvent]accountName is empty"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 787
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxo$i;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-static {v0, v2, v4}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 9254
    :cond_0
    invoke-static {p1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v3

    .line 791
    .local v3, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v3, :cond_1

    .line 792
    const-string/jumbo v2, "[deleteNonRepeatEvent]calendar api is null"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 793
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxo$i;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-static {v0, v2, v4}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_1
    sget-object v2, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_SELECTED:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_2

    .line 798
    const/4 v10, 0x0

    .line 805
    .local v10, "deleteWitch":I
    :goto_1
    new-instance v11, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;

    move-object/from16 v0, p9

    invoke-direct {v11, p0, v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$5;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->deleteEvent(JJJILxv;)V

    goto :goto_0

    .line 799
    .end local v10    # "deleteWitch":I
    :cond_2
    sget-object v2, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_FOLLOWING:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 800
    const/4 v10, 0x1

    .restart local v10    # "deleteWitch":I
    goto :goto_1

    .line 802
    .end local v10    # "deleteWitch":I
    :cond_3
    const/4 v10, 0x2

    .restart local v10    # "deleteWitch":I
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string/jumbo v1, "[deleteNonRepeatEvent]accountName is empty"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 752
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :goto_0
    return-void

    .line 8254
    :cond_0
    invoke-static {p1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 756
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v0, :cond_1

    .line 757
    const-string/jumbo v1, "[deleteNonRepeatEvent]calendar api is null"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 758
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$4;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$4;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, p2, p3, v1, v2}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->deleteEvent(JZLxv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "fullForceSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "start sync calendar fail accountName is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 3254
    :cond_0
    invoke-static {p1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 449
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-eqz v0, :cond_1

    .line 450
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->startSyncCalendar(Z)V

    goto :goto_0

    .line 452
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "start sync calendar fail for calendarApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 525
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcma;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-virtual {v1}, Lacr;->j()Ljava/util/List;

    move-result-object v0

    .line 529
    .local v0, "loginMailAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    const-string/jumbo v1, "[startSyncCalendar] has no login mail account"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 312
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcma;)V

    .line 322
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 323
    .local v1, "thread":Laie;
    const-string/jumbo v2, "isAccountLogin"

    invoke-interface {v1, v2, v0}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public final declared-synchronized b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
    .locals 2
    .param p1, "calendarSyncListener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb;

    .line 589
    .local v0, "eventListener":Lyb;
    if-eqz v0, :cond_1

    .line 590
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyb;)V

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V

    .line 203
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 610
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_calendar_show_mail"

    .line 6083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 610
    return v0
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 618
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "calendar_function"

    const-string/jumbo v2, "c_setting_alimei"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 627
    const-string/jumbo v0, "[mailCalendar]enable mail calendar"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "calendar_function"

    const-string/jumbo v2, "c_setting_alimei"

    const-string/jumbo v3, "1"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 634
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->i()V

    .line 635
    return-void
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 651
    const-string/jumbo v0, "[mailCalendar]disable mail calendar"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "calendar_function"

    const-string/jumbo v2, "c_setting_alimei"

    const-string/jumbo v3, "0"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->j()V

    .line 659
    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 663
    invoke-super {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->g()V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->e:Z

    .line 665
    const-string/jumbo v0, "[mailCalendar]onEntryForeground"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;-><init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 678
    invoke-super {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->h()V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->e:Z

    .line 680
    const-string/jumbo v0, "[mailCalendar]onEntryBackground"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->j()V

    .line 682
    return-void
.end method

.method public final i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 689
    invoke-direct {p0, v7, v2}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcma;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "calendar_function"

    const-string/jumbo v6, "c_setting_alimei_notice"

    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 695
    .local v1, "mailNoticeToggle":Z
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[startScheduleAlarm]mailNoticeToggle:"

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 696
    if-eqz v1, :cond_0

    .line 699
    const-string/jumbo v2, "[mailCalendar]start schedule alarm"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 6254
    invoke-static {v7}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 701
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v0, :cond_3

    .line 702
    const-string/jumbo v2, "[startScheduleAlarm]calendar api is null"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    .end local v1    # "mailNoticeToggle":Z
    :cond_2
    move v1, v3

    .line 692
    goto :goto_1

    .line 705
    .restart local v0    # "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    .restart local v1    # "mailNoticeToggle":Z
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->scheduleAlarm()V

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    return-void
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 713
    const-string/jumbo v1, "[mailCalendar]stop schedule alarm"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcma;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 7254
    :cond_0
    invoke-static {v2}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 718
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v0, :cond_1

    .line 719
    const-string/jumbo v1, "[stopScheduleAlarm]calendar api is null"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->cancelAlarm()V

    goto :goto_0
.end method
