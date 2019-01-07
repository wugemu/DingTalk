.class public Ljis;
.super Ljava/lang/Object;
.source "EudemonManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static a:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static final j:Ljava/util/concurrent/locks/ReentrantLock;

.field private static k:Ljis;


# instance fields
.field public b:Z

.field public c:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Ljis;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljis;->d:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "startservice -n {packname}/com.taobao.accs.ChannelService"

    sput-object v0, Ljis;->a:Ljava/lang/String;

    .line 76
    const/16 v0, 0x1c20

    sput v0, Ljis;->h:I

    .line 78
    const/16 v0, 0x9c4

    sput v0, Ljis;->i:I

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljis;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Ljis;->k:Ljis;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "timeout"    # I
    .param p3, "isDebug"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x50

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Ljis;->e:Landroid/content/Context;

    .line 74
    const/16 v0, 0x708

    iput v0, p0, Ljis;->g:I

    .line 84
    iput-boolean v3, p0, Ljis;->b:Z

    .line 87
    const-string/jumbo v0, "100001"

    iput-object v0, p0, Ljis;->l:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "tb_accs_eudemon_1.1.3"

    iput-object v0, p0, Ljis;->m:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljis;->n:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "21646297"

    iput-object v0, p0, Ljis;->o:Ljava/lang/String;

    .line 91
    iput v3, p0, Ljis;->p:I

    .line 92
    const-string/jumbo v0, "100.69.165.28"

    iput-object v0, p0, Ljis;->q:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "http://100.69.165.28/agoo/report"

    iput-object v0, p0, Ljis;->r:Ljava/lang/String;

    .line 94
    iput v2, p0, Ljis;->s:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljis;->t:Z

    .line 101
    iput-object v1, p0, Ljis;->c:Landroid/os/Handler;

    .line 102
    iput-object v1, p0, Ljis;->u:Landroid/os/HandlerThread;

    .line 1141
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "soManager-threads"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljis;->u:Landroid/os/HandlerThread;

    .line 1142
    iget-object v0, p0, Ljis;->u:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1143
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ljis;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljis;->c:Landroid/os/Handler;

    .line 111
    const-string/jumbo v0, "startservice -n {packname}/com.taobao.accs.ChannelService"

    sput-object v0, Ljis;->a:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Ljis;->e:Landroid/content/Context;

    .line 113
    iput p2, p0, Ljis;->g:I

    .line 114
    iput-boolean p3, p0, Ljis;->b:Z

    .line 115
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    const-string/jumbo v1, "CPU_ABI"

    invoke-static {v0, v1}, Ljis;->a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljis;->f:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljis;->n:Ljava/lang/String;

    .line 118
    const/16 v0, 0xd5

    iput v0, p0, Ljis;->p:I

    .line 119
    iget-object v0, p0, Ljis;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljis;->o:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isReleaseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "agoodm.m.taobao.com"

    iput-object v0, p0, Ljis;->q:Ljava/lang/String;

    .line 122
    iput v2, p0, Ljis;->s:I

    .line 123
    const-string/jumbo v0, "http://agoodm.m.taobao.com/agoo/report"

    iput-object v0, p0, Ljis;->r:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "1009527"

    iput-object v0, p0, Ljis;->l:Ljava/lang/String;

    .line 137
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isPreviewMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "110.75.98.154"

    iput-object v0, p0, Ljis;->q:Ljava/lang/String;

    .line 127
    iput v2, p0, Ljis;->s:I

    .line 128
    const-string/jumbo v0, "http://agoodm.wapa.taobao.com/agoo/report"

    iput-object v0, p0, Ljis;->r:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "1009527"

    iput-object v0, p0, Ljis;->l:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    const-string/jumbo v0, "100.69.168.33"

    iput-object v0, p0, Ljis;->q:Ljava/lang/String;

    .line 132
    iput v2, p0, Ljis;->s:I

    .line 133
    const-string/jumbo v0, "http://100.69.168.33/agoo/report"

    iput-object v0, p0, Ljis;->r:Ljava/lang/String;

    .line 134
    const/16 v0, 0x3c

    iput v0, p0, Ljis;->g:I

    .line 135
    const-string/jumbo v0, "9527"

    iput-object v0, p0, Ljis;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Ljis;->f:Ljava/lang/String;

    const-string/jumbo v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "armeabi/"

    .line 150
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljis;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 163
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IZ)Ljis;
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "timeout"    # I
    .param p2, "isDebug"    # Z

    .prologue
    .line 177
    :try_start_0
    sget-object v1, Ljis;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    sget-object v1, Ljis;->k:Ljis;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljis;

    const/16 v2, 0x258

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljis;-><init>(Landroid/content/Context;IZ)V

    sput-object v1, Ljis;->k:Ljis;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    sget-object v1, Ljis;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    :goto_0
    sget-object v1, Ljis;->k:Ljis;

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    sget-object v1, Ljis;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Ljis;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 567
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "agoo.pid"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    .local v4, "oFile":Ljava/io/File;
    sget-object v6, Ljis;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pid path:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 572
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v2, 0x0

    .line 580
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 581
    .local v5, "pid":I
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write([C)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 592
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v4    # "oFile":Ljava/io/File;
    .end local v5    # "pid":I
    :cond_1
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e1":Ljava/lang/Throwable;
    sget-object v6, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v7, "error in create file"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v1, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 589
    .end local v1    # "e1":Ljava/lang/Throwable;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "oFile":Ljava/io/File;
    .restart local v5    # "pid":I
    :catch_1
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v7, "error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v5    # "pid":I
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    sget-object v6, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v7, "save pid error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    if-eqz v2, :cond_1

    .line 588
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 589
    :catch_3
    move-exception v0

    .line 590
    sget-object v6, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v7, "error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 587
    :goto_2
    if-eqz v2, :cond_2

    .line 588
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 591
    :cond_2
    :goto_3
    throw v6

    .line 589
    :catch_4
    move-exception v0

    .line 590
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v7, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v8, "error"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v0, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 586
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "pid":I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 583
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private a(Ljava/io/FileOutputStream;Ljava/io/File;)V
    .locals 18
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Ljis;->f:Ljava/lang/String;

    .line 2022
    const-string/jumbo v14, "arm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2023
    const-string/jumbo v6, "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"

    .line 239
    .local v6, "data":Ljava/lang/String;
    :goto_0
    sget-object v13, Ljis;->d:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, ">>>soDataSize:datasize:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lhv;->a([BI)[B

    move-result-object v11

    .line 241
    .local v11, "soData":[B
    sget-object v13, Ljis;->d:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, ">>>soDataSize:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    array-length v13, v11

    if-gtz v13, :cond_3

    .line 276
    :cond_0
    :goto_1
    return-void

    .line 2025
    .end local v6    # "data":Ljava/lang/String;
    .end local v11    # "soData":[B
    :cond_1
    const-string/jumbo v14, "x86"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2026
    const-string/jumbo v6, "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////iwCJRCQw642Lg/z///+LAIlEJDTpfP///4uD/P///4sAiUQkLOlr////gEwkeALpYf///4uD/P///4sAiQQk6AH+//+JRCRs6Uj///+Lg/z///+NjCSMAAAAiUwkIInKiwDoPgMAAItMJCAx0oXAD0TRiVQkaOka////i4P8////iwCJRCR06Qn///+Lg/z///+LAIlEJFTp+P7//4BMJHgB6e7+//+Lg/z///+LAIlEJFDp3f7//4uD/P///4sAiUQkSOnM/v//i4P8////iwCJBCTobP3//4lEJGTps/7//4uD/P///4sAiUQkXOmi/v//i4P8////iwCJRCRM6ZH+//+Lg/z///+NTCR8iUwkIInKiwDoigIAAItMJCAx0oXAD0TRiVQkYOlm/v//i4P8////iwCJRCRY6VX+//+Lg/z///+LAIlEJHDpRP7//7gBAAAAi5P4////i4wknAAAAIsSOdEPhTsBAACNZfRbXl9dw4t8JDyJwYX/D4TrAAAAg3wkOAAPhOAAAACDfCQwAA+E1QAAAIN8JDQAD5TAD4THAAAA8q730YPBHokMJOif/P//hcCJxw+EwgAAAIk8JI2Dw+v//4lEJAyLRCQ8iUQkCI2D2ev//4lEJATogfz//8dEJAQAAAAAiTwk6IH8//+FwInGdH6JPCTog/z//4k0JI2D3uv//4lEJATogfz//4XAicd0fOiG/P//hcB4aWaQdA+JNCTohvz//zHA6SD///+LRCQkiUQkEItEJCyJRCQMi0QkKIlEJAiLRCQ0iUQkBItEJDiJBCT/14k0JOhO/P//McDp6P7//7j+////6d7+//+4/P///+nU/v//uP3////pyv7//7j6////6cD+//+JNCToF/z//7j7////6a7+///oyAAAAAAAAAAAAAAAjWQk9ItEJBCFwHQC/9CNZCQMw422AAAAAI28JwAAAABVieVT6LMAAACBw8sVAACD5PCNZCTgi4Po////iUQkFIuD7P///4lEJBiLg/D///+JRCQcjUQkFIlEJAyLg/T///+JRCQIx0QkBAAAAACNRQSJBCTol/r//420JgAAAABT6FYAAACBw24VAACNZCTojYNMAAAAiUQkCItEJCCJRCQEjYMM6v//iQQk6HD6//+NZCQYW8ONdgCNvCcAAAAAU+gWAAAAgcMuFQAAjWQk+Ohb+v//jWQkCFvDkJCQkJCQkJCQixwkwwAAAAAAAAAAV4nXVonGU+jg////gcP4FAAAjWQk8IkEJOgy+v//hcB0NoN4CAp0SItAEIsAiwCJBCToKfr//4lEJATHRCQIEAAAAIk8JOgl+v//McCNZCQQW15fw412AIk0JOjw+f//hcB1vo22AAAAAI2/AAAAALj/////69aQjbQmAAAAAIn2jbwnAAAAAAgAAAAEAAAAAQAAAEFuZHJvaWQAEwAAAHM6cDpuOmY6Yzp0OlA6SzpTOlU6RDpMOkk6TzpYOlk6QTpXOlRaAGxpYmNvY2tsb2dpYy0xLjEuMy5zbwAlcyVzAFJ1blRhc2sAAACX6P//qOj//6jo//+G6P//qOj//6jo//+o6P//qOj//1vo//+o6P//Suj//zno//+o6P//qOj//yDo//8P6P//qOj//6jo///+5///9Of//+Pn//+o6P//0uf//6Tn//+L5///gef//6jo//+o6P//qOj//6jo//+o6P//qOj//6jo//+o6P//cOf//6jo//+o6P//X+f//6jo//+o6P//qOj//6jo//+o6P//qOj//6jo//9R5///qOj//0Pn//+o6P//qOj//zXn//8f5///FAAAAAAAAAABelIAAXwIARsMBASIAQAAFAAAABwAAAA0/f//EwAAAABEDhBODgQAGAAAADQAAAA8/f//WQAAAABBDgiFAkINBUGDAxwAAABQAAAAgP3//zYAAAAAQQ4IgwJPDiBkDghBDgTDHAAAAHAAAACg/f//GwAAAABBDgiDAk8OEEkOCEEOBMMQAAAAkAAAAJz9//8MAAAAAAAAADQAAACkAAAAnP3//3cAAAAAQQ4IhwJDDgyGA0MOEIMETw4gewoOEEHDDgxBxg4IQccOBEQLAAAALAAAANwAAACE+P//6AMAAABBDgiFAkcNBUOHA4YEgwUDoQIKw0HGQcdBxQwEBEELJAAAAAwBAABE9///EAEAAAAOCEYODEoPC3QEeAA/GjsqMiQiAAAAAAAAAAABGwM7yP7//wgAAAAg9///1P///zD4//+k////IPz//+T+//9A/P///P7//6D8//8Y////4Pz//zj////8/P//WP///xD9//9s////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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"

    goto :goto_0

    .line 2028
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_0

    .line 248
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v11    # "soData":[B
    :cond_3
    const/4 v8, 0x0

    .line 250
    .local v8, "in":Ljava/io/ByteArrayInputStream;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 251
    .local v12, "statFs":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 252
    .local v3, "blockSize":I
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v4, v13

    .line 253
    .local v4, "availableBlocks":J
    int-to-long v14, v3

    mul-long/2addr v14, v4

    array-length v13, v11

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_4

    .line 254
    sget-object v13, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v14, "Disk is not enough for writing this file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_4
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .local v9, "in":Ljava/io/ByteArrayInputStream;
    const/16 v13, 0x64

    :try_start_1
    new-array v2, v13, [B

    .line 261
    .local v2, "array":[B
    :goto_2
    const/4 v13, 0x0

    const/16 v14, 0x64

    invoke-virtual {v9, v2, v13, v14}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v10

    .local v10, "len":I
    if-ltz v10, :cond_5

    .line 262
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 264
    .end local v2    # "array":[B
    .end local v10    # "len":I
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 265
    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    :goto_3
    :try_start_2
    sget-object v13, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v14, "error in write files"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v7, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V

    .line 270
    if-eqz v8, :cond_0

    .line 271
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 273
    :catch_1
    move-exception v7

    .line 274
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "array":[B
    .restart local v9    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "len":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V

    .line 271
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 273
    :catch_2
    move-exception v7

    .line 274
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 268
    .end local v2    # "array":[B
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .end local v10    # "len":I
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v13

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->sync()V

    .line 270
    if-eqz v8, :cond_6

    .line 271
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 275
    :cond_6
    :goto_5
    throw v13

    .line 273
    :catch_3
    move-exception v7

    .line 274
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 268
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 264
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p0, "strDir"    # Ljava/lang/String;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 618
    const-string/jumbo v6, "TAG."

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "sh"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 621
    .local v3, "localProcess":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 623
    .local v1, "localDataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 625
    .local v2, "localDataOutputStream":Ljava/io/DataOutputStream;
    const-string/jumbo v6, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cd "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 628
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " &\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v6, "exit \n"

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 631
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 632
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 633
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 634
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 635
    .local v5, "strMsg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 636
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_1
    const/4 v6, 0x1

    .line 642
    .end local v0    # "buf":[B
    .end local v1    # "localDataInputStream":Ljava/io/DataInputStream;
    .end local v2    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v3    # "localProcess":Ljava/lang/Process;
    .end local v5    # "strMsg":Ljava/lang/String;
    :goto_0
    return v6

    .line 639
    :catch_0
    move-exception v4

    .line 640
    .local v4, "paramString1":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 195
    const/4 v5, 0x0

    .line 197
    .local v5, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "DaemonServer"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v7, "oFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 201
    :cond_0
    sget-object v8, Ljis;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "open assets from = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljis;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "DaemonServer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-boolean v8, p0, Ljis;->b:Z

    if-eqz v8, :cond_2

    .line 206
    iget-object v8, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 207
    .local v1, "assertManage":Landroid/content/res/AssetManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljis;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "DaemonServer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 208
    const/16 v8, 0x64

    new-array v0, v8, [B

    .line 210
    .local v0, "array":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-lez v6, :cond_3

    .line 211
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "array":[B
    .end local v1    # "assertManage":Landroid/content/res/AssetManager;
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    .line 218
    .local v3, "ep":Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v9, "error in copy daemon files"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v3, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v5, :cond_1

    .line 222
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 228
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 233
    .end local v3    # "ep":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 215
    :cond_2
    :try_start_4
    invoke-direct {p0, v4, v7}, Ljis;->a(Ljava/io/FileOutputStream;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :cond_3
    if-eqz v5, :cond_4

    .line 222
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 228
    :cond_4
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 229
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v9, "error in close io"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v9, "error in close input file"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "ep":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v9, "error in close input file"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v9, "error in close io"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ep":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_5

    .line 222
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 228
    :cond_5
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 231
    :goto_5
    throw v8

    .line 223
    :catch_5
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v10, "error in close input file"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v2, v11}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v10, "error in close io"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v2, v11}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private c()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "basePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-s \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/lib/\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v4, "-n \"runServer\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-p \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2355
    sget-object v6, Ljis;->a:Ljava/lang/String;

    const-string/jumbo v7, "\\{packname\\}"

    iget-object v8, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2359
    const/16 v7, 0xf

    if-le v6, v7, :cond_0

    .line 2360
    const-string/jumbo v6, " --user 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-f \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-t \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljis;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v4, "-c \"agoo.pid\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v4, p0, Ljis;->n:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-P "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    iget-object v4, p0, Ljis;->l:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-K "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_2
    iget-object v4, p0, Ljis;->m:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-U "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_3
    iget-object v4, p0, Ljis;->r:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-L "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-D "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljis;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v4, p0, Ljis;->q:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-I "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljis;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_5
    iget v4, p0, Ljis;->s:I

    if-lez v4, :cond_6

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-O "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljis;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_6
    iget-object v4, p0, Ljis;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "proxyIp":Ljava/lang/String;
    iget-object v4, p0, Ljis;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyPort(Landroid/content/Context;)I

    move-result v2

    .line 325
    .local v2, "proxyPort":I
    if-eqz v1, :cond_7

    if-lez v2, :cond_7

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-X "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-Y "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_7
    iget-boolean v4, p0, Ljis;->t:Z

    if-eqz v4, :cond_8

    .line 334
    const-string/jumbo v4, "-T "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_8
    const-string/jumbo v4, "-Z "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 340
    iget-object v2, p0, Ljis;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "utdid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "null"

    .line 342
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"package\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"appKey\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljis;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"utdid\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"sdkVersion\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljis;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 348
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    sget-object v2, Ljis;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getReportData failed for url encode, data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e()V
    .locals 28

    .prologue
    .line 375
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "/data/data/"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljis;->e:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "/eudemon"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v13, 0x0

    .line 381
    .local v13, "fin":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 382
    .local v15, "fos":Ljava/io/FileOutputStream;
    const/16 v22, 0x0

    .line 383
    .local v22, "reader":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 385
    .local v4, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .local v14, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .local v23, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 390
    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    .local v5, "buffreader":Ljava/io/BufferedReader;
    :try_start_3
    const-string/jumbo v18, ""

    .line 391
    .local v18, "output":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 392
    const-string/jumbo v25, "\\|"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, "fields":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 396
    const/16 v25, 0x0

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 397
    .local v19, "pid":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 398
    .local v24, "start_time":I
    const/16 v25, 0x2

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 399
    .local v7, "end_time":I
    sub-int v3, v7, v24

    .line 400
    .local v3, "alive_time":I
    const/16 v25, 0x3

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 401
    .local v21, "pull_count":Ljava/lang/String;
    const/16 v25, 0x4

    aget-object v25, v10, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "exit_code":Ljava/lang/String;
    const-string/jumbo v25, "0"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 404
    new-instance v20, Ljava/io/File;

    const-string/jumbo v25, "/proc"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v20, "pidFile":Ljava/io/File;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "pidfile:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 408
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 409
    goto/16 :goto_1

    .line 411
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Ljis;->g:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v3, v3, v25

    .line 2366
    .end local v20    # "pidFile":Ljava/io/File;
    :cond_4
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "AndroidVer="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v26, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&Model="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&AndroidSdk="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&AccsVer=213"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&Appkey="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ljis;->e:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&PullCount="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&Pid="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&StartTime="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&EndTime="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&ExitCode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "&AliveTime="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2370
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "EUDEMON_ENDSTAT doReportDaemonStat:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    invoke-static {}, Ljjo;->a()Ljjo;

    const v26, 0x101d1

    const-string/jumbo v27, "EUDEMON_ENDSTAT"

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_1

    .line 420
    .end local v3    # "alive_time":I
    .end local v7    # "end_time":I
    .end local v9    # "exit_code":Ljava/lang/String;
    .end local v10    # "fields":[Ljava/lang/String;
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "output":Ljava/lang/String;
    .end local v19    # "pid":Ljava/lang/String;
    .end local v21    # "pull_count":Ljava/lang/String;
    .end local v24    # "start_time":I
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v4    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object v13, v14

    .line 421
    .end local v14    # "fin":Ljava/io/FileInputStream;
    .local v8, "ep":Ljava/lang/Exception;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "report daemon stat exp:"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    if-eqz v4, :cond_5

    .line 425
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 430
    :cond_5
    :goto_3
    if-eqz v22, :cond_6

    .line 432
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 437
    :cond_6
    :goto_4
    if-eqz v13, :cond_7

    .line 439
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 444
    :cond_7
    :goto_5
    if-eqz v15, :cond_0

    .line 446
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 447
    :catch_1
    move-exception v6

    .line 448
    .local v6, "e":Ljava/io/IOException;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 416
    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "ep":Ljava/lang/Exception;
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "output":Ljava/lang/String;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :cond_8
    :try_start_9
    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 417
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 418
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 425
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 432
    :goto_6
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 439
    :goto_7
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 446
    :goto_8
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 447
    :catch_2
    move-exception v6

    .line 448
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 426
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 427
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close buffreader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 433
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    .line 434
    .restart local v6    # "e":Ljava/lang/Throwable;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close reader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 440
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v6

    .line 441
    .local v6, "e":Ljava/io/IOException;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 426
    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "fin":Ljava/io/FileInputStream;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "output":Ljava/lang/String;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "ep":Ljava/lang/Exception;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v6

    .line 427
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close buffreader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 433
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v6

    .line 434
    .restart local v6    # "e":Ljava/lang/Throwable;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close reader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 440
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v6

    .line 441
    .local v6, "e":Ljava/io/IOException;
    sget-object v25, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 423
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "ep":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    :goto_9
    if-eqz v4, :cond_9

    .line 425
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 430
    :cond_9
    :goto_a
    if-eqz v22, :cond_a

    .line 432
    :try_start_10
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 437
    :cond_a
    :goto_b
    if-eqz v13, :cond_b

    .line 439
    :try_start_11
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 444
    :cond_b
    :goto_c
    if-eqz v15, :cond_c

    .line 446
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 449
    :cond_c
    :goto_d
    throw v25

    .line 426
    :catch_9
    move-exception v6

    .line 427
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v26, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v27, "error in close buffreader stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 433
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v6

    .line 434
    .restart local v6    # "e":Ljava/lang/Throwable;
    sget-object v26, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v27, "error in close reader stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 440
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v6

    .line 441
    .local v6, "e":Ljava/io/IOException;
    sget-object v26, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v27, "error in close input file"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 447
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 448
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v26, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v27, "error in close input file"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 423
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v25

    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v25

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v25

    move-object v4, v5

    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v4    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "output":Ljava/lang/String;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v25

    move-object v4, v5

    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v4    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v15, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .line 420
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "output":Ljava/lang/String;
    :catch_d
    move-exception v8

    goto/16 :goto_2

    .end local v13    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    :catch_e
    move-exception v8

    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v8

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    .end local v13    # "fin":Ljava/io/FileInputStream;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "output":Ljava/lang/String;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catch_10
    move-exception v8

    move-object v4, v5

    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .restart local v4    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v15, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 598
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_5

    .line 2469
    sget-object v0, Ljis;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "api level is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2470
    iget-object v1, p0, Ljis;->e:Landroid/content/Context;

    .line 2523
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2524
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2525
    const-string/jumbo v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2527
    if-eqz v0, :cond_1

    .line 3505
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".intent.action.COCKROACH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3508
    const-string/jumbo v4, "cockroach"

    const-string/jumbo v5, "cockroach-PPreotect"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3509
    const-string/jumbo v4, "pack"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3510
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2530
    const/16 v1, 0x17

    if-gt v2, v1, :cond_0

    const/4 v1, 0x6

    if-ge v2, v1, :cond_4

    .line 2531
    :cond_0
    sget-object v1, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v2, "time is night, do not wakeup cpu"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3552
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3554
    const/4 v1, 0x3

    sget v2, Ljis;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v4

    sget v4, Ljis;->h:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2472
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 2474
    :try_start_1
    invoke-direct {p0}, Ljis;->b()Ljava/lang/String;

    move-result-object v0

    .line 2475
    invoke-direct {p0}, Ljis;->e()V

    .line 5283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5284
    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chmod 500 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljis;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 5286
    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Ljis;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljis;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 5287
    sget-object v1, Ljis;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ljis;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2482
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Ljjo;->a()Ljjo;

    const v0, 0x101d1

    const-string/jumbo v1, "EUDEMON_START"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 606
    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 2534
    :cond_4
    sget-object v1, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v2, "time is daytime, wakeup cpu for keeping connecntion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4543
    if-eqz v6, :cond_1

    .line 4544
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4546
    const/4 v1, 0x2

    sget v2, Ljis;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v4

    sget v4, Ljis;->i:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 603
    :catch_0
    move-exception v7

    .line 604
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v0, Ljis;->d:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage error"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v7, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2477
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 2478
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 600
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 5496
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljis;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "daemonserver.pid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5497
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5498
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
