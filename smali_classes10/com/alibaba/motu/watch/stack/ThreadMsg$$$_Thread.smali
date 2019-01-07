.class Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
.super Ljava/lang/Throwable;
.source "ThreadMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/watch/stack/ThreadMsg$$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "_Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/motu/watch/stack/ThreadMsg$$;


# direct methods
.method private constructor <init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;)V
    .locals 1
    .param p2, "other"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->this$0:Lcom/alibaba/motu/watch/stack/ThreadMsg$$;

    .line 1015
    iget-object v0, p1, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;->a:Ljava/lang/String;

    .line 21
    invoke-direct {p0, v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Lcom/alibaba/motu/watch/stack/ThreadMsg$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$;
    .param p2, "x1"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    .param p3, "x2"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$1;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;-><init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->this$0:Lcom/alibaba/motu/watch/stack/ThreadMsg$$;

    .line 2015
    iget-object v0, v0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;->b:[Ljava/lang/StackTraceElement;

    .line 26
    invoke-virtual {p0, v0}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 27
    return-object p0
.end method
