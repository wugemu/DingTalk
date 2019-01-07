.class public final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lbqd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;,
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;,
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$a;,
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;
    }
.end annotation


# instance fields
.field a:Lbqe;

.field b:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lbqc;


# direct methods
.method public constructor <init>(Lbqe;)V
    .locals 1
    .param p1, "view"    # Lbqe;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lbqf;

    invoke-direct {v0}, Lbqf;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->d:Lbqc;

    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 32
    .line 1100
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    invoke-interface {v0}, Lbqe;->a()V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    .line 2090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    invoke-static {p1, p2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    invoke-interface {v0, p1, p2}, Lbqe;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->d:Lbqc;

    invoke-interface {v0}, Lbqc;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(J)V

    .line 49
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "cursor"    # J

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->d:Lbqc;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;-><init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;J)V

    invoke-interface {v0, p1, p2, v1}, Lbqc;->a(JLcma;)V

    .line 87
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->d:Lbqc;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$2;-><init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    invoke-interface {v0, p1, v1}, Lbqc;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->d:Lbqc;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;-><init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    invoke-interface {v0, p1, v1}, Lbqc;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 182
    return-void
.end method
