.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;
.super Lcmi;
.source "CalendarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getDaySubDeptManagerCalStatistics(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lcfc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->a:Lcma;

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
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->a:Lcma;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    check-cast p1, Ljava/util/List;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;->a:Lcma;

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method
