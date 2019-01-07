.class public final Lfaw$4;
.super Lcmg;
.source "OrgExtFieldAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfaw;
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
        "Lfph;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaw;


# direct methods
.method public constructor <init>(Lfaw;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaw;

    .prologue
    .line 126
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;>;"
    iput-object p1, p0, Lfaw$4;->a:Lfaw;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    check-cast p1, Ljava/util/List;

    .line 1129
    if-eqz p1, :cond_2

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfph;

    .line 1132
    if-eqz v0, :cond_0

    .line 1133
    invoke-static {v0}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1136
    :goto_1
    return-object v0

    .line 1138
    :cond_2
    const/4 v0, 0x0

    .line 126
    goto :goto_1
.end method
