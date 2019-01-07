.class public Lzb;
.super Ljava/lang/Object;
.source "SDKLogger.java"


# static fields
.field public static a:Ljava/lang/Class;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lzb;->a:Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lzb;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    if-nez p0, :cond_0

    const-string/jumbo v0, "PARAM ERROR, Throwable CANNOT BE NULL"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 95
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 97
    :cond_0
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    sget-boolean v2, Lzb;->b:Z

    if-eqz v2, :cond_1

    .line 100
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :cond_1
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 169
    if-nez p0, :cond_0

    const-string/jumbo p0, "PARAM ERROR, MSG CANNOT BE NULL"

    .end local p0    # "obj":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-boolean v0, Lzb;->b:Z

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Lzb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
