.class public Lcom/alibaba/doraemon/audio/opus/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public static getExtention(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, ""

    .line 82
    .local v0, "extension":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 83
    .local v1, "i":I
    if-lez v1, :cond_0

    .line 84
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 33
    .local v2, "rst":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 38
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OpusTool"

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/audio/opus/Utils;->printE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isOpusFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-direct {v0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;-><init>()V

    .line 95
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusFile(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWAVFile(Ljava/lang/String;)Z
    .locals 13
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 43
    new-array v3, v9, [B

    .line 45
    .local v3, "header":[B
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":File does not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v2    # "f":Ljava/io/File;
    :goto_0
    return v8

    .line 50
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 51
    .local v0, "actualLength":J
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v4, "io":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v4, v3, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    .line 53
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-direct {v10, v3, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-direct {v10, v3, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v9, "RIFFWAVEfmt "

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":It\'s not a WAV file!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "actualLength":J
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":File Error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    .restart local v0    # "actualLength":J
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x4

    :try_start_1
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x5

    aget-byte v10, v3, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    const/4 v10, 0x6

    aget-byte v10, v3, v10

    shl-int/lit8 v10, v10, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    const/4 v10, 0x7

    aget-byte v10, v3, v10

    shl-int/lit8 v10, v10, 0x18

    const/high16 v11, -0x1000000

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    int-to-long v6, v9

    .line 63
    .local v6, "paraLength":J
    const-wide/16 v10, 0x8

    sub-long v10, v0, v10

    cmp-long v9, v6, v10

    if-eqz v9, :cond_2

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":It might be a WAV file, but it\'s corrupted!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 67
    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public static printE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 23
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 24
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static readObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 113
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "fin":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v4, "oin":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 116
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 117
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 121
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    .local v3, "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 118
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "OpusTool"

    invoke-static {v5, v0}, Lcom/alibaba/doraemon/audio/opus/Utils;->printE(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 121
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v2    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    move-object v3, v2

    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static saveObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v2, "oout":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 105
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v2    # "oout":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OpusTool"

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/audio/opus/Utils;->printE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
