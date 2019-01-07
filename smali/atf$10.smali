.class public final Latf$10;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 398
    iput-object p1, p0, Latf$10;->c:Latf;

    iput-object p2, p0, Latf$10;->a:Ljava/util/List;

    iput-object p3, p0, Latf$10;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Latf$10;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v1

    iget-object v0, p0, Latf$10;->a:Ljava/util/List;

    iget-object v2, p0, Latf$10;->b:Lcom/alibaba/wukong/Callback;

    .line 1786
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1787
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "verification result is null"

    invoke-static {v2, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-void

    .line 1791
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lass;

    .line 1793
    if-eqz v0, :cond_2

    iget-object v5, v0, Lass;->a:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lass;->a:Ljava/util/List;

    .line 1795
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1799
    iget-object v0, v0, Lass;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1800
    if-eqz v0, :cond_3

    .line 1804
    new-instance v6, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    invoke-direct {v6}, Lcom/alibaba/android/calendar/db/entry/EntryVerification;-><init>()V

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1805
    iput-wide v8, v6, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mId:J

    .line 1806
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->mIsValid:Z

    .line 1808
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1812
    :cond_4
    iget-object v0, v1, Lapw;->b:Lauh;

    invoke-interface {v0, v3}, Lauh;->b(Ljava/util/List;)I

    move-result v0

    .line 1814
    invoke-static {}, Lavh;->b()V

    .line 1816
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1817
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 1819
    :cond_5
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "[CalendarDataCenter] save failed."

    invoke-static {v2, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
