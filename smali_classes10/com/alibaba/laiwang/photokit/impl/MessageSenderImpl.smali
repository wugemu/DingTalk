.class public Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Lgzm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;
    }
.end annotation


# static fields
.field public static b:Landroid/util/TimingLogger;


# instance fields
.field a:Lcom/alibaba/doraemon/image/ImageMagician;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/util/TimingLogger;

    const-string/jumbo v1, "BitmapsFactory"

    const-string/jumbo v2, "compress"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->c:Landroid/content/Context;

    .line 50
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isSendOrigin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/16 v12, 0x500

    const/4 v6, 0x0

    .line 82
    sget-object v5, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    invoke-virtual {v5}, Landroid/util/TimingLogger;->reset()V

    .line 83
    const-string/jumbo v5, "compressFile"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isSendOrigin="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " url"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "originFile":Ljava/io/File;
    invoke-static {v1}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v2

    .line 91
    .local v2, "originFileSize":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 95
    if-nez p2, :cond_2

    const-string/jumbo v5, "gif"

    invoke-static {p1}, Lhcs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    :cond_2
    move-object v0, v1

    .line 98
    .local v0, "compressFile":Ljava/io/File;
    const-string/jumbo v5, "compressFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send origin img:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1
    if-eqz v0, :cond_3

    .line 115
    const-string/jumbo v5, "compressFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Compress suc:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "result: source size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " compress size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 118
    :cond_3
    sget-object v5, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    invoke-virtual {v5}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_0

    .line 1126
    .end local v0    # "compressFile":Ljava/io/File;
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    const/16 v5, 0xa

    shr-long/2addr v8, v5

    .line 1127
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getHeapDalvik()[J

    move-result-object v5

    .line 1128
    const/4 v7, 0x1

    aget-wide v10, v5, v7

    div-long v8, v10, v8

    long-to-double v8, v8

    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpl-double v5, v8, v10

    if-lez v5, :cond_5

    .line 1129
    new-instance v5, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$1;

    invoke-direct {v5, p0}, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$1;-><init>(Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;)V

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1149
    :cond_5
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->c:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1150
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 1154
    if-eqz v5, :cond_9

    .line 1155
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 1158
    :goto_2
    const-string/jumbo v7, "TestPicSize"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "WIFI level = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->c:Landroid/content/Context;

    invoke-static {v7}, Lhcn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1162
    new-instance v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;

    invoke-direct {v4, p0, v6}, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;-><init>(Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;B)V

    .line 1164
    const-string/jumbo v6, "2g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "3g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const/16 v6, -0x46

    if-ge v5, v6, :cond_7

    .line 1165
    :cond_6
    const v5, 0x3f19999a    # 0.6f

    iput v5, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->a:F

    .line 1166
    iput v12, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->b:I

    .line 104
    .local v4, "quality":Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;
    :goto_3
    const-string/jumbo v5, "compressFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "CompressQuality: lev="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->a:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pix="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-wide/32 v6, 0x19000

    cmp-long v5, v2, v6

    if-gtz v5, :cond_8

    .line 108
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->c:Landroid/content/Context;

    iget v6, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->a:F

    invoke-static {v5, p1, v6}, Lhci;->a(Landroid/content/Context;Ljava/lang/String;F)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "compressFile":Ljava/io/File;
    goto/16 :goto_1

    .line 1168
    .end local v0    # "compressFile":Ljava/io/File;
    .end local v4    # "quality":Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;
    :cond_7
    const/high16 v5, 0x3f400000    # 0.75f

    iput v5, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->a:F

    .line 1169
    iput v12, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->b:I

    goto :goto_3

    .line 111
    .restart local v4    # "quality":Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;
    :cond_8
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->c:Landroid/content/Context;

    iget v6, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->b:I

    iget v7, v4, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;->a:F

    invoke-static {v5, p1, v6, v7}, Lhci;->a(Landroid/content/Context;Ljava/lang/String;IF)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "compressFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v0    # "compressFile":Ljava/io/File;
    .end local v4    # "quality":Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl$a;
    :cond_9
    move v5, v6

    goto/16 :goto_2
.end method
