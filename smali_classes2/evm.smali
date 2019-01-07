.class public Levm;
.super Ljava/lang/Object;
.source "TeleVideoConfDataCenter.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static volatile f:Levm;


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Levo;

.field private volatile g:I

.field private h:Ljava/lang/String;

.field private i:J

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Levm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levm;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x3e8

    iput v0, p0, Levm;->j:I

    .line 86
    invoke-virtual {p0}, Levm;->b()V

    .line 87
    return-void
.end method

.method public static a()Levm;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Levm;->f:Levm;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Levm;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Levm;->f:Levm;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Levm;

    invoke-direct {v0}, Levm;-><init>()V

    sput-object v0, Levm;->f:Levm;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Levm;->f:Levm;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 100
    iget v0, p0, Levm;->g:I

    if-ne v0, p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iput p1, p0, Levm;->g:I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 142
    const-wide/16 p1, 0x0

    .line 144
    :cond_0
    iput-wide p1, p0, Levm;->i:J

    .line 145
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Levm;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    sget v0, Levh;->c:I

    iput v0, p0, Levm;->g:I

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Levm;->a:J

    .line 92
    iput-object v3, p0, Levm;->h:Ljava/lang/String;

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Levm;->j:I

    .line 94
    iput-object v3, p0, Levm;->d:Levo;

    .line 95
    iput-boolean v2, p0, Levm;->c:Z

    .line 96
    iput-boolean v2, p0, Levm;->k:Z

    .line 97
    return-void
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    iget v2, p0, Levm;->g:I

    sget v3, Levh;->b:I

    if-ne v2, v3, :cond_1

    .line 1187
    iget-object v2, p0, Levm;->d:Levo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Levm;->d:Levo;

    .line 2066
    iget-object v2, v2, Levo;->a:Ljava/lang/String;

    .line 1187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 111
    :goto_0
    if-eqz v2, :cond_1

    .line 114
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1187
    goto :goto_0

    :cond_1
    move v0, v1

    .line 114
    goto :goto_1
.end method
