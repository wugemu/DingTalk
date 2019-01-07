.class final Liby$3$1;
.super Ljava/lang/Object;
.source "MessageReadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liby$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liby$3;


# direct methods
.method constructor <init>(Liby$3;)V
    .locals 0
    .param p1, "this$1"    # Liby$3;

    .prologue
    .line 105
    iput-object p1, p0, Liby$3$1;->a:Liby$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Liby$3$1;->a:Liby$3;

    iget-object v0, v0, Liby$3;->a:Liby;

    invoke-virtual {v0}, Liby;->b()V

    .line 109
    return-void
.end method
