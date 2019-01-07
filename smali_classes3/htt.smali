.class public final Lhtt;
.super Ljava/lang/Object;
.source "NonSystemThreadIgnore.java"

# interfaces
.implements Lhtu;


# instance fields
.field a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "Thread-\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lhtt;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "NonSystemThreadIgnore"

    return-object v0
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "threadName":Ljava/lang/String;
    invoke-static {v1}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v2

    .line 26
    :cond_1
    iget-object v3, p0, Lhtt;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 27
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const/4 v2, 0x0

    goto :goto_0
.end method
