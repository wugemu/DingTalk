.class public final Lcom/amap/api/services/help/Inputtips;
.super Ljava/lang/Object;
.source "Inputtips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IInputtipsSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    .line 33
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.InputtipsSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ao;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IInputtipsSearch;

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    .line 39
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ao;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ao;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :cond_0
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    .line 53
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.InputtipsSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ao;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/help/InputtipsQuery;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IInputtipsSearch;

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    .line 59
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ao;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ao;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->getQuery()Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final requestInputtipsAsyn()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtipsAsyn()V

    .line 104
    :cond_0
    return-void
.end method

.method public final setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    .line 95
    :cond_0
    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V

    .line 85
    :cond_0
    return-void
.end method
