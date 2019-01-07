.class public final Layv$6;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Layv;


# direct methods
.method public constructor <init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 217
    iput-object p1, p0, Layv$6;->b:Layv;

    iput-object p2, p0, Layv$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Layv$6;->b:Layv;

    invoke-static {v0}, Layv;->f(Layv;)Layv$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Layv$6;->b:Layv;

    invoke-static {v0}, Layv;->f(Layv;)Layv$e;

    move-result-object v0

    iget-object v1, p0, Layv$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 221
    iget-object v1, p0, Layv$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Layv$e;->a(JLcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 223
    :cond_0
    return-void
.end method
