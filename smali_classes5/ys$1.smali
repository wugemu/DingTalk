.class final Lys$1;
.super Ljava/lang/Object;
.source "TaskExecutor.java"

# interfaces
.implements Lyt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lys;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lys;


# direct methods
.method constructor <init>(Lys;)V
    .locals 0
    .param p1, "this$0"    # Lys;

    .prologue
    .line 60
    iput-object p1, p0, Lys$1;->a:Lys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyq;)V
    .locals 1
    .param p1, "task"    # Lyq;

    .prologue
    .line 67
    iget-object v0, p0, Lys$1;->a:Lys;

    invoke-static {v0, p1}, Lys;->a(Lys;Lyq;)V

    .line 68
    return-void
.end method

.method public final b(Lyq;)V
    .locals 1
    .param p1, "task"    # Lyq;

    .prologue
    .line 72
    iget-object v0, p0, Lys$1;->a:Lys;

    invoke-static {v0, p1}, Lys;->a(Lys;Lyq;)V

    .line 73
    return-void
.end method

.method public final c(Lyq;)V
    .locals 1
    .param p1, "task"    # Lyq;

    .prologue
    .line 77
    iget-object v0, p0, Lys$1;->a:Lys;

    invoke-static {v0, p1}, Lys;->a(Lys;Lyq;)V

    .line 78
    return-void
.end method
