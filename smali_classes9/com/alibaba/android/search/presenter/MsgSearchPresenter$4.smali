.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 701
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 743
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "canLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->g:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->g:I

    .line 753
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iput-boolean p1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    .line 754
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V

    .line 755
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->g:I

    goto :goto_0
.end method
