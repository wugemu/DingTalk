.class public Lcom/dbappsecurity/utl/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final END:Ljava/lang/String; = "\u0000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParseNumeric(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mathodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 36
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3, p1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 40
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3, p1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1
.end method

.method public static SecondCa(Ljava/lang/String;Ljava/lang/String;)J
    .locals 28
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-class v22, Lcom/dbappsecurity/utl/Util;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v22, "_"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dbappsecurity/utl/LogUts;->getInstance(Ljava/lang/String;)Lcom/dbappsecurity/utl/LogUts;

    move-result-object v14

    .line 69
    .local v14, "logUts":Lcom/dbappsecurity/utl/LogUts;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v5, "dfs":Ljava/text/SimpleDateFormat;
    const-wide/16 v6, 0x0

    .line 72
    .local v6, "between":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 73
    .local v4, "begin":Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 74
    .local v10, "end":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    sub-long v6, v22, v24

    .line 80
    .end local v4    # "begin":Ljava/util/Date;
    .end local v10    # "end":Ljava/util/Date;
    :goto_0
    const-wide/32 v22, 0x5265c00

    div-long v8, v6, v22

    .line 81
    .local v8, "day":J
    const-wide/32 v22, 0x36ee80

    div-long v22, v6, v22

    const-wide/16 v24, 0x18

    mul-long v24, v24, v8

    sub-long v12, v22, v24

    .line 82
    .local v12, "hour":J
    const-wide/32 v22, 0xea60

    div-long v22, v6, v22

    const-wide/16 v24, 0x18

    mul-long v24, v24, v8

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3c

    mul-long v24, v24, v12

    sub-long v16, v22, v24

    .line 83
    .local v16, "min":J
    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    const-wide/16 v24, 0x18

    mul-long v24, v24, v8

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3c

    mul-long v24, v24, v12

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3c

    mul-long v24, v24, v16

    sub-long v20, v22, v24

    .line 84
    .local v20, "s":J
    const-wide/16 v22, 0x18

    mul-long v22, v22, v8

    const-wide/16 v24, 0x3c

    mul-long v22, v22, v24

    const-wide/16 v24, 0x3c

    mul-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    sub-long v22, v6, v22

    const-wide/16 v24, 0x3c

    mul-long v24, v24, v12

    const-wide/16 v26, 0x3c

    mul-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3c

    mul-long v24, v24, v16

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v20

    sub-long v18, v22, v24

    .line 86
    .local v18, "ms":J
    const-string/jumbo v15, "\u65f6\u95f4\uff1a"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u5929"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u5c0f\u65f6"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u5206"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u79d2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u6beb\u79d2--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v15, v0}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v15, "\u79d2\u5dee\uff1a"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v24, 0x3e8

    div-long v24, v6, v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " \u79d2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v15, v0}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-wide/16 v22, 0x3e8

    div-long v22, v6, v22

    return-wide v22

    .line 76
    .end local v8    # "day":J
    .end local v12    # "hour":J
    .end local v16    # "min":J
    .end local v18    # "ms":J
    .end local v20    # "s":J
    :catch_0
    move-exception v11

    .line 77
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getCurrentdate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 52
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static strToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "mathodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3, p1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1
.end method
