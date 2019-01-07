.class public Lcom/alipay/mobile/nebulacore/util/PingUtil;
.super Ljava/lang/Object;
.source "PingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PingUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public static ping(Ljava/lang/String;I)Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    .locals 27
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    .line 35
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "ping() host:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->log(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v25

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 37
    new-instance v25, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v26, "ping shouldn\'t be invoked in MainThread!"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 39
    :cond_0
    new-instance v20, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;

    invoke-direct/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;-><init>()V

    .line 40
    .local v20, "result":Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1

    if-gtz p1, :cond_2

    .line 139
    :cond_1
    :goto_0
    return-object v20

    .line 43
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    .line 45
    .local v21, "runtime":Ljava/lang/Runtime;
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "/system/bin/ping -w "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " -c "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "cmd":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v17

    .line 48
    .local v17, "pingProcess":Ljava/lang/Process;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    .line 49
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v19, "reader":Ljava/io/BufferedReader;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v13, "output":Ljava/lang/StringBuffer;
    move/from16 v0, p1

    new-array v10, v0, [Ljava/lang/Float;

    .line 55
    .local v10, "originTime":[Ljava/lang/Float;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_3

    .line 56
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v10, v6

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_3
    const/4 v14, 0x0

    .line 60
    .local v14, "outputLineCount":I
    const/4 v11, 0x0

    .line 61
    .local v11, "originTimeCount":I
    const-string/jumbo v25, ".*?time=(.*?\\s)ms"

    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 62
    .local v15, "pattern":Ljava/util/regex/Pattern;
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .local v23, "temp":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 64
    const-string/jumbo v25, " bytes from "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 65
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .local v8, "m":Ljava/util/regex/Matcher;
    move v12, v11

    .line 66
    .end local v11    # "originTimeCount":I
    .local v12, "originTimeCount":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v25

    if-eqz v25, :cond_4

    .line 68
    const/16 v25, 0x1

    :try_start_1
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v24

    .line 69
    .local v24, "time":Ljava/lang/String;
    move/from16 v0, p1

    if-ge v12, v0, :cond_a

    .line 70
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "originTimeCount":I
    .restart local v11    # "originTimeCount":I
    :try_start_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v10, v12
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_4
    move v12, v11

    .line 78
    .end local v11    # "originTimeCount":I
    .restart local v12    # "originTimeCount":I
    goto :goto_3

    .line 72
    .end local v24    # "time":Ljava/lang/String;
    :catch_0
    move-exception v3

    move v11, v12

    .line 73
    .end local v12    # "originTimeCount":I
    .local v3, "e":Ljava/lang/IllegalStateException;
    .restart local v11    # "originTimeCount":I
    :goto_5
    :try_start_3
    const-string/jumbo v25, "PingUtil"

    const-string/jumbo v26, "exception detail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v11

    .line 78
    .end local v11    # "originTimeCount":I
    .restart local v12    # "originTimeCount":I
    goto :goto_3

    .line 74
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    move v11, v12

    .line 75
    .end local v12    # "originTimeCount":I
    .local v3, "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "originTimeCount":I
    :goto_6
    const-string/jumbo v25, "PingUtil"

    const-string/jumbo v26, "exception detail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v11

    .line 78
    .end local v11    # "originTimeCount":I
    .restart local v12    # "originTimeCount":I
    goto :goto_3

    .line 76
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v3

    move v11, v12

    .line 77
    .end local v12    # "originTimeCount":I
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v11    # "originTimeCount":I
    :goto_7
    const-string/jumbo v25, "PingUtil"

    const-string/jumbo v26, "exception detail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v11

    .line 78
    .end local v11    # "originTimeCount":I
    .restart local v12    # "originTimeCount":I
    goto :goto_3

    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    move v11, v12

    .line 81
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "originTimeCount":I
    .restart local v11    # "originTimeCount":I
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 85
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 88
    if-lez v14, :cond_9

    .line 89
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "pingOutPut":Ljava/lang/String;
    const-string/jumbo v25, "^PING\\b[^(]*\\(([^)]*)\\)\\s([^.]*)\\..*?^(\\d+\\sbytes).*?icmp_seq=(\\d+).*?ttl=(\\d+).*?time=(.*?)ms.*?(\\d+)\\spackets\\stransmitted.*?(\\d+)\\sreceived.*?(\\d+%)\\spacket\\sloss.*?time\\s(\\d+ms).*?=\\s([^\\/]*)\\/([^\\/]*)\\/([^\\/]*)\\/(.*?)\\sms"

    const/16 v26, 0x2a

    invoke-static/range {v25 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 103
    .local v18, "re":Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 104
    .restart local v8    # "m":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 105
    .local v9, "mIdx":I
    :goto_8
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 106
    const/4 v5, 0x0

    .local v5, "groupIdx":I
    :goto_9
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    if-ge v5, v0, :cond_7

    .line 107
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "regex["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "]["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "] = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 108
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 107
    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 111
    :cond_7
    const/16 v25, 0x1

    :try_start_4
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->ipAddr:Ljava/lang/String;

    .line 112
    const/16 v22, 0x0

    .line 113
    .local v22, "sumOfTime":F
    const/4 v6, 0x0

    :goto_a
    move/from16 v0, p1

    if-ge v6, v0, :cond_8

    .line 114
    aget-object v25, v10, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    add-float v22, v22, v25

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 116
    :cond_8
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v22, v25

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->avgConsumedTimeMs:F

    .line 117
    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->numSendPkt:I

    .line 118
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->numReceivedPkt:I

    .line 119
    move-object/from16 v0, v20

    iput-object v10, v0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    .line 120
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 126
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    .line 121
    .end local v22    # "sumOfTime":F
    :catch_3
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string/jumbo v25, "PingUtil"

    const-string/jumbo v26, "exception detail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 133
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "groupIdx":I
    .end local v6    # "i":I
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local v9    # "mIdx":I
    .end local v10    # "originTime":[Ljava/lang/Float;
    .end local v11    # "originTimeCount":I
    .end local v13    # "output":Ljava/lang/StringBuffer;
    .end local v14    # "outputLineCount":I
    .end local v15    # "pattern":Ljava/util/regex/Pattern;
    .end local v16    # "pingOutPut":Ljava/lang/String;
    .end local v17    # "pingProcess":Ljava/lang/Process;
    .end local v18    # "re":Ljava/util/regex/Pattern;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v23    # "temp":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 134
    .local v7, "ignore":Ljava/lang/InterruptedException;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Exception:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "ignore":Ljava/lang/InterruptedException;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v10    # "originTime":[Ljava/lang/Float;
    .restart local v11    # "originTimeCount":I
    .restart local v13    # "output":Ljava/lang/StringBuffer;
    .restart local v14    # "outputLineCount":I
    .restart local v15    # "pattern":Ljava/util/regex/Pattern;
    .restart local v17    # "pingProcess":Ljava/lang/Process;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "temp":Ljava/lang/String;
    :cond_9
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 131
    .local v4, "exitValue":I
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "exitValue "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 135
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v4    # "exitValue":I
    .end local v6    # "i":I
    .end local v10    # "originTime":[Ljava/lang/Float;
    .end local v11    # "originTimeCount":I
    .end local v13    # "output":Ljava/lang/StringBuffer;
    .end local v14    # "outputLineCount":I
    .end local v15    # "pattern":Ljava/util/regex/Pattern;
    .end local v17    # "pingProcess":Ljava/lang/Process;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v23    # "temp":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v25, "PingUtil"

    const-string/jumbo v26, "exception detail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Exception:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "m":Ljava/util/regex/Matcher;
    .restart local v10    # "originTime":[Ljava/lang/Float;
    .restart local v11    # "originTimeCount":I
    .restart local v13    # "output":Ljava/lang/StringBuffer;
    .restart local v14    # "outputLineCount":I
    .restart local v15    # "pattern":Ljava/util/regex/Pattern;
    .restart local v17    # "pingProcess":Ljava/lang/Process;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "temp":Ljava/lang/String;
    .restart local v24    # "time":Ljava/lang/String;
    :catch_6
    move-exception v3

    goto/16 :goto_7

    .line 74
    :catch_7
    move-exception v3

    goto/16 :goto_6

    .line 72
    :catch_8
    move-exception v3

    goto/16 :goto_5

    .end local v11    # "originTimeCount":I
    .restart local v12    # "originTimeCount":I
    :cond_a
    move v11, v12

    .end local v12    # "originTimeCount":I
    .restart local v11    # "originTimeCount":I
    goto/16 :goto_4
.end method
