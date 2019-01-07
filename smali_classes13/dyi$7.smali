.class public final Ldyi$7;
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
        "Ljava/util/List",
        "<",
        "Lduy;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyi;


# direct methods
.method public constructor <init>(Ldyi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyi;

    .prologue
    .line 142
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/WorkItemObject;>;>;"
    iput-object p1, p0, Ldyi$7;->a:Ldyi;

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
    .line 142
    check-cast p1, Ljava/util/List;

    .line 1145
    const/4 v0, 0x0

    .line 1146
    if-eqz p1, :cond_1

    .line 1147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduy;

    .line 1149
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->fromModelIDL(Lduy;)Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 142
    :cond_1
    return-object v0
.end method
