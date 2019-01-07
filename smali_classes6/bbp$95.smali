.class final Lbbp$95;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(JIILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcma;

.field final synthetic e:Lbbp;


# direct methods
.method constructor <init>(Lbbp;JIILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 892
    iput-object p1, p0, Lbbp$95;->e:Lbbp;

    iput-wide p2, p0, Lbbp$95;->a:J

    iput p4, p0, Lbbp$95;->b:I

    iput p5, p0, Lbbp$95;->c:I

    iput-object p6, p0, Lbbp$95;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 895
    iget-object v0, p0, Lbbp$95;->e:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v2

    iget-wide v4, p0, Lbbp$95;->a:J

    iget v6, p0, Lbbp$95;->b:I

    iget v7, p0, Lbbp$95;->c:I

    iget-object v3, p0, Lbbp$95;->d:Lcma;

    .line 3199
    invoke-virtual {v2, v4, v5, v7}, Lbbo;->a(JI)V

    .line 3200
    iget-object v8, v2, Lbbo;->h:Lbbk;

    new-instance v1, Lbbo$18;

    invoke-direct/range {v1 .. v6}, Lbbo$18;-><init>(Lbbo;Lcma;JI)V

    .line 3802
    invoke-static {v4, v5}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3804
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    const-string/jumbo v0, "updateInvitationStatus failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    :goto_0
    return-void

    .line 3810
    :cond_0
    new-instance v2, Lbbk$39;

    invoke-direct {v2, v8, v1}, Lbbk$39;-><init>(Lbbk;Lcma;)V

    .line 3826
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "[DataSourceRemote] updateInvitationStatus dingId:"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", status:"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3827
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3828
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lbbk$40;

    invoke-direct {v4, v8, v2}, Lbbk$40;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->updateInvitationStatus(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
