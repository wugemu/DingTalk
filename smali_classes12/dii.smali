.class public final Ldii;
.super Ljava/lang/Object;
.source "TopicEmotionSearchPresenterImpl.java"

# interfaces
.implements Ldih$a;


# instance fields
.field a:Ldih$b;

.field b:J

.field c:Z

.field d:J

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldpy;

.field private g:Ljava/lang/String;

.field private h:Landroid/app/Activity;

.field private i:Lcom/alibaba/doraemon/eventbus/EventButler;

.field private j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<",
            "Lcma;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ldpy$a;


# direct methods
.method public constructor <init>(Ldih$b;Landroid/app/Activity;Ldpy;)V
    .locals 2
    .param p1, "view"    # Ldih$b;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "imEmotionManager"    # Ldpy;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldii;->e:Ljava/util/List;

    .line 42
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TopicEmotionSearchPresenterImpl params cannot be null "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Ldii;->a:Ldih$b;

    .line 46
    iput-object p3, p0, Ldii;->f:Ldpy;

    .line 47
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iput-object v0, p0, Ldii;->i:Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 48
    iput-object p2, p0, Ldii;->h:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method static synthetic a(Ldii;)V
    .locals 2
    .param p0, "x0"    # Ldii;

    .prologue
    .line 28
    .line 2210
    iget-object v0, p0, Ldii;->f:Ldpy;

    .line 2611
    iget-object v0, v0, Ldpy;->e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 2211
    if-eqz v0, :cond_0

    .line 2212
    iget-object v1, p0, Ldii;->a:Ldih$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    invoke-interface {v1, v0}, Ldih$b;->a(Ljava/util/List;)V

    :goto_0
    return-void

    .line 2214
    :cond_0
    iget-object v0, p0, Ldii;->a:Ldih$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldih$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldii;->a(Z)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Ldii;->g:Ljava/lang/String;

    .line 172
    iput-wide v2, p0, Ldii;->b:J

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldii;->c:Z

    .line 174
    iput-wide v2, p0, Ldii;->d:J

    .line 175
    iget-object v0, p0, Ldii;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Ldii;->a:Ldih$b;

    invoke-interface {v0}, Ldih$b;->i()V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .line 1191
    iget-object v1, p0, Ldii;->k:Ldpy$a;

    if-nez v1, :cond_0

    .line 1195
    new-instance v1, Ldii$3;

    invoke-direct {v1, p0}, Ldii$3;-><init>(Ldii;)V

    iput-object v1, p0, Ldii;->k:Ldpy$a;

    .line 1206
    iget-object v1, p0, Ldii;->f:Ldpy;

    iget-object v2, p0, Ldii;->k:Ldpy$a;

    invoke-virtual {v1, v2}, Ldpy;->a(Ldpy$a;)V

    .line 58
    :cond_0
    iget-object v1, p0, Ldii;->f:Ldpy;

    .line 1611
    iget-object v0, v1, Ldpy;->e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 59
    .local v0, "hotSearchWordSnapshot":Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Ldii;->a:Ldih$b;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    invoke-interface {v1, v2}, Ldih$b;->a(Ljava/util/List;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Ldii;->f:Ldpy;

    invoke-virtual {v1}, Ldpy;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9
    .param p1, "word"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Ldii;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldii;->b(Z)V

    .line 76
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Ldii;->a:Ldih$b;

    invoke-interface {v0}, Ldih$b;->g()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Ldii;->a:Ldih$b;

    invoke-interface {v0}, Ldih$b;->f()V

    .line 82
    iget-object v0, p0, Ldii;->i:Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Ldii$1;

    invoke-direct {v1, p0}, Ldii$1;-><init>(Ldii;)V

    const-class v2, Lcma;

    iget-object v3, p0, Ldii;->h:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 111
    iput-object p1, p0, Ldii;->g:Ljava/lang/String;

    .line 112
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Ldii;->g:Ljava/lang/String;

    iget-wide v4, p0, Ldii;->b:J

    const-wide/16 v6, 0x14

    iget-object v8, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 113
    invoke-virtual {v8}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 112
    invoke-virtual/range {v0 .. v8}, Ldyc;->a(JLjava/lang/String;JJLcma;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1
    .param p1, "shouldCancel"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    if-eqz v0, :cond_1

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->cancel()V

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 226
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-boolean v0, p0, Ldii;->c:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Ldii;->a:Ldih$b;

    iget-object v1, p0, Ldii;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ldih$b;->b(Ljava/util/List;)V

    .line 151
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldii;->a(Z)V

    .line 122
    iget-object v0, p0, Ldii;->i:Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Ldii$2;

    invoke-direct {v1, p0}, Ldii$2;-><init>(Ldii;)V

    const-class v2, Lcma;

    iget-object v3, p0, Ldii;->h:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 148
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v0

    iget-wide v1, p0, Ldii;->d:J

    iget-object v3, p0, Ldii;->g:Ljava/lang/String;

    iget-wide v4, p0, Ldii;->b:J

    const-wide/16 v6, 0x14

    iget-object v8, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 149
    invoke-virtual {v8}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 148
    invoke-virtual/range {v0 .. v8}, Ldyc;->a(JLjava/lang/String;JJLcma;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldii;->b(Z)V

    .line 156
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldii;->j:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Ldii;->c:Z

    return v0
.end method
