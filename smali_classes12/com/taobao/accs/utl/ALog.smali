.class public Lcom/taobao/accs/utl/ALog;
.super Ljava/lang/Object;
.source "ALog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/utl/ALog$Level;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9
    const-string/jumbo v0, "accs."

    sput-object v0, Lcom/taobao/accs/utl/ALog;->a:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "|"

    sput-object v0, Lcom/taobao/accs/utl/ALog;->b:Ljava/lang/Object;

    .line 11
    sput-boolean v1, Lcom/taobao/accs/utl/ALog;->c:Z

    .line 12
    sput-boolean v1, Lcom/taobao/accs/utl/ALog;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/accs/utl/ALog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 114
    .line 1117
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v0, :cond_1

    .line 1119
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 1066
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v0, :cond_1

    .line 1068
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "printLog"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/taobao/accs/utl/ALog;->c:Z

    .line 23
    return-void
.end method

.method public static a(Lcom/taobao/accs/utl/ALog$Level;)Z
    .locals 6
    .param p0, "logLevel"    # Lcom/taobao/accs/utl/ALog$Level;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    sget-boolean v4, Lcom/taobao/accs/utl/ALog;->c:Z

    if-nez v4, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 44
    :cond_1
    sget-boolean v4, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v4, :cond_2

    .line 45
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->L:Lcom/taobao/accs/utl/ALog$Level;

    .line 47
    .local v1, "tlogLevel":Lcom/taobao/accs/utl/ALog$Level;
    :try_start_0
    invoke-static {}, Ljox;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog$Level;->valueOf(Ljava/lang/String;)Lcom/taobao/accs/utl/ALog$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v5

    if-lt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "tlogLevel":Lcom/taobao/accs/utl/ALog$Level;
    :cond_2
    move v2, v3

    .line 53
    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 141
    .line 1145
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v0, :cond_1

    .line 1147
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 85
    .line 1089
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v0, :cond_1

    .line 1091
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 1
    .param p0, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    .line 32
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 127
    .line 1131
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->d:Z

    if-eqz v0, :cond_1

    .line 1133
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "seq"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 174
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 175
    const-string/jumbo v3, ""

    .line 205
    :goto_0
    return-object v3

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    sget-object v3, Lcom/taobao/accs/utl/ALog;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[seq:%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    if-eqz p0, :cond_2

    .line 185
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    if-eqz p2, :cond_6

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 191
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    aget-object v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p2, v1

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_3

    const-string/jumbo v4, ""

    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_4

    const-string/jumbo v3, ""

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_5
    if-lez v1, :cond_6

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_6

    .line 196
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    const-string/jumbo v3, ""

    goto/16 :goto_0
.end method

.method public static setUseTlog(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/taobao/accs/utl/ALog;->d:Z

    .line 27
    return-void
.end method
