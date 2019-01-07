.class public final Lcom/serenegiant/utils/MessageTask$a;
.super Ljava/lang/Object;
.source "MessageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/MessageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/Object;

.field e:I

.field f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask$a;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "_request"    # I
    .param p2, "_arg1"    # I
    .param p3, "_arg2"    # I
    .param p4, "_obj"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    .line 53
    iput p2, p0, Lcom/serenegiant/utils/MessageTask$a;->b:I

    .line 54
    iput p3, p0, Lcom/serenegiant/utils/MessageTask$a;->c:I

    .line 55
    iput-object p4, p0, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/utils/MessageTask$a;->f:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    instance-of v0, p1, Lcom/serenegiant/utils/MessageTask$a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    move-object v0, p1

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    iget v0, v0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    move-object v0, p1

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    iget v0, v0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/serenegiant/utils/MessageTask$a;->b:I

    move-object v0, p1

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    iget v0, v0, Lcom/serenegiant/utils/MessageTask$a;->b:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/serenegiant/utils/MessageTask$a;->c:I

    move-object v0, p1

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    iget v0, v0, Lcom/serenegiant/utils/MessageTask$a;->c:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/serenegiant/utils/MessageTask$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
