.class public final Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lene;

.field final synthetic c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Ljava/util/List;Lene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;->b:Lene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 266
    .local v0, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$2;->b:Lene;

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v1, v3}, Lene;->a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    move-result-object v3

    .line 1287
    sget-object v1, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$5;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1289
    :pswitch_0
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v4, "[add] "

    aput-object v4, v1, v5

    .line 2171
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1289
    aput-object v4, v1, v6

    const-string/jumbo v4, " addToAssureArea to group"

    aput-object v4, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 1290
    iget-object v1, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    goto :goto_0

    .line 1293
    :pswitch_1
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v4, "[add] "

    aput-object v4, v1, v5

    .line 3171
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1293
    aput-object v4, v1, v6

    const-string/jumbo v4, " addToAssureArea to contact"

    aput-object v4, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 1294
    iget-object v1, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    goto/16 :goto_0

    .line 1297
    :pswitch_2
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v4, "[add] "

    aput-object v4, v1, v5

    .line 4171
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1297
    aput-object v4, v1, v6

    const-string/jumbo v4, " addToAssureArea to function"

    aput-object v4, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 1298
    iget-object v1, v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    goto/16 :goto_0

    .line 268
    .end local v0    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_1
    return-void

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
