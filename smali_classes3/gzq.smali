.class public final Lgzq;
.super Ljava/lang/Object;
.source "PhotokitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgzq$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/doraemon/image/memory/PoolFactory;


# direct methods
.method private constructor <init>(Lgzq$a;)V
    .locals 1
    .param p1, "builder"    # Lgzq$a;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iget-object v0, p1, Lgzq$a;->a:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    .line 33
    iput-object v0, p0, Lgzq;->a:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    .line 35
    new-instance v0, Lgzw;

    invoke-direct {v0}, Lgzw;-><init>()V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lgzq$a;B)V
    .locals 0
    .param p1, "x0"    # Lgzq$a;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lgzq;-><init>(Lgzq$a;)V

    return-void
.end method
