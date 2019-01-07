.class public final Lcjl;
.super Ljava/lang/Object;
.source "DynamicSo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public d:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "abi"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "zipSize"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcjl;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcjl;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcjl;->g:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcjl;->c:Ljava/lang/String;

    .line 26
    iput-wide p5, p0, Lcjl;->d:J

    .line 27
    iget-object v0, p0, Lcjl;->a:Ljava/lang/String;

    iget-object v1, p0, Lcjl;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcjl;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcjl;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " hash:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcjl;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " abi:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcjl;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, " url:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcjl;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, " zip size:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lcjl;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
