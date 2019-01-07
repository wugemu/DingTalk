.class final Lrx/exceptions/CompositeException$c;
.super Lrx/exceptions/CompositeException$a;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 258
    invoke-direct {p0}, Lrx/exceptions/CompositeException$a;-><init>()V

    .line 259
    iput-object p1, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintWriter;

    .line 260
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 269
    iget-object v0, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 270
    return-void
.end method
