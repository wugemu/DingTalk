.class final Laii$d;
.super Ljava/lang/Object;
.source "AlimeiThreadRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Laii$b;

.field b:Landroid/os/Handler$Callback;

.field c:Ljava/lang/String;

.field d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field f:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Laii$d;-><init>()V

    return-void
.end method
