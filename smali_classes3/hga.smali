.class public final Lhga;
.super Ljava/lang/Object;
.source "BeaconDeviceListUtils.java"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Z

.field c:Lhgd$a$a;

.field d:Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lhga$1;

    invoke-direct {v0, p0}, Lhga$1;-><init>(Lhga;)V

    iput-object v0, p0, Lhga;->d:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 71
    .local v0, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lhga;->a:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lhga;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 78
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lhga;->a:Ljava/lang/Long;

    .line 79
    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v2

    new-instance v3, Lhga$2;

    invoke-direct {v3, p0}, Lhga$2;-><init>(Lhga;)V

    invoke-virtual {v2, v3}, Lhge;->a(Lhgd$a$a;)V

    goto :goto_0
.end method
