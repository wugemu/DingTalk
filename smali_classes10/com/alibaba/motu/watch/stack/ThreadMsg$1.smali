.class final Lcom/alibaba/motu/watch/stack/ThreadMsg$1;
.super Ljava/lang/Object;
.source "ThreadMsg.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/motu/watch/stack/ThreadMsg;->New(Ljava/lang/String;Z)Lcom/alibaba/motu/watch/stack/ThreadMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$1;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Thread;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Thread;

    .line 1064
    .end local p2    # "x1":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$1;->a:Ljava/lang/Thread;

    if-ne p1, v0, :cond_1

    .line 1067
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$1;->a:Ljava/lang/Thread;

    if-ne p2, v0, :cond_2

    .line 1069
    const/4 v0, -0x1

    goto :goto_0

    .line 1070
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
