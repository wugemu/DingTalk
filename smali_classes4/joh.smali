.class public final Ljoh;
.super Landroid/util/LruCache;
.source "MediaPlayerLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljoj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected final synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 1023
    invoke-static {}, Ljoi;->a()Ljoi;

    .line 1139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    :goto_0
    return-object v0

    .line 1142
    :cond_0
    sget-object v1, Ljoi;->c:Ljoj;

    if-eqz v1, :cond_2

    .line 1143
    new-instance v1, Ljoj;

    invoke-direct {v1, p1}, Ljoj;-><init>(Ljava/lang/String;)V

    .line 1144
    sget-object v2, Ljoi;->c:Ljoj;

    iget-object v2, v2, Ljoj;->g:Ljava/util/List;

    iput-object v2, v1, Ljoj;->g:Ljava/util/List;

    .line 1145
    sget-object v2, Ljoi;->b:Ljoj$a;

    if-eqz v2, :cond_1

    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    sget-object v3, Ljoi;->b:Ljoj$a;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1146
    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    const/4 v3, 0x0

    sget-object v4, Ljoi;->b:Ljoj$a;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1148
    :cond_1
    sget-object v2, Ljoi;->c:Ljoj;

    iget v2, v2, Ljoj;->b:I

    iput v2, v1, Ljoj;->b:I

    .line 1149
    sget-object v2, Ljoi;->c:Ljoj;

    iget v2, v2, Ljoj;->c:I

    iput v2, v1, Ljoj;->c:I

    .line 1150
    sget-object v2, Ljoi;->c:Ljoj;

    iget-boolean v2, v2, Ljoj;->d:Z

    iput-boolean v2, v1, Ljoj;->d:Z

    .line 1151
    sget-object v2, Ljoi;->c:Ljoj;

    iget-boolean v2, v2, Ljoj;->i:Z

    iput-boolean v2, v1, Ljoj;->i:Z

    .line 1152
    sput-object v0, Ljoi;->c:Ljoj;

    .line 1153
    sput-object v0, Ljoi;->b:Ljoj$a;

    move-object v0, v1

    .line 1154
    goto :goto_0

    .line 1156
    :cond_2
    new-instance v1, Ljoj;

    sget-object v2, Ljoi;->b:Ljoj$a;

    invoke-direct {v1, p1, v2}, Ljoj;-><init>(Ljava/lang/String;Ljoj$a;)V

    .line 1157
    sput-object v0, Ljoi;->b:Ljoj$a;

    move-object v0, v1

    .line 10
    goto :goto_0
.end method

.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljoj;

    .line 2028
    invoke-static {}, Ljoi;->a()Ljoi;

    .line 2162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p3, Ljoj;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    sget-object v0, Ljoi;->b:Ljoj$a;

    if-eqz v0, :cond_2

    .line 2165
    sget-object v0, Ljoi;->b:Ljoj$a;

    invoke-interface {v0, v2}, Ljoj$a;->a(Z)V

    .line 2166
    const/4 v0, 0x0

    sput-object v0, Ljoi;->b:Ljoj$a;

    goto :goto_0

    .line 2167
    :cond_2
    iget-object v0, p3, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p3, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljoj$a;

    invoke-interface {v0}, Ljoj$a;->getCurrentPosition()I

    move-result v0

    iput v0, p3, Ljoj;->b:I

    .line 2169
    iget v0, p3, Ljoj;->e:I

    iput v0, p3, Ljoj;->c:I

    .line 2170
    iput-boolean v2, p3, Ljoj;->d:Z

    .line 2171
    iget-object v0, p3, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljoj$a;

    invoke-interface {v0}, Ljoj$a;->getDestoryState()I

    move-result v0

    iput v0, p3, Ljoj;->e:I

    .line 2172
    iget-object v0, p3, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljoj$a;

    invoke-interface {v0, v2}, Ljoj$a;->a(Z)V

    goto :goto_0
.end method

.method protected final bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method
