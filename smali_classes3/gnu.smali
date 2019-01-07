.class public final Lgnu;
.super Ljava/lang/Object;
.source "AclMemberModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu;->h:Z

    return-void
.end method

.method private a()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 175
    iget v3, p0, Lgnu;->e:I

    if-ne v3, v2, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget v3, p0, Lgnu;->e:I

    if-eqz v3, :cond_0

    .line 183
    iget v3, p0, Lgnu;->e:I

    if-ne v3, v0, :cond_2

    move v0, v1

    .line 184
    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lgnu;->e:I

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 188
    goto :goto_0

    .line 191
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lgnu;)Lgkl;
    .locals 4
    .param p0, "aclMemberModel"    # Lgnu;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lgkl;

    invoke-direct {v0}, Lgkl;-><init>()V

    .line 1219
    .local v0, "idlModel":Lgkl;
    iget-object v1, p0, Lgnu;->d:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgkl;->c:Ljava/lang/Long;

    .line 2195
    iget-object v1, p0, Lgnu;->a:Ljava/lang/String;

    .line 98
    iput-object v1, v0, Lgkl;->a:Ljava/lang/String;

    .line 2227
    iget v1, p0, Lgnu;->e:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lgkl;->b:Ljava/lang/Integer;

    .line 2275
    iget v1, p0, Lgnu;->l:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lgkl;->d:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lgkl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lgkl;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    return-object v1

    .line 132
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu;

    .line 133
    .local v2, "temp":Lgnu;
    if-eqz v2, :cond_2

    .line 9195
    iget-object v4, v2, Lgnu;->a:Ljava/lang/String;

    .line 133
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    new-instance v0, Lgkl;

    invoke-direct {v0}, Lgkl;-><init>()V

    .line 9219
    .local v0, "result":Lgkl;
    iget-object v4, v2, Lgnu;->d:Ljava/lang/String;

    .line 10109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lgkl;->c:Ljava/lang/Long;

    .line 10195
    iget-object v4, v2, Lgnu;->a:Ljava/lang/String;

    .line 139
    iput-object v4, v0, Lgkl;->a:Ljava/lang/String;

    .line 10227
    iget v4, v2, Lgnu;->e:I

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lgkl;->b:Ljava/lang/Integer;

    .line 10275
    iget v4, v2, Lgnu;->l:I

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lgkl;->d:Ljava/lang/Integer;

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;ZZJI)Ljava/util/List;
    .locals 13
    .param p1, "extend"    # Z
    .param p2, "isOwner"    # Z
    .param p3, "aclType"    # J
    .param p5, "extendType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgkl;",
            ">;ZZJI)",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lgkl;>;"
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "members":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    :cond_0
    return-object v3

    .line 112
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgkl;

    .line 114
    .local v2, "memberModel":Lgkl;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lgkl;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lgkl;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lgkl;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 115
    if-eqz v4, :cond_3

    iget-object v4, v2, Lgkl;->a:Ljava/lang/String;

    .line 3109
    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 115
    cmp-long v4, v6, v10

    if-lez v4, :cond_2

    .line 4073
    :cond_3
    if-nez v2, :cond_4

    .line 4074
    const/4 v4, 0x0

    .line 119
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4077
    :cond_4
    new-instance v4, Lgnu;

    invoke-direct {v4}, Lgnu;-><init>()V

    .line 4078
    iget-object v6, v2, Lgkl;->a:Ljava/lang/String;

    .line 4199
    iput-object v6, v4, Lgnu;->a:Ljava/lang/String;

    .line 4079
    iget-object v6, v2, Lgkl;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v6, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 5231
    iput v6, v4, Lgnu;->e:I

    .line 4080
    iget-object v6, v2, Lgkl;->c:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 6223
    iput-object v6, v4, Lgnu;->d:Ljava/lang/String;

    .line 4081
    iget-object v6, v2, Lgkl;->d:Ljava/lang/Integer;

    .line 7033
    invoke-static {v6, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 7279
    iput v6, v4, Lgnu;->l:I

    .line 8239
    iput-boolean p1, v4, Lgnu;->f:Z

    .line 8247
    iput-boolean p2, v4, Lgnu;->g:Z

    .line 8271
    move-wide/from16 v0, p3

    iput-wide v0, v4, Lgnu;->j:J

    .line 8287
    move/from16 v0, p5

    iput v0, v4, Lgnu;->k:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 291
    iget v0, p0, Lgnu;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 30
    check-cast p1, Lgnu;

    .line 11151
    if-nez p1, :cond_1

    .line 11152
    const/4 v0, 0x0

    .line 11168
    :cond_0
    :goto_0
    return v0

    .line 11155
    :cond_1
    iget-boolean v2, p0, Lgnu;->g:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lgnu;->g:Z

    if-eqz v2, :cond_0

    .line 11159
    :cond_2
    iget-boolean v2, p0, Lgnu;->g:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lgnu;->g:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 11160
    goto :goto_0

    .line 11163
    :cond_3
    iget-boolean v2, p0, Lgnu;->f:Z

    if-eqz v2, :cond_4

    .line 11235
    iget-boolean v2, p1, Lgnu;->f:Z

    .line 11163
    if-eqz v2, :cond_0

    .line 11167
    :cond_4
    iget-boolean v0, p0, Lgnu;->f:Z

    if-nez v0, :cond_5

    .line 12235
    iget-boolean v0, p1, Lgnu;->f:Z

    .line 11167
    if-eqz v0, :cond_5

    move v0, v1

    .line 11168
    goto :goto_0

    .line 11171
    :cond_5
    invoke-direct {p0}, Lgnu;->a()I

    move-result v0

    invoke-direct {p1}, Lgnu;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 30
    goto :goto_0
.end method
