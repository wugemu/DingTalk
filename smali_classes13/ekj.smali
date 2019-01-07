.class public final Lekj;
.super Lhae;
.source "CompressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lekj$a;
    }
.end annotation


# instance fields
.field public a:Lekj$a;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0, v0}, Lhae;-><init>(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhad;->b(Lhae;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lekj;->a:Lekj$a;

    .line 39
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lekj;->a(Ljava/util/List;F)V

    .line 47
    return-void
.end method

.method public final a(Ljava/util/List;F)V
    .locals 5
    .param p2, "quality"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lekj;->b:Ljava/util/List;

    if-nez v3, :cond_3

    .line 56
    iput-object p1, p0, Lekj;->b:Ljava/util/List;

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lekj;->c:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "unCompressedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lhah;->a()Lhah;

    invoke-static {}, Lhah;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhag;

    .line 62
    .local v0, "compressedObject":Lhag;
    if-eqz v0, :cond_0

    .line 1083
    iget-object v4, v0, Lhag;->c:Ljava/lang/String;

    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    iget-object v4, p0, Lekj;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "unCompressedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v1    # "unCompressedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "compressedObject":Lhag;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lekj;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lekj;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 76
    iget-object v3, p0, Lekj;->a:Lekj$a;

    if-eqz v3, :cond_3

    .line 77
    iget-object v3, p0, Lekj;->a:Lekj$a;

    iget-object v4, p0, Lekj;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Lekj$a;->a(Ljava/util/List;)V

    .line 95
    .end local v1    # "unCompressedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 82
    .restart local v1    # "unCompressedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v3

    invoke-virtual {v3, p0}, Lhad;->b(Lhae;)V

    .line 84
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v3

    invoke-virtual {v3, p0}, Lhad;->a(Lhae;)V

    .line 86
    iget-object v3, p0, Lekj;->a:Lekj$a;

    if-eqz v3, :cond_5

    .line 87
    iget-object v3, p0, Lekj;->a:Lekj$a;

    invoke-interface {v3}, Lekj$a;->a()V

    .line 90
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lhah;->a(Ljava/lang/String;F)V

    goto :goto_1
.end method

.method public final exec(Lhac;)V
    .locals 4
    .param p1, "event"    # Lhac;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v2, p0, Lekj;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lekj;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2035
    iget-object v0, p1, Lhac;->a:Lhag;

    .line 2043
    .local v0, "object":Lhag;
    iget-object v1, p1, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 102
    .local v1, "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    if-eqz v0, :cond_0

    .line 2083
    iget-object v2, v0, Lhag;->c:Ljava/lang/String;

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lekj;->b:Ljava/util/List;

    .line 3071
    iget-object v3, v0, Lhag;->b:Ljava/lang/String;

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lekj$1;

    invoke-direct {v3, p0, v0, v1}, Lekj$1;-><init>(Lekj;Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 141
    .end local v0    # "object":Lhag;
    .end local v1    # "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :cond_0
    return-void
.end method
