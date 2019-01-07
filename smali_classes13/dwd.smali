.class public final Ldwd;
.super Ldwb;
.source "LiveFloatWindowViewHolder.java"


# instance fields
.field private b:Landroid/view/View;

.field private c:Lbyu;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldwb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldwd;->b:Landroid/view/View;

    .line 40
    new-instance v0, Ldwd$1;

    invoke-direct {v0, p0}, Ldwd$1;-><init>(Ldwd;)V

    iput-object v0, p0, Ldwd;->c:Lbyu;

    .line 55
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Ldwd;->c:Lbyu;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Lbyu;)V

    .line 56
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Ldwd;->d:Z

    .line 57
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    invoke-static {v2, v3, v4}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 66
    .local v1, "livePlayObject":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    if-eqz v1, :cond_2

    .line 67
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->cid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "livePlayObject":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :goto_1
    iget-boolean v2, p0, Ldwd;->d:Z

    if-eqz v2, :cond_0

    .line 77
    iput-boolean v7, p0, Ldwd;->d:Z

    .line 78
    iget-object v2, p0, Ldwd;->a:Ldvw;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Ldwd;->a:Ldvw;

    invoke-virtual {v2, v8, v7}, Ldvw;->a(ZZ)V

    goto :goto_0

    .line 69
    .restart local v1    # "livePlayObject":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "dt_live"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "refreshView fromJson failed, ret null str:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    .line 70
    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 69
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    .end local v1    # "livePlayObject":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "dt_live"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "refreshView fromJson failed, error="

    aput-object v4, v3, v7

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 73
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isFolded"    # Z

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->c()V

    .line 89
    :cond_0
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ldwd;->b:Landroid/view/View;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "isFolded"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->d()V

    .line 96
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->e()V

    .line 101
    return-void
.end method
