.class Lcom/laiwang/protocol/android/log/PerfLogger$a;
.super Ljava/lang/Object;
.source "PerfLogger.java"

# interfaces
.implements Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/log/PerfLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/text/SimpleDateFormat;

.field final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v1, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->a:I

    .line 117
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->c:I

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->b:Ljava/text/SimpleDateFormat;

    .line 121
    return-void
.end method


# virtual methods
.method public getNameFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 12
    .param p1, "date"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 126
    const-string/jumbo v4, ""

    .line 174
    :cond_0
    :goto_0
    return-object v4

    .line 127
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 130
    .local v2, "minute":I
    div-int/lit8 v3, v2, 0xa

    .line 131
    .local v3, "minuteFlag":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    if-eqz v5, :cond_2

    .line 135
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

    if-eqz v5, :cond_2

    rem-int/lit8 v5, v2, 0xa

    iget v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->c:I

    if-lt v5, v6, :cond_2

    sget-boolean v5, Lcom/laiwang/protocol/Config;->c:Z

    if-eqz v5, :cond_2

    .line 136
    const-string/jumbo v5, "perf log start upload : %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    invoke-interface {v5, v6}, Lcom/laiwang/protocol/android/log/PerfLogger$b;->uploadLogAndDel(Ljava/io/File;)V

    .line 138
    iput-object v11, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    .line 143
    :cond_2
    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    const/16 v5, -0xa

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->add(II)V

    .line 147
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit8 v3, v5, 0xa

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    .line 149
    const-string/jumbo v5, "pre perf log maybe: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_3
    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 159
    :cond_4
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/laiwang/protocol/Config;->c:Z

    if-eqz v5, :cond_5

    .line 160
    const-string/jumbo v5, "perf log start upload : %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    invoke-interface {v5, v6}, Lcom/laiwang/protocol/android/log/PerfLogger$b;->uploadLogAndDel(Ljava/io/File;)V

    .line 162
    iput-object v11, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    .line 165
    :cond_5
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/log/FileLogger;->getStorageDir()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v1, "latestLogFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 167
    const-string/jumbo v5, "perf log ready to upload: %s interval is %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iput-object v1, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->e:Ljava/io/File;

    .line 172
    .end local v1    # "latestLogFile":Ljava/io/File;
    :cond_6
    iput-object v4, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public parseDateFromName(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v2

    .line 183
    :cond_1
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/log/PerfLogger$a;->b:Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
