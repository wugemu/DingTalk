.class public final Lcbi$a;
.super Ljava/lang/Object;
.source "UnSendRedPacketsMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcbi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0
    .param p1, "sender"    # J
    .param p3, "clusterId"    # Ljava/lang/String;
    .param p4, "createTime"    # J

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lcbi$a;->a:J

    .line 171
    iput-object p3, p0, Lcbi$a;->b:Ljava/lang/String;

    .line 172
    iput-wide p4, p0, Lcbi$a;->c:J

    .line 173
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    instance-of v3, p1, Lcbi$a;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 180
    check-cast v0, Lcbi$a;

    .line 182
    .local v0, "that":Lcbi$a;
    iget-wide v4, p0, Lcbi$a;->a:J

    iget-wide v6, v0, Lcbi$a;->a:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 183
    :cond_3
    iget-object v3, p0, Lcbi$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcbi$a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcbi$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcbi$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    iget-wide v2, p0, Lcbi$a;->a:J

    iget-wide v4, p0, Lcbi$a;->a:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 190
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcbi$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcbi$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 191
    return v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
