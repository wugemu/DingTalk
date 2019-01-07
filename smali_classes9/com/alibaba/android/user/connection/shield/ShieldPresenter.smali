.class public final Lcom/alibaba/android/user/connection/shield/ShieldPresenter;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lfez;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/shield/ShieldPresenter$c;,
        Lcom/alibaba/android/user/connection/shield/ShieldPresenter$b;,
        Lcom/alibaba/android/user/connection/shield/ShieldPresenter$a;,
        Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation;
    }
.end annotation


# instance fields
.field a:Lffa;

.field b:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfey;


# direct methods
.method public constructor <init>(Lffa;)V
    .locals 1
    .param p1, "view"    # Lffa;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lffb;

    invoke-direct {v0}, Lffb;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->d:Lfey;

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/shield/ShieldPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 34
    .line 1102
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    invoke-interface {v0}, Lffa;->a()V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/shield/ShieldPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 2092
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-static {p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    invoke-interface {v0, p1, p2}, Lffa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->d:Lfey;

    invoke-interface {v0}, Lfey;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(J)V

    .line 51
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "cursor"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->d:Lfey;

    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;-><init>(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;J)V

    invoke-interface {v0, p1, p2, v1}, Lfey;->a(JLcma;)V

    .line 89
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->d:Lfey;

    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;-><init>(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v0, p1, v1}, Lfey;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->d:Lfey;

    new-instance v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$3;-><init>(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v0, p1, v1}, Lfey;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 184
    return-void
.end method
