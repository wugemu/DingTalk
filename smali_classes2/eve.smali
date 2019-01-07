.class public Leve;
.super Ljava/lang/Object;
.source "TeleCallDataCenter.java"


# static fields
.field private static final h:Ljava/lang/String;

.field private static volatile i:Leve;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public volatile e:I

.field public f:Landroid/app/Activity;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Leve;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leve;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Leve;->g:Z

    .line 56
    invoke-virtual {p0}, Leve;->b()V

    .line 57
    return-void
.end method

.method public static a()Leve;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Leve;->i:Leve;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Leve;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Leve;->i:Leve;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Leve;

    invoke-direct {v0}, Leve;-><init>()V

    sput-object v0, Leve;->i:Leve;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Leve;->i:Leve;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leve;->c:Ljava/lang/Long;

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leve;->a:Ljava/lang/Long;

    .line 62
    iput-object v1, p0, Leve;->b:Ljava/lang/String;

    .line 64
    sget v0, Levh;->c:I

    iput v0, p0, Leve;->e:I

    .line 65
    iget-object v0, p0, Leve;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Leve;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    iput-object v1, p0, Leve;->f:Landroid/app/Activity;

    .line 69
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    iget v2, p0, Leve;->e:I

    sget v3, Levh;->b:I

    if-ne v2, v3, :cond_3

    .line 1144
    iget-object v2, p0, Leve;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Leve;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Leve;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leve;->a:Ljava/lang/Long;

    .line 1145
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Leve;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v0

    .line 125
    :goto_0
    if-eqz v2, :cond_3

    .line 128
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 1148
    goto :goto_0

    :cond_3
    move v0, v1

    .line 128
    goto :goto_1
.end method
