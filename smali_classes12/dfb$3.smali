.class final Ldfb$3;
.super Lcmg;
.source "EducationChatPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lduo;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ldup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfb;


# direct methods
.method constructor <init>(Ldfb;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldfb;

    .prologue
    .line 176
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Ldup;>;>;"
    iput-object p1, p0, Ldfb$3;->a:Ldfb;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 176
    check-cast p1, Ljava/util/List;

    .line 1180
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2050
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2051
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduo;

    .line 3036
    if-eqz v0, :cond_1

    .line 3037
    new-instance v3, Ldup;

    invoke-direct {v3}, Ldup;-><init>()V

    .line 3038
    iget-object v5, v0, Lduo;->a:Ljava/lang/Long;

    iput-object v5, v3, Ldup;->a:Ljava/lang/Long;

    .line 3039
    iget-object v5, v0, Lduo;->b:Ljava/lang/String;

    iput-object v5, v3, Ldup;->b:Ljava/lang/String;

    .line 3040
    iget-object v5, v0, Lduo;->c:Ljava/lang/String;

    iput-object v5, v3, Ldup;->c:Ljava/lang/String;

    .line 3041
    iget-object v5, v0, Lduo;->d:Ljava/lang/Integer;

    iput-object v5, v3, Ldup;->d:Ljava/lang/Integer;

    .line 3042
    iget-object v5, v0, Lduo;->e:Ljava/lang/String;

    iput-object v5, v3, Ldup;->e:Ljava/lang/String;

    .line 3043
    iget-object v0, v0, Lduo;->f:Ljava/lang/Integer;

    iput-object v0, v3, Ldup;->f:Ljava/lang/Integer;

    move-object v0, v3

    .line 2054
    :goto_1
    if-eqz v0, :cond_0

    .line 2055
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 3046
    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 176
    :cond_3
    return-object v2

    :cond_4
    move-object v0, v2

    .line 2060
    goto :goto_2
.end method
