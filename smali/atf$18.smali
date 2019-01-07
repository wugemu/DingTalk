.class public final Latf$18;
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
.field final synthetic a:Lash;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Lash;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 470
    iput-object p1, p0, Latf$18;->c:Latf;

    iput-object p2, p0, Latf$18;->a:Lash;

    iput-object p3, p0, Latf$18;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 473
    iget-object v0, p0, Latf$18;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-object v0, p0, Latf$18;->a:Lash;

    iget-object v1, p0, Latf$18;->b:Lcom/alibaba/wukong/Callback;

    .line 1758
    invoke-static {}, Larl;->a()Larl;

    move-result-object v2

    .line 2549
    iget-object v3, v2, Larl;->a:Latn;

    new-instance v4, Larl$6;

    invoke-direct {v4, v2, v1}, Larl$6;-><init>(Larl;Lcom/alibaba/wukong/Callback;)V

    .line 3392
    if-nez v0, :cond_0

    .line 3394
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    const-string/jumbo v0, "deleteCalendarShare "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "shareObject ==null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    :goto_0
    return-void

    .line 3400
    :cond_0
    new-instance v1, Latn$11;

    invoke-direct {v1, v3, v4}, Latn$11;-><init>(Latn;Lcma;)V

    .line 3416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarDataSourceRemote] deleteCalendarShare."

    aput-object v5, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 3417
    invoke-static {}, Latp;->a()Latp;

    move-result-object v2

    invoke-virtual {v0}, Lash;->a()Laqr;

    move-result-object v0

    new-instance v4, Latn$13;

    invoke-direct {v4, v3, v1}, Latn$13;-><init>(Latn;Lcmi;)V

    .line 4125
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Latp;->a(Ljava/lang/String;)V

    .line 4126
    iget-object v1, v2, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v1, v0, v4}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->deleteCalendarShare(Laqr;Liyv;)V

    goto :goto_0
.end method
