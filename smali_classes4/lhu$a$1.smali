.class final Llhu$a$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhu$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llhu$a;


# direct methods
.method constructor <init>(Llhu$a;)V
    .locals 0
    .param p1, "this$0"    # Llhu$a;

    .prologue
    .line 139
    .local p0, "this":Llhu$a$1;, "Llhu$a$1;"
    iput-object p1, p0, Llhu$a$1;->a:Llhu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 143
    .local p0, "this":Llhu$a$1;, "Llhu$a$1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Llhu$a$1;->a:Llhu$a;

    iget-object v0, v0, Llhu$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 145
    iget-object v0, p0, Llhu$a$1;->a:Llhu$a;

    invoke-virtual {v0}, Llhu$a;->b()V

    .line 147
    :cond_0
    return-void
.end method
