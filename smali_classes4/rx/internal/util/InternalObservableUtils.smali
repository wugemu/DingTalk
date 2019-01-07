.class public final enum Lrx/internal/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "InternalObservableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/InternalObservableUtils$c;,
        Lrx/internal/util/InternalObservableUtils$a;,
        Lrx/internal/util/InternalObservableUtils$m;,
        Lrx/internal/util/InternalObservableUtils$k;,
        Lrx/internal/util/InternalObservableUtils$j;,
        Lrx/internal/util/InternalObservableUtils$l;,
        Lrx/internal/util/InternalObservableUtils$e;,
        Lrx/internal/util/InternalObservableUtils$n;,
        Lrx/internal/util/InternalObservableUtils$p;,
        Lrx/internal/util/InternalObservableUtils$o;,
        Lrx/internal/util/InternalObservableUtils$i;,
        Lrx/internal/util/InternalObservableUtils$d;,
        Lrx/internal/util/InternalObservableUtils$b;,
        Lrx/internal/util/InternalObservableUtils$q;,
        Lrx/internal/util/InternalObservableUtils$f;,
        Lrx/internal/util/InternalObservableUtils$h;,
        Lrx/internal/util/InternalObservableUtils$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/InternalObservableUtils;

.field public static final COUNTER:Lrx/internal/util/InternalObservableUtils$g;

.field static final ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$e;

.field public static final ERROR_NOT_IMPLEMENTED:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Llgs$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$b",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$h;

.field public static final OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$f;

.field static final RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$o;

.field public static final TO_ARRAY:Lrx/internal/util/InternalObservableUtils$q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/InternalObservableUtils;

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    .line 38
    new-instance v0, Lrx/internal/util/InternalObservableUtils$h;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$h;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$h;

    .line 43
    new-instance v0, Lrx/internal/util/InternalObservableUtils$f;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$f;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$f;

    .line 47
    new-instance v0, Lrx/internal/util/InternalObservableUtils$q;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$q;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lrx/internal/util/InternalObservableUtils$q;

    .line 49
    new-instance v0, Lrx/internal/util/InternalObservableUtils$o;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$o;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$o;

    .line 54
    new-instance v0, Lrx/internal/util/InternalObservableUtils$g;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$g;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lrx/internal/util/InternalObservableUtils$g;

    .line 56
    new-instance v0, Lrx/internal/util/InternalObservableUtils$e;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$e;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$e;

    .line 61
    new-instance v0, Lrx/internal/util/InternalObservableUtils$c;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$c;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Llhg;

    .line 63
    new-instance v0, Llhr;

    .line 1034
    sget-object v1, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    .line 63
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llhr;-><init>(Llhk;Z)V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Llgs$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createCollectorCaller(Llhh;)Llhl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Llhh",
            "<TR;-TT;>;)",
            "Llhl",
            "<TR;TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "collector":Llhh;, "Llhh<TR;-TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$a;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$a;-><init>(Llhh;)V

    return-object v0
.end method

.method public static createRepeatDematerializer(Llhk;)Llhk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhk",
            "<-",
            "Llgs",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Llgs",
            "<*>;>;)",
            "Llhk",
            "<",
            "Llgs",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Llgs",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "notificationHandler":Llhk;, "Llhk<-Llgs<+Ljava/lang/Void;>;+Llgs<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$i;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$i;-><init>(Llhk;)V

    return-object v0
.end method

.method public static createReplaySelectorAndObserveOn(Llhk;Llgv;)Llhk;
    .locals 1
    .param p1, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Llhk",
            "<-",
            "Llgs",
            "<TT;>;+",
            "Llgs",
            "<TR;>;>;",
            "Llgv;",
            ")",
            "Llhk",
            "<",
            "Llgs",
            "<TT;>;",
            "Llgs",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "selector":Llhk;, "Llhk<-Llgs<TT;>;+Llgs<TR;>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$p;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$p;-><init>(Llhk;Llgv;)V

    return-object v0
.end method

.method public static createReplaySupplier(Llgs;)Llhj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<TT;>;)",
            "Llhj",
            "<",
            "Llkc",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "source":Llgs;, "Llgs<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$l;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$l;-><init>(Llgs;)V

    return-object v0
.end method

.method public static createReplaySupplier(Llgs;I)Llhj;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<TT;>;I)",
            "Llhj",
            "<",
            "Llkc",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "source":Llgs;, "Llgs<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$j;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$j;-><init>(Llgs;I)V

    return-object v0
.end method

.method public static createReplaySupplier(Llgs;IJLjava/util/concurrent/TimeUnit;Llgv;)Llhj;
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            ")",
            "Llhj",
            "<",
            "Llkc",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "source":Llgs;, "Llgs<TT;>;"
    new-instance v1, Lrx/internal/util/InternalObservableUtils$m;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/util/InternalObservableUtils$m;-><init>(Llgs;IJLjava/util/concurrent/TimeUnit;Llgv;)V

    return-object v1
.end method

.method public static createReplaySupplier(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;)Llhj;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            ")",
            "Llhj",
            "<",
            "Llkc",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "source":Llgs;, "Llgs<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$k;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/InternalObservableUtils$k;-><init>(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;)V

    return-object v0
.end method

.method public static createRetryDematerializer(Llhk;)Llhk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhk",
            "<-",
            "Llgs",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Llgs",
            "<*>;>;)",
            "Llhk",
            "<",
            "Llgs",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Llgs",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "notificationHandler":Llhk;, "Llhk<-Llgs<+Ljava/lang/Throwable;>;+Llgs<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$n;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$n;-><init>(Llhk;)V

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Llhk;
    .locals 1
    .param p0, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Llhk",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/internal/util/InternalObservableUtils$b;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Llhk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Llhk",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$d;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/InternalObservableUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lrx/internal/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/InternalObservableUtils;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lrx/internal/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method
