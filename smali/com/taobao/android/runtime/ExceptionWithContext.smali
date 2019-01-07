.class public Lcom/taobao/android/runtime/ExceptionWithContext;
.super Ljava/lang/RuntimeException;
.source "ExceptionWithContext.java"


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 87
    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/taobao/android/runtime/ExceptionWithContext;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    instance-of v1, p1, Lcom/taobao/android/runtime/ExceptionWithContext;

    if-eqz v1, :cond_2

    .line 91
    check-cast p1, Lcom/taobao/android/runtime/ExceptionWithContext;

    .end local p1    # "cause":Ljava/lang/Throwable;
    iget-object v1, p1, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "ctx":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .end local v0    # "ctx":Ljava/lang/String;
    :goto_1
    return-void

    .line 87
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/runtime/ExceptionWithContext;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 52
    instance-of v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 53
    check-cast v0, Lcom/taobao/android/runtime/ExceptionWithContext;

    .line 58
    .local v0, "ewc":Lcom/taobao/android/runtime/ExceptionWithContext;
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/runtime/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 59
    return-object v0

    .line 55
    .end local v0    # "ewc":Lcom/taobao/android/runtime/ExceptionWithContext;
    :cond_0
    new-instance v0, Lcom/taobao/android/runtime/ExceptionWithContext;

    invoke-direct {v0, p0}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "ewc":Lcom/taobao/android/runtime/ExceptionWithContext;
    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "str == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_1
    return-void
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printContext(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/taobao/android/runtime/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public printContext(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/taobao/android/runtime/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 111
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 120
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 121
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    return-void
.end method
