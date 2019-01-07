.class public final Lffx;
.super Ljava/lang/Object;
.source "ActiveInvitePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field public b:J

.field public c:J

.field d:Z

.field public e:Z

.field public f:Lffw;

.field private g:Lcma;


# direct methods
.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lffx;->b:J

    .line 67
    iput-wide p3, p0, Lffx;->c:J

    .line 68
    iput v1, p0, Lffx;->a:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lffx;->d:Z

    .line 70
    iput-boolean v1, p0, Lffx;->e:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shareTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 141
    .local p3, "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lffx$2;

    invoke-direct {v3, p0, p1, p3, p2}, Lffx$2;-><init>(Lffx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-class v4, Lcma;

    iget-object v2, p0, Lffx;->f:Lffw;

    .line 181
    invoke-interface {v2}, Lffw;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 141
    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 183
    .local v0, "callback":Lcma;
    iget-object v1, p0, Lffx;->f:Lffw;

    invoke-interface {v1}, Lffw;->a()V

    .line 184
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lffx;->b:J

    invoke-interface {v1, v2, v3, v0}, Lezt;->d(JLcma;)V

    .line 185
    return-void
.end method

.method public final a(ZI)V
    .locals 9
    .param p1, "getMore"    # Z
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lffx;->g:Lcma;

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lffx$1;

    invoke-direct {v2, p0}, Lffx$1;-><init>(Lffx;)V

    const-class v3, Lcma;

    iget-object v1, p0, Lffx;->f:Lffw;

    .line 131
    invoke-interface {v1}, Lffw;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 98
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lffx;->g:Lcma;

    .line 134
    :cond_0
    iget-boolean v0, p0, Lffx;->d:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lffx;->f:Lffw;

    invoke-interface {v0}, Lffw;->a()V

    .line 136
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lffx;->b:J

    iget-wide v4, p0, Lffx;->c:J

    if-eqz p1, :cond_2

    iget v6, p0, Lffx;->a:I

    :goto_0
    iget-object v8, p0, Lffx;->g:Lcma;

    move v7, p2

    invoke-interface/range {v1 .. v8}, Lezt;->c(JJIILcma;)V

    .line 138
    :cond_1
    return-void

    .line 136
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
