.class final Leci$8;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leci;->a(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Leci;


# direct methods
.method constructor <init>(Leci;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 334
    iput-object p1, p0, Leci$8;->b:Leci;

    iput-object p2, p0, Leci$8;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    iget-object v1, p0, Leci$8;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leci$8;->b:Leci;

    invoke-static {v1}, Leci;->d(Leci;)Lcwt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Leci$8;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 339
    .local v0, "size":I
    iget-object v1, p0, Leci$8;->b:Leci;

    invoke-static {v1, v0}, Leci;->a(Leci;I)V

    .line 340
    iget-object v1, p0, Leci$8;->b:Leci;

    invoke-static {v1}, Leci;->d(Leci;)Lcwt;

    move-result-object v1

    iget-object v2, p0, Leci$8;->a:Ljava/util/List;

    .line 1059
    if-eqz v2, :cond_0

    .line 1063
    iget-object v3, v1, Lcwt;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1064
    iget-object v3, v1, Lcwt;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1066
    invoke-virtual {v1}, Lcwt;->notifyDataSetChanged()V

    .line 342
    .end local v0    # "size":I
    :cond_0
    return-void
.end method
