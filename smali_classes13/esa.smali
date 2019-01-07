.class public final Lesa;
.super Ljava/lang/Object;
.source "CompatTaskImpl.java"


# instance fields
.field protected a:Leqq;

.field protected b:Ljava/lang/String;

.field protected c:Leoe;


# direct methods
.method public constructor <init>(Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "baseSearchPresenter"    # Leqq;
    .param p2, "taskKeyWord"    # Ljava/lang/String;
    .param p3, "queryLog"    # Leoe;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lesa;->a:Leqq;

    .line 20
    iput-object p2, p0, Lesa;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lesa;->c:Leoe;

    .line 22
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Leoe;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1028
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_task_compat"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_task_compat_use_current_log"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lesa;->c:Leoe;

    .line 37
    :goto_1
    return-object v0

    .line 1029
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lesa;->a:Leqq;

    invoke-virtual {v0}, Leqq;->j()Leoe;

    move-result-object v0

    goto :goto_1
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v1, p0, Lesa;->b:Ljava/lang/String;

    iget-object v2, p0, Lesa;->a:Leqq;

    invoke-virtual {v2}, Leqq;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 43
    .local v0, "isValid":Z
    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v1, "isSearchKeyValid:%b,%s,%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lesa;->b:Ljava/lang/String;

    .line 45
    invoke-static {v4}, Lesa;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lesa;->a:Leqq;

    invoke-virtual {v4}, Leqq;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lesa;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lesa;->b:Ljava/lang/String;

    return-object v0
.end method
