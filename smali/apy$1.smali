.class final Lapy$1;
.super Ljava/lang/Object;
.source "InstanceShowObjectDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lapv;

.field final synthetic d:Lasl;

.field final synthetic e:Lapy;


# direct methods
.method constructor <init>(Lapy;JJLapv;Lasl;)V
    .locals 0
    .param p1, "this$0"    # Lapy;

    .prologue
    .line 67
    iput-object p1, p0, Lapy$1;->e:Lapy;

    iput-wide p2, p0, Lapy$1;->a:J

    iput-wide p4, p0, Lapy$1;->b:J

    iput-object p6, p0, Lapy$1;->c:Lapv;

    iput-object p7, p0, Lapy$1;->d:Lasl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lapy$1;->c:Lapv;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lapv;->a(Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lavq;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[InstanceShowObjectDataCenter] getInstanceShowObject not use instance cache, query db."

    aput-object v3, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lapy$1;->c:Lapv;

    iget-object v0, p0, Lapy$1;->e:Lapy;

    invoke-static {v0}, Lapy;->a(Lapy;)Latu;

    move-result-object v0

    iget-object v1, p0, Lapy$1;->d:Lasl;

    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-interface/range {v0 .. v5}, Latu;->a(Lasl;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Lapv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[InstanceShowObjectDataCenter] getInstanceShowObject use instance cache."

    aput-object v3, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lapy$1;->d:Lasl;

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lapy$1;->c:Lapv;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lapv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lapy$1;->d:Lasl;

    .line 1042
    iget-object v1, v0, Lasl;->a:Ljava/lang/String;

    .line 90
    .local v1, "folderId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lapy$1;->c:Lapv;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lapv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-static/range {v0 .. v5}, Lapy;->a(Lapy;Ljava/lang/String;JJ)V

    .line 99
    iget-object v0, p0, Lapy$1;->e:Lapy;

    invoke-static {v0, v1}, Lapy;->a(Lapy;Ljava/lang/String;)J

    move-result-wide v8

    .line 100
    .local v8, "cacheBeginMillis":J
    iget-object v0, p0, Lapy$1;->e:Lapy;

    invoke-static {v0, v1}, Lapy;->b(Lapy;Ljava/lang/String;)J

    move-result-wide v10

    .line 102
    .local v10, "cacheEndMillis":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-nez v0, :cond_5

    .line 103
    :cond_4
    iget-object v2, p0, Lapy$1;->e:Lapy;

    iget-object v3, p0, Lapy$1;->d:Lasl;

    iget-wide v4, p0, Lapy$1;->a:J

    iget-wide v6, p0, Lapy$1;->b:J

    invoke-static/range {v2 .. v7}, Lapy;->a(Lapy;Lasl;JJ)V

    .line 104
    iget-object v6, p0, Lapy$1;->c:Lapv;

    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-static/range {v0 .. v5}, Lapy;->b(Lapy;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Lapv;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    iget-wide v2, p0, Lapy$1;->a:J

    cmp-long v0, v2, v8

    if-ltz v0, :cond_6

    iget-wide v2, p0, Lapy$1;->b:J

    cmp-long v0, v2, v10

    if-gtz v0, :cond_6

    .line 109
    iget-object v6, p0, Lapy$1;->c:Lapv;

    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-static/range {v0 .. v5}, Lapy;->b(Lapy;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Lapv;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    :cond_6
    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-object v2, p0, Lapy$1;->d:Lasl;

    iget-wide v4, p0, Lapy$1;->a:J

    invoke-static {v0, v2, v4, v5}, Lapy;->a(Lapy;Lasl;J)V

    .line 114
    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-object v2, p0, Lapy$1;->d:Lasl;

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-static {v0, v2, v4, v5}, Lapy;->b(Lapy;Lasl;J)V

    .line 115
    iget-object v6, p0, Lapy$1;->c:Lapv;

    iget-object v0, p0, Lapy$1;->e:Lapy;

    iget-wide v2, p0, Lapy$1;->a:J

    iget-wide v4, p0, Lapy$1;->b:J

    invoke-static/range {v0 .. v5}, Lapy;->b(Lapy;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Lapv;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
