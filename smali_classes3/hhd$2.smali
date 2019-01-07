.class final Lhhd$2;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhd;->a(Landroid/app/Activity;Lhhd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhd;


# direct methods
.method constructor <init>(Lhhd;)V
    .locals 0
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 218
    iput-object p1, p0, Lhhd$2;->a:Lhhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 221
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "start tryCheckin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhd$2;->a:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lhhd$2;->a:Lhhd;

    invoke-static {v0}, Lhhd;->b(Lhhd;)Z

    .line 223
    return-void
.end method
