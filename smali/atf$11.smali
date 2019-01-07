.class final Latf$11;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method constructor <init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 407
    iput-object p1, p0, Latf$11;->c:Latf;

    iput-object p2, p0, Latf$11;->a:Ljava/util/List;

    iput-object p3, p0, Latf$11;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 410
    iget-object v0, p0, Latf$11;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v2

    iget-object v3, p0, Latf$11;->a:Ljava/util/List;

    iget-object v4, p0, Latf$11;->b:Lcom/alibaba/wukong/Callback;

    .line 1824
    invoke-static {}, Lavq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    invoke-static {v4, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1831
    :goto_0
    return-void

    .line 1829
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1830
    :cond_1
    invoke-static {v4, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 1834
    :cond_2
    new-instance v5, Lfp;

    invoke-direct {v5}, Lfp;-><init>()V

    .line 1835
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1837
    if-eqz v0, :cond_3

    .line 1840
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 1841
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1844
    :cond_4
    invoke-virtual {v2, v6}, Lapw;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1845
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1846
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v8, "[verifySystemEvent]unVerified events count:"

    aput-object v8, v0, v1

    const/4 v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1847
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1848
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1850
    if-eqz v0, :cond_5

    .line 1854
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2096
    const/4 v1, 0x0

    invoke-virtual {v5, v12, v13, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1854
    check-cast v1, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1855
    if-eqz v1, :cond_5

    .line 1859
    new-instance v11, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    invoke-direct {v11}, Lcom/alibaba/android/calendar/db/entry/EntryVerification;-><init>()V

    .line 1860
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mId:J

    .line 1861
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mIsValid:Z

    .line 1862
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    new-instance v0, Laqz;

    invoke-direct {v0}, Laqz;-><init>()V

    .line 1865
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Laqz;->c:Ljava/lang/String;

    .line 1866
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Laqz;->a:Ljava/lang/String;

    .line 1867
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laqz;->b:Ljava/lang/String;

    .line 1868
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1872
    :cond_6
    iget-object v0, v2, Lapw;->b:Lauh;

    invoke-interface {v0, v8}, Lauh;->b(Ljava/util/List;)I

    move-result v0

    .line 1873
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1874
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "[CalendarDataCenter]save failed."

    aput-object v5, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1878
    :cond_7
    iget-object v0, v2, Lapw;->c:Latn;

    new-instance v1, Lapw$3;

    invoke-direct {v1, v2, v7}, Lapw$3;-><init>(Lapw;Ljava/util/List;)V

    .line 2260
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2262
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v7, Laow$f;->unknown_error:I

    invoke-virtual {v5, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string/jumbo v0, "check calendar failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v5, "scm == null || scm.isEmpty"

    invoke-static {v0, v1, v5}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_8
    :goto_3
    invoke-virtual {v2, v6}, Lapw;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1897
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1898
    if-eqz v0, :cond_9

    .line 1899
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1901
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1902
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1903
    if-eqz v0, :cond_a

    .line 1906
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1907
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2268
    :cond_b
    new-instance v5, Latn$3;

    invoke-direct {v5, v0, v1}, Latn$3;-><init>(Latn;Lcma;)V

    .line 2284
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[CalendarDataSourceRemote] checkCalendar."

    aput-object v8, v1, v7

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2285
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    new-instance v7, Latn$4;

    invoke-direct {v7, v0, v5}, Latn$4;-><init>(Latn;Lcmi;)V

    .line 3079
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3080
    iget-object v0, v1, Latp;->b:Lcom/alibaba/android/calendar/data/idl/service/SafeIService;

    invoke-interface {v0, v9, v7}, Lcom/alibaba/android/calendar/data/idl/service/SafeIService;->checkCalendar(Ljava/util/List;Liyv;)V

    goto :goto_3

    .line 1910
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
