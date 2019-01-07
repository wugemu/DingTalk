.class public final Lfry;
.super Ljava/lang/Object;
.source "SWUserSummaryObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfqj;)Lfry;
    .locals 8
    .param p0, "model"    # Lfqj;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "object":Lfry;
    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Lfry;

    .end local v0    # "object":Lfry;
    invoke-direct {v0}, Lfry;-><init>()V

    .line 46
    .restart local v0    # "object":Lfry;
    iget-object v1, p0, Lfqj;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 46
    iput-wide v2, v0, Lfry;->a:J

    .line 47
    iget-object v1, p0, Lfqj;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 47
    iput-wide v2, v0, Lfry;->b:J

    .line 48
    iget-object v1, p0, Lfqj;->c:Ljava/lang/String;

    iput-object v1, v0, Lfry;->c:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lfqj;->d:Ljava/lang/String;

    iput-object v1, v0, Lfry;->d:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lfqj;->e:Ljava/lang/String;

    iput-object v1, v0, Lfry;->e:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lfqj;->f:Ljava/lang/String;

    iput-object v1, v0, Lfry;->f:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lfqj;->g:Ljava/lang/String;

    iput-object v1, v0, Lfry;->g:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lfqj;->h:Ljava/lang/String;

    iput-object v1, v0, Lfry;->h:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lfqj;->i:Ljava/lang/String;

    iput-object v1, v0, Lfry;->i:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lfqj;->j:Ljava/lang/String;

    iput-object v1, v0, Lfry;->j:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lfqj;->k:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 56
    iput-boolean v1, v0, Lfry;->k:Z

    .line 57
    iget-object v1, p0, Lfqj;->l:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 57
    iput-boolean v1, v0, Lfry;->l:Z

    .line 59
    :cond_0
    return-object v0
.end method
