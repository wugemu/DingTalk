.class final Lbbk$54;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbcd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1082
    iput-object p1, p0, Lbbk$54;->b:Lbbk;

    iput-object p2, p0, Lbbk$54;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1094
    iget-object v0, p0, Lbbk$54;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lbbk$54;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_0
    const-string/jumbo v0, "checkInMeetingInvitation failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1082
    check-cast p1, Lbcd;

    .line 2086
    iget-object v0, p0, Lbbk$54;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2087
    iget-object v1, p0, Lbbk$54;->a:Lcma;

    .line 2137
    const/4 v0, 0x0

    .line 2138
    if-eqz p1, :cond_0

    .line 2139
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/data/object/CheckInResultObject;-><init>()V

    .line 2140
    iget-object v2, p1, Lbcd;->a:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 2140
    invoke-static {v2}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->valueOf(I)Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 2141
    iget-object v2, p1, Lbcd;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2141
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 2142
    iget-object v2, p1, Lbcd;->c:Ljava/lang/Long;

    .line 4044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2142
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->c:J

    .line 2143
    iget-object v2, p1, Lbcd;->d:Ljava/lang/Long;

    .line 5044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2143
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 2144
    iget-object v2, p1, Lbcd;->e:Ljava/lang/Long;

    .line 6044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2144
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->e:J

    .line 2145
    iget-object v2, p1, Lbcd;->f:Ljava/lang/Integer;

    .line 7033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 2145
    iput v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->f:I

    .line 2146
    iget-object v2, p1, Lbcd;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->g:Ljava/lang/String;

    .line 2087
    :cond_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1082
    :cond_1
    return-void
.end method
