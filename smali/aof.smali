.class public final Laof;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXTimingHandler.java"

# interfaces
.implements Laod$a;


# instance fields
.field private a:J

.field private b:Laod;

.field private c:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laof;->a:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Laof;->c:Z

    .line 53
    iget-object v0, p0, Laof;->b:Laod;

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    iput-object v0, p0, Laof;->b:Laod;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Laof;->b:Laod;

    invoke-virtual {v0}, Laod;->b()V

    goto :goto_0
.end method

.method private varargs a(Ljava/lang/String;J[Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "t"    # J
    .param p4, "extension"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Laof;->mCallback:Lanu$a;

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "t"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "token"

    iget-object v2, p0, Laof;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    array-length v1, p4

    if-lez v1, :cond_0

    aget-object v1, p4, v3

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 169
    aget-object v1, p4, v3

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    :cond_0
    iget-object v1, p0, Laof;->mCallback:Lanu$a;

    invoke-interface {v1, v0}, Lanu$a;->callback(Ljava/lang/Object;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ">>>>>>>>>>>fire event:("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 179
    .line 1097
    iget-wide v2, p0, Laof;->a:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 1098
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Laof;->a:J

    .line 1100
    iput-boolean v4, p0, Laof;->c:Z

    .line 1106
    :goto_0
    :try_start_0
    sget-boolean v2, Lanz;->a:Z

    if-eqz v2, :cond_0

    .line 1107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "[TimingHandler] timing elapsed. (t:%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1109
    :cond_0
    iget-object v2, p0, Laof;->mScope:Ljava/util/Map;

    long-to-double v0, v0

    invoke-static {v2, v0, v1}, Laom;->a(Ljava/util/Map;D)V

    .line 1110
    iget-boolean v0, p0, Laof;->c:Z

    if-nez v0, :cond_1

    .line 1111
    iget-object v0, p0, Laof;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v1, p0, Laof;->mScope:Ljava/util/Map;

    const-string/jumbo v2, "timing"

    invoke-virtual {p0, v0, v1, v2}, Laof;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1113
    :cond_1
    iget-object v0, p0, Laof;->mExitExpressionPair:Laok;

    iget-object v1, p0, Laof;->mScope:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Laof;->evaluateExitExpression(Laok;Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Laof;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :goto_1
    return-void

    .line 1102
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laof;->a:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string/jumbo v1, "runtime error"

    invoke-static {v1, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onActivityPause()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final onActivityResume()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Laok;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lanu$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 82
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V

    .line 84
    iget-object v0, p0, Laof;->b:Laod;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    iput-object v0, p0, Laof;->b:Laod;

    .line 88
    :cond_0
    const-string/jumbo v0, "start"

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Laof;->a(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Laof;->b:Laod;

    invoke-virtual {v0}, Laod;->b()V

    .line 91
    iget-object v0, p0, Laof;->b:Laod;

    invoke-virtual {v0, p0}, Laod;->a(Laod$a;)V

    .line 92
    return-void
.end method

.method public final onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 133
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 134
    invoke-virtual {p0}, Laof;->clearExpressions()V

    .line 136
    iget-object v0, p0, Laof;->b:Laod;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Laof;->b:Laod;

    invoke-virtual {v0}, Laod;->c()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Laof;->b:Laod;

    .line 140
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laof;->a:J

    .line 141
    return-void
.end method

.method public final onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 121
    const-string/jumbo v0, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Laof;->a:J

    sub-long/2addr v2, v4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Laof;->a(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Laof;->clearExpressions()V

    .line 123
    iget-object v0, p0, Laof;->b:Laod;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Laof;->b:Laod;

    invoke-virtual {v0}, Laod;->b()V

    .line 126
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laof;->a:J

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected final onExit(Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 145
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "t"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 146
    .local v0, "t":D
    const-string/jumbo v2, "exit"

    double-to-long v4, v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v4, v5, v3}, Laof;->a(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Laof;->b:Laod;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Laof;->b:Laod;

    invoke-virtual {v2}, Laod;->b()V

    .line 151
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laof;->a:J

    .line 152
    return-void
.end method

.method public final onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    return-void
.end method

.method protected final onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "interceptorName"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 156
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "t"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 157
    .local v0, "t":D
    const-string/jumbo v2, "interceptor"

    double-to-long v4, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "interceptor"

    invoke-static {v7, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-direct {p0, v2, v4, v5, v3}, Laof;->a(Ljava/lang/String;J[Ljava/lang/Object;)V

    .line 158
    return-void
.end method
