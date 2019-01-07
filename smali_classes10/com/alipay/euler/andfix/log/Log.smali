.class public final Lcom/alipay/euler/andfix/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/euler/andfix/log/Log$AndroidLogger;
    }
.end annotation


# static fields
.field private static sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

.field private static sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->getInstance()Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 164
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_1
    return-void
.end method

.method public static footprint(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0}, Lcom/alipay/euler/andfix/log/Logger;->footprint(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->footprint(Ljava/lang/String;)I

    .line 178
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 122
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v0, p0}, Lcom/alipay/euler/andfix/log/Logger;->setLogLevel(I)V

    .line 81
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 82
    return-void
.end method

.method public static setLogger(Lcom/alipay/euler/andfix/log/Logger;)V
    .locals 2
    .param p0, "logger"    # Lcom/alipay/euler/andfix/log/Logger;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    sput-object p0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    .line 73
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    iget v1, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/alipay/euler/andfix/log/Log;->sTargetLogger:Lcom/alipay/euler/andfix/log/Logger;

    invoke-virtual {v1, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log;->sAndroidLogger:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_1
    return-void
.end method
