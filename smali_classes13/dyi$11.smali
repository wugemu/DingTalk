.class public final Ldyi$11;
.super Lcmg;
.source "OneboxAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsl;",
        "Ldqn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyi;


# direct methods
.method public constructor <init>(Ldyi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyi;

    .prologue
    .line 210
    .local p2, "x0":Lcma;, "Lcma<Ldqn;>;"
    iput-object p1, p0, Ldyi$11;->a:Ldyi;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 210
    check-cast p1, Ldsl;

    .line 2040
    if-nez p1, :cond_0

    .line 2041
    const/4 v0, 0x0

    .line 2052
    :goto_0
    return-object v0

    .line 2044
    :cond_0
    new-instance v1, Ldqn;

    invoke-direct {v1}, Ldqn;-><init>()V

    .line 2045
    iget-object v0, p1, Ldsl;->a:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2045
    iput v0, v1, Ldqn;->a:I

    .line 2046
    iget-object v0, p1, Ldsl;->b:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2046
    iput-wide v2, v1, Ldqn;->b:J

    .line 2047
    iget-object v0, p1, Ldsl;->c:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2047
    iput-boolean v0, v1, Ldqn;->c:Z

    .line 2049
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    iget-object v0, p1, Ldsl;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldsl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 2052
    goto :goto_0

    .line 2055
    :cond_2
    iget-object v0, p1, Ldsl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsk;

    .line 2056
    if-eqz v0, :cond_3

    .line 2060
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->fromIdlModel(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2063
    :cond_4
    iput-object v2, v1, Ldqn;->d:Ljava/util/List;

    move-object v0, v1

    .line 210
    goto :goto_0
.end method
