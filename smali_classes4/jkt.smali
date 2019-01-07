.class public final Ljkt;
.super Ljava/lang/Object;
.source "ClipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljkt$b;,
        Ljkt$a;
    }
.end annotation


# instance fields
.field public a:Z

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljkt$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/av/ui/view/recordline/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Lcom/taobao/av/ui/view/recordline/VideoBean;

.field private final g:I

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljkt$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xc8

    iput v0, p0, Ljkt;->g:I

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljkt;->a:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljkt;->b:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljkt;->h:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljkt;->c:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget-wide v2, p0, Ljkt;->i:J

    .line 1125
    iget-object v0, p0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 121
    :goto_0
    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 1125
    :cond_0
    iget-object v0, p0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    iget-wide v0, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    goto :goto_0
.end method

.method public final a(I)Lcom/taobao/av/ui/view/recordline/VideoBean;
    .locals 1
    .param p1, "ix"    # I

    .prologue
    .line 149
    iget-object v0, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/av/ui/view/recordline/VideoBean;

    goto :goto_0
.end method

.method public a(Lcom/taobao/av/ui/view/recordline/VideoBean;)V
    .locals 3
    .param p1, "vb"    # Lcom/taobao/av/ui/view/recordline/VideoBean;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 206
    iget-object v1, p0, Ljkt;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkt$a;

    .line 207
    .local v0, "l":Ljkt$a;
    invoke-interface {v0, p1}, Ljkt$a;->a(Lcom/taobao/av/ui/view/recordline/VideoBean;)V

    goto :goto_0

    .line 209
    .end local v0    # "l":Ljkt$a;
    :cond_0
    return-void
.end method

.method public final a(Ljkt$a;)V
    .locals 1
    .param p1, "listener"    # Ljkt$a;

    .prologue
    .line 45
    iget-object v0, p0, Ljkt;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    iget-object v1, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Ljkt;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 229
    .local v0, "vb":Lcom/taobao/av/ui/view/recordline/VideoBean;
    if-eqz p1, :cond_1

    sget-object v1, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->SELECTED:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 2024
    :goto_1
    iput-object v1, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->c:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 231
    invoke-virtual {p0, v0}, Ljkt;->c(Lcom/taobao/av/ui/view/recordline/VideoBean;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v1, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->READY:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    goto :goto_1
.end method

.method public b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "duration":J
    iget-object v3, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 138
    .local v2, "item":Lcom/taobao/av/ui/view/recordline/VideoBean;
    iget-wide v4, v2, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    add-long/2addr v0, v4

    .line 139
    goto :goto_0

    .line 141
    .end local v2    # "item":Lcom/taobao/av/ui/view/recordline/VideoBean;
    :cond_0
    iput-wide v0, p0, Ljkt;->i:J

    .line 142
    return-void
.end method

.method public b(Lcom/taobao/av/ui/view/recordline/VideoBean;)V
    .locals 3
    .param p1, "vb"    # Lcom/taobao/av/ui/view/recordline/VideoBean;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    iget-object v1, p0, Ljkt;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkt$a;

    .line 213
    .local v0, "l":Ljkt$a;
    invoke-interface {v0}, Ljkt$a;->a()V

    goto :goto_0

    .line 215
    .end local v0    # "l":Ljkt$a;
    :cond_0
    return-void
.end method

.method public c(Lcom/taobao/av/ui/view/recordline/VideoBean;)V
    .locals 3
    .param p1, "vb"    # Lcom/taobao/av/ui/view/recordline/VideoBean;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Ljkt;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljkt$b;

    .line 219
    .local v0, "l":Ljkt$b;
    invoke-interface {v0}, Ljkt$b;->c()V

    goto :goto_0

    .line 221
    .end local v0    # "l":Ljkt$b;
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    iget-object v1, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-wide/16 v2, -0x1

    .line 193
    :goto_0
    return-wide v2

    .line 191
    :cond_0
    iget-object v1, p0, Ljkt;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 193
    .local v0, "last":Lcom/taobao/av/ui/view/recordline/VideoBean;
    iget-wide v2, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    goto :goto_0
.end method

.method public final e()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 246
    .line 2129
    iget-boolean v1, p0, Ljkt;->a:Z

    if-eqz v1, :cond_1

    .line 2130
    const v1, 0x7fffffff

    .line 246
    :goto_0
    const/16 v2, 0xc8

    if-gt v1, v2, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_0
    return v0

    .line 2132
    :cond_1
    iget v1, p0, Ljkt;->d:I

    int-to-long v2, v1

    iget-wide v4, p0, Ljkt;->i:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method
