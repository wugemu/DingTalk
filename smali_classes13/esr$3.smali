.class public final Lesr$3;
.super Ljava/lang/Object;
.source "DingSearchHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lesr;


# direct methods
.method public constructor <init>(Lesr;Landroid/content/Context;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lesr;

    .prologue
    .line 130
    iput-object p1, p0, Lesr$3;->d:Lesr;

    iput-object p2, p0, Lesr$3;->a:Landroid/content/Context;

    iput p3, p0, Lesr$3;->b:I

    iput-object p4, p0, Lesr$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v1, p0, Lesr$3;->d:Lesr;

    iget-object v2, p0, Lesr$3;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lesr;->a(Lesr;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lesr$a;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lesr$3;->b:I

    if-le v1, v2, :cond_0

    .line 135
    const/4 v1, 0x0

    iget v2, p0, Lesr$3;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lesr$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 138
    return-void
.end method
