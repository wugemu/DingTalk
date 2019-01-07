.class final Ldxv$1;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->a(Ljava/lang/String;Lcma;)V
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
        "Ldcg;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxv;


# direct methods
.method constructor <init>(Ldxv;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxv;

    .prologue
    .line 71
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;>;"
    iput-object p1, p0, Ldxv$1;->a:Ldxv;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Ljava/util/List;

    .line 1074
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->fromListIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    return-object v0
.end method
