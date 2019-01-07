.class public Lfex;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field b:Lfeu;

.field c:Lfet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfet",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lfbz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .param p4, "isFromProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;",
            "Lfet",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "view":Lfet;, "Lfet<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lfex;->a:Landroid/app/Activity;

    .line 66
    invoke-virtual {p0, p1, p2}, Lfex;->a(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)Lfeu;

    move-result-object v0

    iput-object v0, p0, Lfex;->b:Lfeu;

    .line 67
    iput-object p3, p0, Lfex;->c:Lfet;

    .line 68
    iget-object v0, p0, Lfex;->b:Lfeu;

    .line 1079
    iput-object p0, v0, Lfeu;->c:Lcma;

    .line 69
    new-instance v0, Lfbz;

    invoke-direct {v0}, Lfbz;-><init>()V

    iput-object v0, p0, Lfex;->e:Lfbz;

    .line 70
    iput-boolean p4, p0, Lfex;->d:Z

    .line 71
    return-void
.end method

.method static synthetic a(Lfex;)V
    .locals 0
    .param p0, "x0"    # Lfex;

    .prologue
    .line 27
    invoke-direct {p0}, Lfex;->c()V

    return-void
.end method

.method static synthetic b(Lfex;)V
    .locals 2
    .param p0, "x0"    # Lfex;

    .prologue
    .line 27
    .line 5146
    const-string/jumbo v0, "TimeLine-Load"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfex$4;

    invoke-direct {v1, p0}, Lfex$4;-><init>(Lfex;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 105
    .line 1114
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfex$2;

    invoke-direct {v1, p0}, Lfex$2;-><init>(Lfex;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1190
    iget-object v0, p0, Lfex;->b:Lfeu;

    invoke-virtual {v0}, Lfeu;->d()V

    .line 107
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)Lfeu;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .prologue
    .line 74
    new-instance v0, Lfeu;

    invoke-direct {v0, p1, p2}, Lfeu;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lfex;->b:Lfeu;

    new-instance v1, Lfex$1;

    invoke-direct {v1, p0}, Lfex$1;-><init>(Lfex;)V

    invoke-virtual {v0, v1}, Lfeu;->a(Lcov;)V

    .line 94
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "createAt"    # J

    .prologue
    .line 195
    iget-object v0, p0, Lfex;->b:Lfeu;

    invoke-virtual {v0, p1, p2}, Lfeu;->b(J)V

    .line 196
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lfex;->b:Lfeu;

    invoke-virtual {v0}, Lfeu;->c()V

    .line 101
    invoke-direct {p0}, Lfex;->c()V

    .line 102
    return-void
.end method

.method public synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 2040
    iget-object v0, p0, Lfex;->b:Lfeu;

    .line 2112
    iget-object v0, v0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 2040
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3110
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v0

    .line 3245
    invoke-virtual {v0, v5}, Lfds;->a(Lcou;)V

    .line 2044
    :cond_0
    iget-object v0, p0, Lfex;->b:Lfeu;

    invoke-virtual {v0}, Lfeu;->e()V

    .line 2046
    iget-boolean v0, p0, Lfex;->d:Z

    if-eqz v0, :cond_1

    .line 2047
    iget-object v0, p0, Lfex;->c:Lfet;

    invoke-static {}, Lfcc;->a()I

    move-result v1

    invoke-static {}, Lfcc;->b()I

    move-result v2

    invoke-interface {v0, p1, v1, v2, v4}, Lfet;->a(Ljava/lang/Object;IIZ)V

    .line 4132
    :goto_0
    return-void

    .line 4124
    :cond_1
    if-nez p1, :cond_2

    .line 4125
    iget-object v0, p0, Lfex;->c:Lfet;

    invoke-static {}, Lfcc;->a()I

    move-result v1

    invoke-static {}, Lfcc;->b()I

    move-result v2

    invoke-interface {v0, v5, v1, v2, v4}, Lfet;->a(Ljava/lang/Object;IIZ)V

    goto :goto_0

    .line 4129
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v1

    .line 4130
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4131
    iget-object v0, p0, Lfex;->c:Lfet;

    invoke-static {}, Lfcc;->a()I

    move-result v1

    invoke-static {}, Lfcc;->b()I

    move-result v2

    invoke-interface {v0, v5, v1, v2, v4}, Lfet;->a(Ljava/lang/Object;IIZ)V

    goto :goto_0

    .line 4135
    :cond_3
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lfex$3;

    invoke-direct {v2, p0, p1}, Lfex$3;-><init>(Lfex;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V

    const-class v3, Lcov;

    iget-object v4, p0, Lfex;->a:Landroid/app/Activity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    .line 4142
    iget-object v2, p0, Lfex;->e:Lfbz;

    .line 4157
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lfbz;->a(Ljava/util/List;Lcov;Z)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lfex;->c:Lfet;

    invoke-interface {v0, p1, p2}, Lfet;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 57
    return-void
.end method
