.class public Lciu;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lciu$b;,
        Lciu$a;
    }
.end annotation


# static fields
.field private static a:Lciu;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lciu$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lciu;->b:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lciu$1;

    invoke-direct {v1, p0}, Lciu$1;-><init>(Lciu;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lciu;->d:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic a(Lciu;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lciu;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 11
    iput-object p1, p0, Lciu;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lciu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lciu;

    .prologue
    .line 11
    iget-object v0, p0, Lciu;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a()Lciu;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lciu;->a:Lciu;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lciu;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lciu;->a:Lciu;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lciu;

    invoke-direct {v0}, Lciu;-><init>()V

    sput-object v0, Lciu;->a:Lciu;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lciu;->a:Lciu;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lciu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lciu;

    .prologue
    .line 11
    iget-object v0, p0, Lciu;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lciu;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciu$a;

    .line 153
    .local v0, "lastInfo":Lciu$a;
    if-eqz v0, :cond_0

    .line 10048
    iget-object v1, v0, Lciu$a;->a:Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lciu;->d:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v1, p0, Lciu;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "priority"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lciu;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciu$a;

    .line 77
    .local v0, "lastInfo":Lciu$a;
    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 1056
    :cond_1
    iget v2, v0, Lciu$a;->c:I

    .line 80
    if-le v2, p2, :cond_0

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lciu$a;)Z
    .locals 6
    .param p1, "newInfo"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x7530

    const/4 v1, 0x1

    .line 111
    .line 1115
    if-eqz p1, :cond_2

    .line 1116
    iget-object v0, p0, Lciu;->b:Landroid/util/SparseArray;

    .line 2052
    iget v2, p1, Lciu$a;->b:I

    .line 1116
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciu$a;

    .line 1117
    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lciu;->b:Landroid/util/SparseArray;

    .line 3052
    iget v2, p1, Lciu$a;->b:I

    .line 1118
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1119
    iget-object v0, p0, Lciu;->d:Landroid/os/Handler;

    .line 4052
    iget v2, p1, Lciu$a;->b:I

    .line 1119
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 1140
    :goto_0
    return v0

    .line 4056
    :cond_0
    iget v2, v0, Lciu$a;->c:I

    .line 5056
    iget v3, p1, Lciu$a;->c:I

    .line 1122
    if-gt v2, v3, :cond_2

    .line 1125
    iget-object v2, p0, Lciu;->d:Landroid/os/Handler;

    .line 6052
    iget v3, p1, Lciu$a;->b:I

    .line 1125
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    iget-object v2, p0, Lciu;->b:Landroid/util/SparseArray;

    .line 7052
    iget v3, p1, Lciu$a;->b:I

    .line 1126
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1127
    iget-object v2, p0, Lciu;->c:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 1128
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lciu;->c:Landroid/os/Handler;

    .line 1130
    :cond_1
    iget-object v2, p0, Lciu;->c:Landroid/os/Handler;

    new-instance v3, Lciu$2;

    invoke-direct {v3, p0, v0, p1}, Lciu$2;-><init>(Lciu;Lciu$a;Lciu$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1138
    iget-object v0, p0, Lciu;->b:Landroid/util/SparseArray;

    .line 8052
    iget v2, p1, Lciu$a;->b:I

    .line 1138
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1139
    iget-object v0, p0, Lciu;->d:Landroid/os/Handler;

    .line 9052
    iget v2, p1, Lciu$a;->b:I

    .line 1139
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 1140
    goto :goto_0

    .line 1144
    :cond_2
    const/4 v0, 0x0

    .line 111
    goto :goto_0
.end method
