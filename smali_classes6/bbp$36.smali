.class public final Lbbp$36;
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
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 284
    iput-object p1, p0, Lbbp$36;->b:Lbbp;

    iput-object p2, p0, Lbbp$36;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lbbp$36;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v3

    iget-object v4, p0, Lbbp$36;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    .line 1234
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-static {v4}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, v3, Lbbo;->e:Lbhh;

    invoke-virtual {v0, v4}, Lbhh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1242
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbbo;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1244
    :goto_1
    iget-object v5, v3, Lbbo;->f:Lbgp;

    new-array v1, v1, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Lbgp;->a(Ljava/util/List;)I

    .line 1248
    iget-object v1, v3, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 1250
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1251
    if-eqz v1, :cond_0

    .line 1255
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1257
    invoke-virtual {v3}, Lbbo;->d()V

    .line 1259
    invoke-virtual {v3}, Lbbo;->b()V

    .line 1262
    :cond_3
    if-eqz v0, :cond_4

    .line 1263
    iget-object v0, v3, Lbbo;->b:Lbbq;

    invoke-virtual {v0, v1}, Lbbq;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1265
    :cond_4
    invoke-virtual {v3, v1}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1268
    invoke-static {v1}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1242
    goto :goto_1
.end method
