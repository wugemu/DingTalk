.class final Lhhd$4;
.super Lbzd;
.source "FCPlanExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhd;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lhhd;


# direct methods
.method constructor <init>(Lhhd;J)V
    .locals 0
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 306
    iput-object p1, p0, Lhhd$4;->b:Lhhd;

    iput-wide p2, p0, Lhhd$4;->a:J

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lhhd$4;->b:Lhhd;

    invoke-static {v0}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lhhd$4;->b:Lhhd;

    invoke-static {v0}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v0

    invoke-virtual {v0}, Lhhd$b;->d()V

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 323
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkinByLocation Permission grant"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhd$4;->b:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lhhd$4;->b:Lhhd;

    iget-wide v2, p0, Lhhd$4;->a:J

    invoke-static {v0, v2, v3}, Lhhd;->b(Lhhd;J)V

    .line 325
    invoke-direct {p0}, Lhhd$4;->a()V

    .line 326
    return-void
.end method

.method public final onDenied()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 316
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 317
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkinByLocation Permission onDenied"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhd$4;->b:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-direct {p0}, Lhhd$4;->a()V

    .line 319
    return-void
.end method

.method public final onNeverAsk()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 309
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 310
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkinByLocation Permission onNeverAsk"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhd$4;->b:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0}, Lhhd$4;->a()V

    .line 312
    return-void
.end method
