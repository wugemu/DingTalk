.class final Larh$3;
.super Ljava/lang/Object;
.source "CalendarReportDataManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Larh;


# direct methods
.method constructor <init>(Larh;JJLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Larh;

    .prologue
    .line 249
    iput-object p1, p0, Larh$3;->d:Larh;

    iput-wide p2, p0, Larh$3;->a:J

    iput-wide p4, p0, Larh$3;->b:J

    iput-object p6, p0, Larh$3;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarReportDataManager] queryCalendarInstancesAndUpload error code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 249
    check-cast p1, Ljava/util/List;

    .line 1252
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Larh$3$1;

    invoke-direct {v1, p0, p1}, Larh$3$1;-><init>(Larh$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->c(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method
