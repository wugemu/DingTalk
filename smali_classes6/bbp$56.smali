.class final Lbbp$56;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 130
    iput-object p1, p0, Lbbp$56;->c:Lbbp;

    iput-object p2, p0, Lbbp$56;->a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iput-object p3, p0, Lbbp$56;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lbbp$56;->c:Lbbp;

    invoke-static {v0}, Lbbp;->b(Lbbp;)Lbbq;

    move-result-object v0

    iget-object v1, p0, Lbbp$56;->a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lbbp$56;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 1057
    if-eqz v2, :cond_0

    .line 1058
    iget-object v0, v0, Lbbq;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    return-void
.end method
