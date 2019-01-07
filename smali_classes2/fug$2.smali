.class public final Lfug$2;
.super Lcmg;
.source "NameCardApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfug;
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
        "Lcgy;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfug;


# direct methods
.method public constructor <init>(Lfug;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfug;

    .prologue
    .line 172
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;>;>;"
    iput-object p1, p0, Lfug$2;->a:Lfug;

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
    .line 172
    check-cast p1, Ljava/util/List;

    .line 1175
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgy;

    .line 1178
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->fromIdl(Lcgy;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1180
    :goto_1
    return-object v0

    .line 1182
    :cond_1
    const/4 v0, 0x0

    .line 172
    goto :goto_1
.end method
