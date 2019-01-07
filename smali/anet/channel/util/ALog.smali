.class public Lanet/channel/util/ALog;
.super Ljava/lang/Object;
.source "ALog.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    const-string/jumbo v0, "|"

    sput-object v0, Lanet/channel/util/ALog;->a:Ljava/lang/Object;

    .line 9
    sput-boolean v1, Lanet/channel/util/ALog;->b:Z

    .line 10
    sput-boolean v1, Lanet/channel/util/ALog;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "seq"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 140
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 141
    const-string/jumbo v2, ""

    .line 166
    :goto_0
    return-object v2

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    sget-object v2, Lanet/channel/util/ALog;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    if-eqz p0, :cond_2

    .line 150
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    if-eqz p2, :cond_6

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 156
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, p2, v1

    if-eqz v2, :cond_3

    aget-object v2, p2, v1

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 156
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v2, ""

    goto :goto_3

    .line 161
    :cond_5
    array-length v2, p2

    if-ge v1, v2, :cond_6

    .line 162
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "printLog"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lanet/channel/util/ALog;->b:Z

    .line 39
    return-void
.end method

.method public static a(I)Z
    .locals 3
    .param p0, "logLevel"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    sget-boolean v2, Lanet/channel/util/ALog;->b:Z

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    sget-boolean v2, Lanet/channel/util/ALog;->c:Z

    if-eqz v2, :cond_2

    .line 60
    invoke-static {}, Ljox;->b()Ljava/lang/String;

    move-result-object v2

    .line 1020
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1032
    const/4 v2, 0x5

    .line 60
    :goto_1
    if-lt p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v2, v0

    .line 1022
    goto :goto_1

    :sswitch_1
    move v2, v1

    .line 1024
    goto :goto_1

    .line 1026
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1028
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_1

    .line 1030
    :sswitch_4
    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0

    .line 1020
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 126
    const/4 v0, 0x4

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-boolean v0, Lanet/channel/util/ALog;->c:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUseTlog(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lanet/channel/util/ALog;->c:Z

    .line 43
    return-void
.end method
