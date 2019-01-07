.class public final Lhkx$4;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhkx;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

.field final synthetic b:Lhkx;


# direct methods
.method public constructor <init>(Lhkx;Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 199
    iput-object p1, p0, Lhkx$4;->b:Lhkx;

    iput-object p2, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 202
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "add:"

    aput-object v4, v3, v8

    iget-object v4, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v1

    iget-object v2, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-virtual {v1, v2}, Lhkw;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)Lhky;

    move-result-object v0

    .line 205
    .local v0, "module":Lhky;
    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mIsRunning:"

    aput-object v4, v3, v8

    iget-object v4, p0, Lhkx$4;->b:Lhkx;

    .line 208
    invoke-static {v4}, Lhkx;->b(Lhkx;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, "; currentTime:"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {}, Lhrm;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "; startDate:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    .line 209
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "; endDate:"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 207
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lhkx$4;->b:Lhkx;

    invoke-static {v1}, Lhkx;->b(Lhkx;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    invoke-virtual {v0, v8}, Lhky;->a(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    invoke-static {}, Lhrm;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 216
    iget-object v1, p0, Lhkx$4;->b:Lhkx;

    invoke-static {v1}, Lhkx;->a(Lhkx;)V

    .line 217
    iget-object v1, p0, Lhkx$4;->b:Lhkx;

    iget-object v2, p0, Lhkx$4;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    invoke-static {v1, v2, v3}, Lhkx;->a(Lhkx;J)V

    goto :goto_0
.end method
