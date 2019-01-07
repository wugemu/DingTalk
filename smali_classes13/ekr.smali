.class public final Lekr;
.super Ljava/lang/Object;
.source "SplashDataObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lekr;->l:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lekr;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " type = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lekr;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " mediaId = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lekr;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, " jumpUrl = "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lekr;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, " startTime = "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lekr;->e:J

    .line 41
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, " endTime = "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lekr;->f:J

    .line 42
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, " startLoadTime = "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lekr;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, " duration = "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-wide v2, p0, Lekr;->h:J

    .line 43
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, " priority = "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lekr;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, " attachmentMediaId = "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lekr;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, " orgId = "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-wide v2, p0, Lekr;->l:J

    .line 44
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, " status = "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget v2, p0, Lekr;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
