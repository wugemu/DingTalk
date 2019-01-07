.class final Ldyi$5;
.super Lcmg;
.source "OneboxAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyi;->a(JJJILcma;)V
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
        "Ldsk;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyi;


# direct methods
.method constructor <init>(Ldyi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyi;

    .prologue
    .line 96
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;>;>;"
    iput-object p1, p0, Ldyi$5;->a:Ldyi;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    check-cast p1, Ljava/util/List;

    .line 1099
    const/4 v0, 0x0

    .line 1100
    if-eqz p1, :cond_1

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsk;

    .line 1103
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;-><init>()V

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->fromIdlModel(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 96
    :cond_1
    return-object v0
.end method
