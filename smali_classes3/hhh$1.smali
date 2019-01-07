.class final Lhhh$1;
.super Ljava/lang/Object;
.source "FCResultNotifyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhl;

.field final synthetic b:Lhhh;


# direct methods
.method constructor <init>(Lhhh;Lhhl;)V
    .locals 0
    .param p1, "this$0"    # Lhhh;

    .prologue
    .line 98
    iput-object p1, p0, Lhhh$1;->b:Lhhh;

    iput-object p2, p0, Lhhh$1;->a:Lhhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 101
    iget-object v1, p0, Lhhh$1;->a:Lhhl;

    .line 1020
    if-nez v1, :cond_1

    .line 1021
    const/4 v0, 0x0

    .line 102
    .local v0, "notifyObject":Lhhn;
    :cond_0
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->tryShowCheckinPopWindow(Lhhn;)V

    .line 103
    return-void

    .line 1024
    .end local v0    # "notifyObject":Lhhn;
    :cond_1
    new-instance v0, Lhhn;

    invoke-direct {v0}, Lhhn;-><init>()V

    .line 1025
    const/4 v2, 0x6

    iput v2, v0, Lhhn;->b:I

    .line 1026
    iget-object v2, v1, Lhhl;->c:Ljava/lang/String;

    iput-object v2, v0, Lhhn;->f:Ljava/lang/String;

    .line 1027
    iget-object v2, v1, Lhhl;->i:Ljava/lang/String;

    iput-object v2, v0, Lhhn;->d:Ljava/lang/String;

    .line 1028
    iget-object v2, v1, Lhhl;->h:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1028
    iput-wide v2, v0, Lhhn;->e:J

    .line 1029
    iget-object v2, v1, Lhhl;->d:Ljava/lang/String;

    iput-object v2, v0, Lhhn;->g:Ljava/lang/String;

    .line 1030
    iget-object v2, v1, Lhhl;->j:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1030
    iput-boolean v2, v0, Lhhn;->h:Z

    .line 1031
    iget-object v2, v1, Lhhl;->k:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1031
    iput v2, v0, Lhhn;->i:I

    .line 1032
    iget-object v2, v1, Lhhl;->b:Ljava/lang/String;

    iput-object v2, v0, Lhhn;->k:Ljava/lang/String;

    .line 1033
    iget-object v2, v1, Lhhl;->m:Ljava/lang/String;

    iput-object v2, v0, Lhhn;->a:Ljava/lang/String;

    .line 1035
    iget-object v2, v1, Lhhl;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lhhl;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1036
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    iput-object v2, v0, Lhhn;->j:Ljava/util/List;

    .line 1038
    iget-object v1, v1, Lhhl;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhjr;

    .line 1039
    if-eqz v1, :cond_2

    .line 1042
    invoke-static {v1}, Lhpu;->a(Lhjr;)Lhpu;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
