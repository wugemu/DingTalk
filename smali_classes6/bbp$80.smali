.class final Lbbp$80;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->e(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 686
    iput-object p1, p0, Lbbp$80;->c:Lbbp;

    iput-object p2, p0, Lbbp$80;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$80;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 689
    iget-object v0, p0, Lbbp$80;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$80;->a:Ljava/lang/String;

    new-instance v3, Lbbp$80$1;

    invoke-direct {v3, p0}, Lbbp$80$1;-><init>(Lbbp$80;)V

    .line 2950
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2951
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "Param is invalid!"

    invoke-virtual {v1, v3, v0, v2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const-string/jumbo v0, "retrieveDingById failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "param is invalid!"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    :goto_0
    return-void

    .line 2957
    :cond_1
    invoke-virtual {v1, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 2958
    if-eqz v0, :cond_2

    .line 2959
    invoke-virtual {v1, v3, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto :goto_0

    .line 2964
    :cond_2
    iget-object v4, v1, Lbbo;->f:Lbgp;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5, v6, v6}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v4

    .line 2965
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2966
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2967
    if-eqz v0, :cond_3

    .line 2968
    iget-object v4, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 2971
    :cond_3
    if-eqz v0, :cond_4

    .line 2972
    invoke-virtual {v1, v3, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto :goto_0

    .line 2977
    :cond_4
    new-instance v0, Lbes;

    .line 3150
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 2977
    int-to-long v4, v2

    const/4 v2, 0x5

    invoke-direct {v0, v4, v5, v2}, Lbes;-><init>(JI)V

    .line 2978
    new-instance v2, Lbbo$11;

    invoke-direct {v2, v1, v3}, Lbbo$11;-><init>(Lbbo;Lcma;)V

    invoke-virtual {v1, v0, v2}, Lbbo;->a(Lbes;Lcma;)V

    goto :goto_0
.end method
