.class public final Lggf;
.super Ljava/lang/Object;
.source "SpaceRecentOperator.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lggf;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lggf;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lggf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lggf;->e:Ljava/lang/String;

    iget-object v1, p0, Lggf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lggf;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "("

    aput-object v1, v0, v3

    iget-object v1, p0, Lggf;->e:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, ")"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lggf;->f:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lggf;->f:Ljava/lang/String;

    iget-object v1, p0, Lggf;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lggf;->f:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lggf;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "("

    aput-object v1, v0, v3

    iget-object v1, p0, Lggf;->g:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, ")"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lggf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lggf;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 50
    iget-object v0, p0, Lggf;->e:Ljava/lang/String;

    iget-object v1, p0, Lggf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lggf;->e:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lggf;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "("

    aput-object v1, v0, v3

    iget-object v1, p0, Lggf;->e:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, ")"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_5
    iget-object v0, p0, Lggf;->d:Ljava/lang/String;

    goto :goto_0
.end method
