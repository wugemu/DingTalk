.class public abstract Leqq;
.super Ljava/lang/Object;
.source "BaseSearchPresenter.java"

# interfaces
.implements Leqp$a;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field public b:Leqp$b;

.field public c:Leoe;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:I

.field protected i:I

.field public j:Z

.field protected k:Landroid/os/Handler;

.field protected l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leqq;->d:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqq;->f:Z

    .line 60
    iput v1, p0, Leqq;->g:I

    .line 62
    iput v1, p0, Leqq;->h:I

    .line 66
    iput-boolean v1, p0, Leqq;->j:Z

    .line 68
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Leqq;->k:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Leqq;->l:I

    .line 86
    new-instance v0, Leqq$1;

    invoke-direct {v0, p0}, Leqq$1;-><init>(Leqq;)V

    iput-object v0, p0, Leqq;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final B_()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Leqq;->c:Leoe;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lenv;->b()Lenv;

    move-result-object v0

    iget-object v1, p0, Leqq;->e:Ljava/lang/String;

    iget-object v2, p0, Leqq;->c:Leoe;

    .line 2084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 3062
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3063
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    iget-object v0, v0, Lenv;->a:Landroid/util/LruCache;

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "chooseMode"    # I

    .prologue
    .line 222
    iput p1, p0, Leqq;->l:I

    .line 223
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 0
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 228
    return-void
.end method

.method public final a(Leoe;)V
    .locals 0
    .param p1, "queryLog"    # Leoe;

    .prologue
    .line 152
    iput-object p1, p0, Leqq;->c:Leoe;

    .line 153
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iput-object p1, p0, Leqq;->e:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Leqq;->d()V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Leqq;->n()V

    .line 82
    iget-object v0, p0, Leqq;->k:Landroid/os/Handler;

    iget-object v1, p0, Leqq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Leqq;->k:Landroid/os/Handler;

    iget-object v1, p0, Leqq;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "isMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    if-eqz p2, :cond_1

    .line 97
    iget-object v0, p0, Leqq;->c:Leoe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqq;->c:Leoe;

    .line 1148
    iget-wide v0, v0, Leoe;->g:J

    .line 97
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Leqq;->c:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1152
    iput-wide v2, v0, Leoe;->g:J

    .line 100
    :cond_0
    invoke-virtual {p0}, Leqq;->n()V

    .line 101
    invoke-virtual {p0}, Leqq;->a()V

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_1
    iput-object p1, p0, Leqq;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Leqq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Leqq;->m()V

    .line 108
    invoke-virtual {p0}, Leqq;->n()V

    .line 109
    invoke-virtual {p0}, Leqq;->a()V

    .line 115
    :goto_1
    invoke-virtual {p0}, Leqq;->B_()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Leqq;->d()V

    .line 112
    invoke-virtual {p0}, Leqq;->o()V

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Leqq;->d:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Leqq;->e:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Leqq;->f:Z

    return v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Leqq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    const-string/jumbo v0, ""

    iput-object v0, p0, Leqq;->e:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Leqq;->i:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqq;->f:Z

    .line 162
    iget-object v0, p0, Leqq;->b:Leqp$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqq;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Leqq;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 165
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Leqq;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Leqq;->j:Z

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final j()Leoe;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Leqq;->c:Leoe;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Leqq;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 169
    iput v1, p0, Leqq;->g:I

    .line 170
    iput v1, p0, Leqq;->h:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqq;->f:Z

    .line 172
    iput v1, p0, Leqq;->i:I

    .line 173
    iget-object v0, p0, Leqq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iget-object v0, p0, Leqq;->b:Leqp$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqq;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Leqq;->b:Leqp$b;

    iget-object v1, p0, Leqq;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 178
    :cond_0
    return-void
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqq;->j:Z

    .line 207
    iget-object v0, p0, Leqq;->b:Leqp$b;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Leqq;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->b()V

    .line 210
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqq;->j:Z

    .line 214
    iget-object v0, p0, Leqq;->b:Leqp$b;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Leqq;->b:Leqp$b;

    iget-object v1, p0, Leqq;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Leqq;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->H_()V

    .line 218
    :cond_0
    return-void
.end method

.method protected final p()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v3, p0, Leqq;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcms;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Leqq;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcms;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 232
    .local v0, "networkConnected":Z
    :goto_0
    const-string/jumbo v3, "network %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v3, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return v0

    .end local v0    # "networkConnected":Z
    :cond_0
    move v0, v2

    .line 231
    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Leqq;->e:Ljava/lang/String;

    return-object v0
.end method
