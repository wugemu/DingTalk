.class final Legd$1;
.super Ljava/lang/Object;
.source "DataCenterServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Legd;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Legd;


# direct methods
.method constructor <init>(Legd;Lcma;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Legd;

    .prologue
    .line 45
    iput-object p1, p0, Legd$1;->g:Legd;

    iput-object p2, p0, Legd$1;->a:Lcma;

    iput-wide p3, p0, Legd$1;->b:J

    iput-object p5, p0, Legd$1;->c:Ljava/lang/String;

    iput-object p6, p0, Legd$1;->d:Ljava/lang/String;

    iput-object p7, p0, Legd$1;->e:Ljava/lang/String;

    iput-wide p8, p0, Legd$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Legd$1;->a:Lcma;

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_0
    const-class v1, Lcom/alibaba/android/oa/idl/service/DcIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/DcIService;

    .line 52
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/DcIService;
    new-instance v6, Legd$1$1;

    invoke-direct {v6, p0}, Legd$1$1;-><init>(Legd$1;)V

    .line 63
    .local v6, "callback":Lcmi;, "Lcmi<Lefk;>;"
    iget-wide v2, p0, Legd$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Legd$1;->c:Ljava/lang/String;

    iget-object v3, p0, Legd$1;->d:Ljava/lang/String;

    iget-object v4, p0, Legd$1;->e:Ljava/lang/String;

    iget-wide v8, p0, Legd$1;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/oa/idl/service/DcIService;->getPersonalAttendanceDetail(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
