.class final Lcom/alibaba/motu/watch/stack/ThreadMsg$$;
.super Ljava/lang/Object;
.source "ThreadMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/watch/stack/ThreadMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = ""
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;->b:[Ljava/lang/StackTraceElement;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method
