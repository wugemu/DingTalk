.class public final Lhia;
.super Ljava/lang/Object;
.source "HpmConfigDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhia$a;
    }
.end annotation


# instance fields
.field a:Lhif;

.field b:Lhia$a;

.field public c:Ljava/util/concurrent/Executor;

.field private d:Landroid/content/Context;

.field private e:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

.field private f:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhia;->f:J

    .line 56
    iput-object p1, p0, Lhia;->d:Landroid/content/Context;

    .line 57
    new-instance v0, Lhia$a;

    iget-object v1, p0, Lhia;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lhia$a;-><init>(Lhia;Landroid/content/Context;)V

    iput-object v0, p0, Lhia;->b:Lhia$a;

    .line 58
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    iput-object v0, p0, Lhia;->e:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    .line 59
    iput-object p2, p0, Lhia;->c:Ljava/util/concurrent/Executor;

    .line 60
    return-void
.end method
