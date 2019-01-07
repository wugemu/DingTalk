.class public final Lapw$4;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Lasl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lapw;


# direct methods
.method public constructor <init>(Lapw;JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lapw;

    .prologue
    .line 1034
    iput-object p1, p0, Lapw$4;->c:Lapw;

    iput-wide p2, p0, Lapw$4;->a:J

    iput-object p4, p0, Lapw$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1034
    check-cast p1, Ljava/util/List;

    .line 2037
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarDataCenter]isShowUserProfileCalendarShare getFolderObjectListByOwnerId="

    aput-object v0, v1, v6

    iget-wide v2, p0, Lapw$4;->a:J

    .line 2038
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string/jumbo v0, ", ret.size="

    aput-object v0, v1, v8

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v1, v2

    .line 2037
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2040
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2041
    iget-object v0, p0, Lapw$4;->c:Lapw;

    .line 2072
    iget-object v0, v0, Lapw;->c:Latn;

    .line 2041
    iget-wide v2, p0, Lapw$4;->a:J

    new-instance v1, Lapw$4$1;

    invoke-direct {v1, p0}, Lapw$4$1;-><init>(Lapw$4;)V

    .line 2619
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 2621
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    const-string/jumbo v0, "showCalendarEntry "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "targetUid <= 0 "

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :goto_1
    return-void

    .line 2038
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2627
    :cond_1
    new-instance v4, Latn$25;

    invoke-direct {v4, v0, v1}, Latn$25;-><init>(Latn;Lcma;)V

    .line 2643
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDataSourceRemote] showCalendarEntry targetUid:"

    aput-object v5, v1, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2644
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Latn$26;

    invoke-direct {v3, v0, v4}, Latn$26;-><init>(Latn;Lcmi;)V

    .line 3155
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3156
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->showCalendarEntry(Ljava/lang/Long;Liyv;)V

    goto :goto_1

    .line 2057
    :cond_2
    iget-object v0, p0, Lapw$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 2059
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Larl;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method
