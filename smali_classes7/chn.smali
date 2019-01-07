.class public final Lchn;
.super Ljava/lang/Object;
.source "OrgUnionObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcfg;)Lchn;
    .locals 7
    .param p0, "orgUnionModel"    # Lcfg;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lchn;

    invoke-direct {v0}, Lchn;-><init>()V

    .line 38
    .local v0, "orgUnionObject":Lchn;
    iget-object v1, p0, Lcfg;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lchn;->a:J

    .line 39
    iget-object v1, p0, Lcfg;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 39
    iput-wide v2, v0, Lchn;->b:J

    .line 40
    iget-object v1, p0, Lcfg;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lchn;->c:J

    .line 41
    iget-object v1, p0, Lcfg;->d:Ljava/lang/String;

    iput-object v1, v0, Lchn;->d:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcfg;->e:Ljava/lang/String;

    iput-object v1, v0, Lchn;->e:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcfg;->f:Ljava/lang/String;

    iput-object v1, v0, Lchn;->f:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcfg;->g:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 44
    iput v1, v0, Lchn;->g:I

    .line 45
    iget-object v1, p0, Lcfg;->h:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 45
    iput-boolean v1, v0, Lchn;->h:Z

    .line 46
    iget-object v1, p0, Lcfg;->i:Ljava/lang/String;

    iput-object v1, v0, Lchn;->i:Ljava/lang/String;

    goto :goto_0
.end method
