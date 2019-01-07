.class final Lhmm$1;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmm;->a(Lhmh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmh;

.field final synthetic b:Lhmm;


# direct methods
.method constructor <init>(Lhmm;Lhmh;)V
    .locals 0
    .param p1, "this$0"    # Lhmm;

    .prologue
    .line 51
    iput-object p1, p0, Lhmm$1;->b:Lhmm;

    iput-object p2, p0, Lhmm$1;->a:Lhmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    iget-object v3, p0, Lhmm$1;->b:Lhmm;

    .line 1030
    invoke-static {}, Lhmm;->b()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "currentKey":Ljava/lang/String;
    const-string/jumbo v3, "MiniAppOpenTypeSPLocalDataAccessor"

    invoke-static {v3, v0}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Lhmm$1$1;

    invoke-direct {v3, p0}, Lhmm$1$1;-><init>(Lhmm$1;)V

    invoke-virtual {v3}, Lhmm$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    check-cast v2, Ljava/util/List;

    .line 61
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    if-nez v2, :cond_0

    .line 62
    const-string/jumbo v3, "MiniAppOpenTypeSPLocalDataAccessor"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "getDataFromLocal"

    aput-object v5, v4, v6

    const-string/jumbo v5, "gson parse error ret null"

    aput-object v5, v4, v7

    .line 1071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v3, "MiniAppOpenTypeSPLocalDataAccessor"

    invoke-static {v3, v0}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v3, p0, Lhmm$1;->a:Lhmh;

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lhmm$1;->a:Lhmh;

    invoke-interface {v3, v2}, Lhmh;->a(Ljava/util/List;)V

    .line 69
    const-string/jumbo v3, "MiniAppOpenTypeSPLocalDataAccessor"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "getDataFromLocal"

    aput-object v5, v4, v6

    const-string/jumbo v5, "result="

    aput-object v5, v4, v7

    aput-object v2, v4, v8

    .line 2071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    return-void
.end method
