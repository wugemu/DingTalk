.class final Lhzb$1;
.super Ljava/lang/Object;
.source "ModelDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lhzb;


# direct methods
.method constructor <init>(Lhzb;ZZ)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lhzb$1;->c:Lhzb;

    iput-boolean p2, p0, Lhzb$1;->a:Z

    iput-boolean p3, p0, Lhzb$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 151
    sget-boolean v1, Lhzb;->t:Z

    if-nez v1, :cond_c

    .line 154
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lhzb;->t:Z

    .line 156
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    iget-object v1, v1, Lhzb;->r:Landroid/content/Context;

    invoke-static {v1}, Lhze;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-nez v1, :cond_2

    .line 157
    :cond_1
    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    sget-object v2, Lhzb;->b:Ljava/lang/String;

    iget-object v3, p0, Lhzb$1;->c:Lhzb;

    iget-object v3, v3, Lhzb;->s:Ljava/lang/String;

    sget-object v4, Lhzb;->c:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lhzb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 159
    :cond_2
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    iget-object v1, v1, Lhzb;->r:Landroid/content/Context;

    invoke-static {v1}, Lhze;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-nez v1, :cond_5

    .line 160
    :cond_4
    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    sget-object v2, Lhzb;->f:Ljava/lang/String;

    iget-object v3, p0, Lhzb$1;->c:Lhzb;

    iget-object v3, v3, Lhzb;->s:Ljava/lang/String;

    sget-object v4, Lhzb;->g:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lhzb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 162
    :cond_5
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    iget-object v1, v1, Lhzb;->r:Landroid/content/Context;

    invoke-static {v1}, Lhze;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-nez v1, :cond_8

    .line 163
    :cond_7
    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    sget-object v2, Lhzb;->j:Ljava/lang/String;

    iget-object v3, p0, Lhzb$1;->c:Lhzb;

    iget-object v3, v3, Lhzb;->s:Ljava/lang/String;

    sget-object v4, Lhzb;->k:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lhzb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 166
    :cond_8
    iget-boolean v1, p0, Lhzb$1;->b:Z

    if-nez v1, :cond_b

    .line 167
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    iget-object v1, v1, Lhzb;->r:Landroid/content/Context;

    invoke-static {v1}, Lhze;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-boolean v1, p0, Lhzb$1;->a:Z

    if-nez v1, :cond_b

    .line 168
    :cond_a
    iget-object v1, p0, Lhzb$1;->c:Lhzb;

    sget-object v2, Lhzb;->n:Ljava/lang/String;

    iget-object v3, p0, Lhzb$1;->c:Lhzb;

    iget-object v3, v3, Lhzb;->s:Ljava/lang/String;

    sget-object v4, Lhzb;->o:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lhzb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 172
    :cond_b
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    sput-boolean v6, Lhzb;->t:Z

    .line 180
    :cond_c
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    sput-boolean v6, Lhzb;->t:Z

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    sput-boolean v6, Lhzb;->t:Z

    throw v1
.end method
