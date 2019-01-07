.class public abstract Lcom/taobao/accs/utl/BaseMonitor;
.super Lanet/channel/statist/StatObject;
.source "BaseMonitor.java"


# static fields
.field public static final ALARM_MSG_ROUTING_RATE:Ljava/lang/String; = "ele_routing_rate"

.field public static final ALARM_POINT_AUTH:Ljava/lang/String; = "auth"

.field public static final ALARM_POINT_CONNECT:Ljava/lang/String; = "connect"

.field public static final ALARM_POINT_REQUEST:Ljava/lang/String; = "Request_Success_Rate"

.field public static final ALARM_POINT_REQ_ERROR:Ljava/lang/String; = "send_fail"

.field public static final COUNT_ACK:Ljava/lang/String; = "ack"

.field public static final COUNT_AGOO_ACK:Ljava/lang/String; = "agoo_ack"

.field public static final COUNT_AGOO_ARRIVE:Ljava/lang/String; = "agoo_arrive"

.field public static final COUNT_AGOO_ARRIVE_ID:Ljava/lang/String; = "agoo_arrive_id"

.field public static final COUNT_AGOO_ARRIVE_REAL_ID:Ljava/lang/String; = "agoo_arrive_real_id"

.field public static final COUNT_AGOO_CLICK:Ljava/lang/String; = "agoo_click"

.field public static final COUNT_AGOO_FAIL_ACK:Ljava/lang/String; = "agoo_fail_ack"

.field public static final COUNT_AGOO_REPORT_ID:Ljava/lang/String; = "agoo_report_id"

.field public static final COUNT_AGOO_SUCCESS_ACK:Ljava/lang/String; = "agoo_success_ack"

.field public static final COUNT_BUSINESS_ACK_FAIL:Ljava/lang/String; = "bizAckFail"

.field public static final COUNT_BUSINESS_ACK_SUCC:Ljava/lang/String; = "bizAckSucc"

.field public static final COUNT_ELECTION_OVER_MAX:Ljava/lang/String; = "ele_over_max_times"

.field public static final COUNT_ELECTION_PKG_TIMES:Ljava/lang/String; = "ele_pkg_times"

.field public static final COUNT_ELECTION_START_TIMES:Ljava/lang/String; = "ele_start_times"

.field public static final COUNT_POINT_DNS:Ljava/lang/String; = "dns"

.field public static final COUNT_POINT_RESEND:Ljava/lang/String; = "resend"

.field public static final COUNT_POINT_SOFAIL:Ljava/lang/String; = "sofail"

.field public static final COUNT_POINT_TO_BUSS:Ljava/lang/String; = "to_buss"

.field public static final COUNT_SERVICE_ALIVE:Ljava/lang/String; = "service_alive"

.field public static final MODULE:Ljava/lang/String; = "accs"

.field public static final STAT_ELECTION_SUCC_RATE:Ljava/lang/String; = "ele_succ_rate"


# instance fields
.field private isCommitted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/utl/BaseMonitor;->isCommitted:Z

    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-boolean v1, p0, Lcom/taobao/accs/utl/BaseMonitor;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    iput-boolean v0, p0, Lcom/taobao/accs/utl/BaseMonitor;->isCommitted:Z

    goto :goto_0
.end method

.method public checkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_0

    const-string/jumbo p1, "none"

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
