.class public final Lhhe;
.super Ljava/lang/Object;
.source "FCPlanModule.java"


# instance fields
.field public a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lhhd;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V
    .locals 6
    .param p1, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lhhe;->a:Lfp;

    .line 27
    iput-object p1, p0, Lhhe;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .line 30
    .local v1, "planObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;
    if-eqz v1, :cond_0

    .line 31
    iget-object v2, p0, Lhhe;->a:Lfp;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getPlanId()J

    move-result-wide v4

    invoke-static {p0, v1}, Lhhd;->a(Lhhe;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;)Lhhd;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lfp;->b(JLjava/lang/Object;)V

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "planObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;
    .locals 1
    .param p0, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhhe;

    invoke-direct {v0, p0}, Lhhe;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Lhhd;
    .locals 3
    .param p1, "planId"    # J

    .prologue
    .line 161
    iget-object v0, p0, Lhhe;->a:Lfp;

    .line 3096
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    check-cast v0, Lhhd;

    return-object v0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 7
    .param p1, "fast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lhhd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "executors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lhhe;->a:Lfp;

    invoke-virtual {v3}, Lfp;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 39
    iget-object v3, p0, Lhhe;->a:Lfp;

    iget-object v4, p0, Lhhe;->a:Lfp;

    invoke-virtual {v4, v2}, Lfp;->a(I)J

    move-result-wide v4

    .line 1096
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Lhhd;

    .line 40
    .local v0, "executor":Lhhd;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 41
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lhhd;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lhhd;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v0    # "executor":Lhhd;
    :cond_2
    return-object v1
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lhhe;->a:Lfp;

    invoke-virtual {v2}, Lfp;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 60
    iget-object v2, p0, Lhhe;->a:Lfp;

    iget-object v3, p0, Lhhe;->a:Lfp;

    invoke-virtual {v3, v1}, Lfp;->a(I)J

    move-result-wide v4

    .line 2096
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lhhd;

    .line 61
    .local v0, "executor":Lhhd;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lhhd;->b()V

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "executor":Lhhd;
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lhhe;->a:Lfp;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lhhe;->a:Lfp;

    invoke-virtual {v3}, Lfp;->a()I

    move-result v3

    if-gtz v3, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lhhe;->a:Lfp;

    invoke-virtual {v3}, Lfp;->a()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 170
    iget-object v3, p0, Lhhe;->a:Lfp;

    iget-object v4, p0, Lhhe;->a:Lfp;

    invoke-virtual {v4, v1}, Lfp;->a(I)J

    move-result-wide v4

    .line 4096
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    check-cast v0, Lhhd;

    .line 171
    .local v0, "executor":Lhhd;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhhd;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const/4 v2, 0x1

    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v1, p0, Lhhe;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->save(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V

    .line 188
    return-void
.end method
