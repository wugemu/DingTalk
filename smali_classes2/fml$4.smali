.class final Lfml$4;
.super Lcmg;
.source "CrmApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfml;->a(JLcma;)V
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
        "Lfoo;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/user/crm/model/CrmTagObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfml;


# direct methods
.method constructor <init>(Lfml;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfml;

    .prologue
    .line 108
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/crm/model/CrmTagObject;>;>;"
    iput-object p1, p0, Lfml$4;->a:Lfml;

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
    .line 108
    check-cast p1, Ljava/util/List;

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfoo;

    .line 1116
    if-eqz v0, :cond_1

    .line 1119
    invoke-static {v0}, Lcom/alibaba/android/user/crm/model/CrmTagObject;->fromIdlModel(Lfoo;)Lcom/alibaba/android/user/crm/model/CrmTagObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 108
    goto :goto_0
.end method
