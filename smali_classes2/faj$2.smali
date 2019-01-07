.class final Lfaj$2;
.super Lcmg;
.source "CommonApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaj;->a(Lcma;)V
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
        "Lcfy;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaj;


# direct methods
.method constructor <init>(Lfaj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaj;

    .prologue
    .line 130
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;>;"
    iput-object p1, p0, Lfaj$2;->a:Lfaj;

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
    .line 130
    check-cast p1, Ljava/util/List;

    .line 1134
    if-eqz p1, :cond_2

    .line 1135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfy;

    .line 1137
    if-eqz v0, :cond_0

    .line 1140
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->fromIDLModel(Lcfy;)Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1142
    :goto_1
    return-object v0

    .line 1144
    :cond_2
    const/4 v0, 0x0

    .line 130
    goto :goto_1
.end method
