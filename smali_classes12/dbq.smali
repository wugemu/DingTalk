.class public final Ldbq;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"


# static fields
.field private static volatile b:Ldbq;

.field private static c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldbq;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbq;->a:Ljava/util/Set;

    .line 1129
    const-string/jumbo v0, "AtMeConv"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 45
    new-instance v1, Ldbq$1;

    invoke-direct {v1, p0}, Ldbq$1;-><init>(Ldbq;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static a()Ldbq;
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ldbq;->b:Ldbq;

    .line 33
    .local v0, "result":Ldbq;
    if-nez v0, :cond_1

    .line 34
    sget-object v3, Ldbq;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 35
    :try_start_0
    sget-object v0, Ldbq;->b:Ldbq;

    .line 36
    if-nez v0, :cond_0

    .line 37
    new-instance v1, Ldbq;

    invoke-direct {v1}, Ldbq;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Ldbq;
    .local v1, "result":Ldbq;
    :try_start_1
    sput-object v1, Ldbq;->b:Ldbq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 39
    .end local v1    # "result":Ldbq;
    .restart local v0    # "result":Ldbq;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 41
    :cond_1
    return-object v0

    .line 39
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Ldbq;
    .restart local v1    # "result":Ldbq;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Ldbq;
    .restart local v0    # "result":Ldbq;
    goto :goto_0
.end method

.method static synthetic a(Ldbq;)V
    .locals 5
    .param p0, "x0"    # Ldbq;

    .prologue
    .line 20
    .line 4054
    iget-object v0, p0, Ldbq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4055
    const-string/jumbo v0, "pref_key_at_me_conv"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4056
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4057
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4058
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 4059
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4060
    iget-object v4, p0, Ldbq;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4058
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method static synthetic a(Ldbq;Z)V
    .locals 4
    .param p0, "x0"    # Ldbq;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    .line 4108
    iget-object v0, p0, Ldbq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4109
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 4110
    iget-object v0, p0, Ldbq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4111
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 4114
    :cond_0
    const-string/jumbo v0, "pref_key_at_me_conv"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    :cond_1
    :goto_1
    return-void

    .line 4116
    :cond_2
    const-string/jumbo v0, "pref_key_at_me_conv"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    if-eqz p1, :cond_1

    .line 4118
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldbq$5;

    invoke-direct {v1, p0}, Ldbq$5;-><init>(Ldbq;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static synthetic b(Ldbq;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ldbq;

    .prologue
    .line 20
    iget-object v0, p0, Ldbq;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static c()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "AtMeConv"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 2129
    :cond_0
    const-string/jumbo v0, "AtMeConv"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 86
    new-instance v1, Ldbq$3;

    invoke-direct {v1, p0, p1}, Ldbq$3;-><init>(Ldbq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3129
    const-string/jumbo v0, "AtMeConv"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 98
    new-instance v1, Ldbq$4;

    invoke-direct {v1, p0}, Ldbq$4;-><init>(Ldbq;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
