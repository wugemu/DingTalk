.class final Lenc$34;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/util/Map;Lcma;)V
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
        "Leow;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/PushUserObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 1159
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    iput-object p1, p0, Lenc$34;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1159
    check-cast p1, Ljava/util/List;

    .line 2162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    if-eqz p1, :cond_1

    .line 2164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leow;

    .line 2165
    if-eqz v0, :cond_0

    .line 2166
    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->fromIdl(Leow;)Lcom/alibaba/android/search/model/idl/objects/PushUserObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1159
    :cond_1
    return-object v1
.end method
