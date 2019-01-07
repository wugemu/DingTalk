.class public final Lbbp$38;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 302
    iput-object p1, p0, Lbbp$38;->b:Lbbp;

    iput-object p2, p0, Lbbp$38;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lbbp$38;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$38;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->c(Ljava/lang/String;)Z

    move-result v2

    .line 1293
    if-nez v2, :cond_2

    .line 1294
    iget-object v3, v0, Lbbo;->f:Lbgp;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lbgp;->a(Ljava/util/List;)I

    .line 1299
    :cond_2
    iget-object v3, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 1301
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->ag()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1303
    invoke-virtual {v0}, Lbbo;->d()V

    .line 1305
    invoke-virtual {v0}, Lbbo;->b()V

    .line 1308
    :cond_3
    iget-object v3, v0, Lbbo;->b:Lbbq;

    invoke-virtual {v3, v1}, Lbbq;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1309
    invoke-virtual {v0, v1}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1311
    if-nez v2, :cond_0

    .line 1312
    invoke-static {v1}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0
.end method
