.class abstract Lhhd$c;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Lciq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field b:J

.field c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lhhd;


# direct methods
.method constructor <init>(Lhhd;)V
    .locals 1
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 618
    iput-object p1, p0, Lhhd$c;->d:Lhhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lhhd$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
