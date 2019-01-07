.class public final Lklq;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklq$a;,
        Lklq$b;
    }
.end annotation


# static fields
.field private static a:Lklq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Lklq$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:I


# direct methods
.method private constructor <init>(Lklq$b;)V
    .locals 3
    .param p1, "log"    # Lklq$b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lklq$b;

    iput-object v1, p0, Lklq;->b:Lklq$b;

    .line 58
    const/4 v0, 0x7

    .line 59
    .local v0, "level":I
    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lklq;->b:Lklq$b;

    const-string/jumbo v2, "AppAuth"

    invoke-interface {v1, v2, v0}, Lklq$b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lklq;->c:I

    .line 64
    return-void
.end method

.method public static declared-synchronized a()Lklq;
    .locals 3

    .prologue
    .line 43
    const-class v1, Lklq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lklq;->a:Lklq;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lklq;

    invoke-static {}, Lklq$a;->a()Lklq$a;

    move-result-object v2

    invoke-direct {v0, v2}, Lklq;-><init>(Lklq$b;)V

    sput-object v0, Lklq;->a:Lklq;

    .line 46
    :cond_0
    sget-object v0, Lklq;->a:Lklq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {}, Lklq;->a()Lklq;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lklq;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {}, Lklq;->a()Lklq;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lklq;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 91
    invoke-static {}, Lklq;->a()Lklq;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lklq;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {}, Lklq;->a()Lklq;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lklq;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "messageParams"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    iget v1, p0, Lklq;->c:I

    if-le v1, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-gtz v1, :cond_3

    .line 112
    :cond_1
    move-object v0, p3

    .line 117
    .local v0, "formattedMessage":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklq;->b:Lklq$b;

    invoke-interface {v2, p2}, Lklq$b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_2
    iget-object v1, p0, Lklq;->b:Lklq$b;

    const-string/jumbo v2, "AppAuth"

    invoke-interface {v1, p1, v2, v0}, Lklq$b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "formattedMessage":Ljava/lang/String;
    :cond_3
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedMessage":Ljava/lang/String;
    goto :goto_1
.end method
