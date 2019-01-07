.class final Lcwv$4;
.super Ljava/lang/Object;
.source "RemindCardItemViewHolder.java"

# interfaces
.implements Lcnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwv;


# direct methods
.method constructor <init>(Lcwv;)V
    .locals 0
    .param p1, "this$0"    # Lcwv;

    .prologue
    .line 295
    iput-object p1, p0, Lcwv$4;->a:Lcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcwv$4;->a:Lcwv;

    invoke-static {v0}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcwv$4;->a:Lcwv;

    invoke-static {v0}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcns;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    iget-object v5, p0, Lcwv$4;->a:Lcwv;

    invoke-static {v5}, Lcwv;->f(Lcwv;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "reportSource":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v8

    const-string/jumbo v6, "birthday_card"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "spmD":Ljava/lang/String;
    iget-object v5, p0, Lcwv$4;->a:Lcwv;

    invoke-static {v5}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-static {v5}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v1

    .line 312
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "a2o5v.12290095"

    invoke-static {v5, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "spmUrl":Ljava/lang/String;
    const-string/jumbo v5, "spm-url"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Lcns;

    const-string/jumbo v5, "Page_Chat_Detail"

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "Expose-"

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v1}, Lcns;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    .local v0, "exposureObject":Lcns;
    return-object v0
.end method
