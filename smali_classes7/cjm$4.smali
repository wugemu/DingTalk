.class final Lcjm$4;
.super Ljava/lang/Object;
.source "DynamicSoDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcjm;


# direct methods
.method constructor <init>(Lcjm;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcjm;

    .prologue
    .line 203
    iput-object p1, p0, Lcjm$4;->c:Lcjm;

    iput-object p2, p0, Lcjm$4;->a:Ljava/lang/String;

    iput p3, p0, Lcjm$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 206
    iget-object v2, p0, Lcjm$4;->c:Lcjm;

    invoke-static {v2}, Lcjm;->a(Lcjm;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcjm$4;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcjm$4;->c:Lcjm;

    invoke-static {v2}, Lcjm;->a(Lcjm;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcjm$4;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 208
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;>;"
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 210
    .local v1, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    iget v4, p0, Lcjm$4;->b:I

    invoke-interface {v1, v3, v4}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    goto :goto_0

    .line 214
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;>;"
    .end local v1    # "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method
