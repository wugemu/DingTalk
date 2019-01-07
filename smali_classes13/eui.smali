.class public final Leui;
.super Ljava/lang/Object;
.source "SearchEngineUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1079
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1080
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    .line 1081
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    .line 1082
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    .line 1083
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    .line 1084
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1085
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "raw":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 70
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1089
    if-eqz v3, :cond_0

    array-length v2, v3

    if-gtz v2, :cond_1

    .line 1090
    :cond_0
    const-string/jumbo v2, ""

    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 1092
    .restart local v0    # "md":Ljava/security/MessageDigest;
    :cond_1
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    .line 1093
    array-length v5, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-byte v6, v3, v2

    .line 1094
    and-int/lit16 v6, v6, 0xff

    .line 1095
    const/16 v7, 0x10

    if-ge v6, v7, :cond_2

    const-string/jumbo v7, "0"

    invoke-virtual {v4, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1096
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1093
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "maxLen"    # I

    .prologue
    .line 139
    :cond_0
    const-string/jumbo v0, "red"

    .line 1152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v1, v0}, Leui;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "maxLen"    # I
    .param p3, "leftTag"    # Ljava/lang/String;
    .param p4, "rightTag"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move-object v2, p0

    .line 192
    :cond_1
    :goto_0
    return-object v2

    .line 177
    :cond_2
    const/4 v2, 0x0

    .line 179
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    .line 180
    invoke-virtual {p3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v8, "utf-8"

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 179
    invoke-static {v5, v6, p2, v7, v8}, Lcom/alibaba/android/searchengine/jni/Searcher;->highlight([B[BI[B[B)[B

    move-result-object v0

    .line 181
    .local v0, "bytes":[B
    if-eqz v0, :cond_3

    .line 182
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .line 189
    .end local v0    # "bytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    move-object v2, p0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v4

    .line 185
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 186
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 187
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    const-string/jumbo v0, "SearchIndexBuild"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "hanzi"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5a

    const/16 v8, 0x41

    .line 103
    if-nez p0, :cond_0

    .line 127
    .local v0, "ch":C
    .local v1, "i":I
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object p0

    .line 107
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .restart local v0    # "ch":C
    const/16 v5, 0x61

    if-lt v0, v5, :cond_1

    const/16 v5, 0x7a

    if-le v0, v5, :cond_3

    :cond_1
    if-lt v0, v8, :cond_2

    if-le v0, v9, :cond_3

    :cond_2
    const/16 v5, 0x30

    if-lt v0, v5, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    .line 112
    :cond_3
    if-lt v0, v8, :cond_4

    if-gt v0, v9, :cond_4

    .line 113
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 115
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_5
    add-int/lit8 v5, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 120
    .local v4, "utf8byte":[B
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/searchengine/jni/Searcher;->convertPinyin([B)[B

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "utf8byte":[B
    :catch_0
    move-exception v5

    goto :goto_0

    .line 127
    .end local v0    # "ch":C
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
