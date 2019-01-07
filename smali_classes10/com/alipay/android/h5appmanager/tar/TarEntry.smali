.class public Lcom/alipay/android/h5appmanager/tar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"


# instance fields
.field protected file:Ljava/io/File;

.field protected header:Lcom/alipay/android/h5appmanager/tar/TarHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    .line 14
    new-instance v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tar/TarHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/h5appmanager/tar/TarHeader;)V
    .locals 1
    .param p1, "header"    # Lcom/alipay/android/h5appmanager/tar/TarHeader;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    .line 30
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/tar/TarEntry;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    .line 20
    invoke-virtual {p0, p2}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->extractTarHeader(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "headerBuf"    # [B

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/tar/TarEntry;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->parseTarHeader([B)V

    .line 26
    return-void
.end method


# virtual methods
.method public computeCheckSum([B)J
    .locals 6
    .param p1, "buf"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    const-wide/16 v2, 0x0

    .line 146
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 147
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-wide v2
.end method

.method public equals(Lcom/alipay/android/h5appmanager/tar/TarEntry;)Z
    .locals 2
    .param p1, "it"    # Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public extractTarHeader(Ljava/lang/String;)V
    .locals 7
    .param p1, "entryName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    move-object v1, p1

    .line 139
    invoke-static/range {v1 .. v6}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->createHeader(Ljava/lang/String;JJZ)Lcom/alipay/android/h5appmanager/tar/TarHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    .line 141
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/alipay/android/h5appmanager/tar/TarHeader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    return-object v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-wide v2, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->modTime:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v2, v2, Lcom/alipay/android/h5appmanager/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-wide v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDescendent(Lcom/alipay/android/h5appmanager/tar/TarEntry;)Z
    .locals 2
    .param p1, "desc"    # Lcom/alipay/android/h5appmanager/tar/TarEntry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-byte v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->linkFlag:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTarHeader([B)V
    .locals 8
    .param p1, "bh"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xc

    const/16 v5, 0x64

    const/16 v4, 0x8

    .line 207
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/4 v1, 0x0

    invoke-static {p1, v1, v5}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 210
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    invoke-static {p1, v5, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->mode:I

    .line 213
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x6c

    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userId:I

    .line 216
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x74

    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupId:I

    .line 219
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x7c

    invoke-static {p1, v1, v6}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->size:J

    .line 222
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x88

    invoke-static {p1, v1, v6}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->modTime:J

    .line 225
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x94

    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->checkSum:I

    .line 229
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x9c

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->linkFlag:B

    .line 231
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x9d

    invoke-static {p1, v1, v5}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 234
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x101

    .line 235
    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 238
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x109

    invoke-static {p1, v1, v7}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 242
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x129

    invoke-static {p1, v1, v7}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 246
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x149

    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->devMajor:I

    .line 250
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x151

    invoke-static {p1, v1, v4}, Lcom/alipay/android/h5appmanager/tar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->devMinor:I

    .line 254
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const/16 v1, 0x159

    const/16 v2, 0x9b

    invoke-static {p1, v1, v2}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 256
    return-void
.end method

.method public setGroupId(I)V
    .locals 1
    .param p1, "groupId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iput p1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupId:I

    .line 73
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 89
    return-void
.end method

.method public setIds(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->setUserId(I)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->setGroupId(I)V

    .line 94
    return-void
.end method

.method public setModTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    iput-wide v2, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->modTime:J

    .line 98
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 6
    .param p1, "time"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->modTime:J

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 57
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iput-wide p1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->size:J

    .line 118
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iput p1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userId:I

    .line 65
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 11
    .param p1, "outbuf"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-static {v8, p1, v9, v10}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 158
    .local v4, "offset":I
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->mode:I

    int-to-long v8, v8

    const/16 v10, 0x8

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    move-result v4

    .line 160
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userId:I

    int-to-long v8, v8

    const/16 v10, 0x8

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    move-result v4

    .line 162
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupId:I

    int-to-long v8, v8

    const/16 v10, 0x8

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    move-result v4

    .line 165
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-wide v6, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->size:J

    .line 167
    .local v6, "size":J
    const/16 v8, 0xc

    invoke-static {v6, v7, p1, v4, v8}, Lcom/alipay/android/h5appmanager/tar/Octal;->getLongOctalBytes(J[BII)I

    move-result v4

    .line 169
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-wide v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->modTime:J

    const/16 v10, 0xc

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getLongOctalBytes(J[BII)I

    move-result v4

    .line 172
    move v1, v4

    .line 173
    .local v1, "csOffset":I
    const/4 v0, 0x0

    .local v0, "c":I
    move v5, v4

    .end local v4    # "offset":I
    .local v5, "offset":I
    :goto_0
    const/16 v8, 0x8

    if-ge v0, v8, :cond_0

    .line 174
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v8, 0x20

    aput-byte v8, p1, v5

    .line 173
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 177
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-byte v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->linkFlag:B

    aput-byte v8, p1, v5

    .line 179
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    const/16 v9, 0x64

    invoke-static {v8, p1, v4, v9}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 181
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->magic:Ljava/lang/StringBuffer;

    const/16 v9, 0x8

    invoke-static {v8, p1, v4, v9}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 183
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    const/16 v9, 0x20

    invoke-static {v8, p1, v4, v9}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 185
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    const/16 v9, 0x20

    invoke-static {v8, p1, v4, v9}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 187
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->devMajor:I

    int-to-long v8, v8

    const/16 v10, 0x8

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    move-result v4

    .line 189
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->devMinor:I

    int-to-long v8, v8

    const/16 v10, 0x8

    invoke-static {v8, v9, p1, v4, v10}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    move-result v4

    .line 191
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/tar/TarEntry;->header:Lcom/alipay/android/h5appmanager/tar/TarHeader;

    iget-object v8, v8, Lcom/alipay/android/h5appmanager/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    const/16 v9, 0x9b

    invoke-static {v8, p1, v4, v9}, Lcom/alipay/android/h5appmanager/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v4

    .line 194
    :goto_1
    array-length v8, p1

    if-ge v4, v8, :cond_1

    .line 195
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/4 v8, 0x0

    aput-byte v8, p1, v4

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->computeCheckSum([B)J

    move-result-wide v2

    .line 200
    .local v2, "checkSum":J
    const/16 v8, 0x8

    invoke-static {v2, v3, p1, v1, v8}, Lcom/alipay/android/h5appmanager/tar/Octal;->getCheckSumOctalBytes(J[BII)I

    .line 202
    return-void
.end method
