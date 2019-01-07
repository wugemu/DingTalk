.class final Lfks$1;
.super Ljava/lang/Object;
.source "CreateOrgPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfks;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/user/model/JobPositionEntryObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfks;


# direct methods
.method constructor <init>(Lfks;)V
    .locals 0
    .param p1, "this$0"    # Lfks;

    .prologue
    .line 37
    iput-object p1, p0, Lfks$1;->a:Lfks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 37
    check-cast p1, Ljava/util/List;

    .line 3040
    iget-object v0, p0, Lfks$1;->a:Lfks;

    .line 4021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 3040
    invoke-interface {v0}, Lfkr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3044
    iget-object v0, p0, Lfks$1;->a:Lfks;

    .line 5021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 3044
    invoke-interface {v0}, Lfkr$b;->H_()V

    .line 3046
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3048
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;

    .line 3049
    if-eqz v0, :cond_0

    .line 3052
    iget-object v3, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3053
    new-instance v3, Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3060
    :goto_1
    iget-object v1, p0, Lfks$1;->a:Lfks;

    .line 6021
    iget-object v1, v1, Lfks;->b:Lfkr$b;

    .line 3060
    invoke-interface {v1, v0}, Lfkr$b;->a(Ljava/util/List;)V

    .line 37
    :cond_2
    return-void

    .line 3057
    :cond_3
    iget-object v0, p0, Lfks$1;->a:Lfks;

    invoke-virtual {v0}, Lfks;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lfks$1;->a:Lfks;

    .line 1021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 70
    invoke-interface {v0}, Lfkr$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lfks$1;->a:Lfks;

    .line 2021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 74
    invoke-interface {v0}, Lfkr$b;->H_()V

    .line 75
    iget-object v0, p0, Lfks$1;->a:Lfks;

    .line 3021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 75
    iget-object v1, p0, Lfks$1;->a:Lfks;

    invoke-virtual {v1}, Lfks;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lfkr$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 66
    return-void
.end method
