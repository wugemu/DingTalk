.class final Lbbk$99;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lbeh;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1855
    iput-object p1, p0, Lbbk$99;->b:Lbbk;

    iput-object p2, p0, Lbbk$99;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1874
    iget-object v0, p0, Lbbk$99;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lbbk$99;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :cond_0
    const-string/jumbo v0, "getSubTaskModels failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1855
    check-cast p1, Ljava/util/List;

    .line 2858
    iget-object v0, p0, Lbbk$99;->a:Lcma;

    if-eqz v0, :cond_4

    .line 2859
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2860
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2861
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeh;

    .line 3033
    if-eqz v0, :cond_1

    iget-object v1, v0, Lbeh;->a:Lazm;

    if-nez v1, :cond_2

    .line 3034
    :cond_1
    const/4 v0, 0x0

    .line 2863
    :goto_1
    if-eqz v0, :cond_0

    .line 2864
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3037
    :cond_2
    new-instance v1, Lbgg;

    invoke-direct {v1}, Lbgg;-><init>()V

    .line 3038
    iget-object v4, v0, Lbeh;->a:Lazm;

    iget-object v4, v4, Lazm;->m:Ljava/lang/Integer;

    .line 4033
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 3038
    invoke-static {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v4

    .line 3039
    sget-object v5, Lbgg$1;->a:[I

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 3050
    :goto_2
    iget-object v0, v0, Lbeh;->b:Lbea;

    invoke-static {v0}, Lbfz;->a(Lbea;)Lbfz;

    move-result-object v0

    iput-object v0, v1, Lbgg;->b:Lbfz;

    move-object v0, v1

    .line 3052
    goto :goto_1

    .line 3041
    :pswitch_0
    new-instance v4, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v5, v0, Lbeh;->a:Lazm;

    invoke-direct {v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    iput-object v4, v1, Lbgg;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_2

    .line 3045
    :pswitch_1
    new-instance v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v5, v0, Lbeh;->a:Lazm;

    invoke-direct {v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    iput-object v4, v1, Lbgg;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_2

    .line 2868
    :cond_3
    iget-object v0, p0, Lbbk$99;->a:Lcma;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1855
    :cond_4
    return-void

    .line 3039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
