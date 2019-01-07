.class final Lkh;
.super Ljava/lang/Object;
.source "AmdcTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh$a;
    }
.end annotation


# static fields
.field static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lkh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic a(Lkh;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lkh;

    .prologue
    .line 12
    iget-object v0, p0, Lkh;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lkh;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lkh;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lkh;->a:Ljava/util/Map;

    return-object v0
.end method
