.class final Lhhh$3;
.super Ljava/lang/Object;
.source "FCResultNotifyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhh;->a(Lclc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhk;

.field final synthetic b:Lhhh;


# direct methods
.method constructor <init>(Lhhh;Lhhk;)V
    .locals 0
    .param p1, "this$0"    # Lhhh;

    .prologue
    .line 148
    iput-object p1, p0, Lhhh$3;->b:Lhhh;

    iput-object p2, p0, Lhhh$3;->a:Lhhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 151
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v3, p0, Lhhh$3;->a:Lhhk;

    iget-object v3, v3, Lhhk;->e:Ljava/lang/String;

    iget-object v4, p0, Lhhh$3;->a:Lhhk;

    iget-object v4, v4, Lhhk;->l:Ljava/lang/String;

    iget-object v5, p0, Lhhh$3;->a:Lhhk;

    iget-object v5, v5, Lhhk;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->findPlanExecutor(Ljava/lang/String;Ljava/lang/String;J)Lhhd;

    move-result-object v0

    .line 152
    .local v0, "executor":Lhhd;
    iget-object v2, p0, Lhhh$3;->a:Lhhk;

    .line 1050
    if-nez v2, :cond_2

    .line 1051
    const/4 v1, 0x0

    .line 153
    .local v1, "notifyObject":Lhhn;
    :cond_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->tryShowCheckinPopWindow(Lhhn;)V

    .line 154
    if-eqz v0, :cond_1

    .line 155
    iget-object v2, p0, Lhhh$3;->b:Lhhh;

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    iget-object v4, p0, Lhhh$3;->a:Lhhk;

    invoke-static {v2, v3, v4, v10, v11}, Lhhh;->a(Lhhh;Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lhhk;J)V

    .line 157
    :cond_1
    return-void

    .line 1054
    .end local v1    # "notifyObject":Lhhn;
    :cond_2
    new-instance v1, Lhhn;

    invoke-direct {v1}, Lhhn;-><init>()V

    .line 1055
    const/4 v3, 0x2

    iput v3, v1, Lhhn;->b:I

    .line 1056
    iget-object v3, v2, Lhhk;->g:Ljava/lang/String;

    iput-object v3, v1, Lhhn;->f:Ljava/lang/String;

    .line 1057
    iget-object v3, v2, Lhhk;->e:Ljava/lang/String;

    iput-object v3, v1, Lhhn;->d:Ljava/lang/String;

    .line 1058
    iget-object v3, v2, Lhhk;->d:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1058
    iput-wide v4, v1, Lhhn;->e:J

    .line 1059
    iget-object v3, v2, Lhhk;->f:Ljava/lang/String;

    iput-object v3, v1, Lhhn;->g:Ljava/lang/String;

    .line 1060
    iget-object v3, v2, Lhhk;->h:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 1060
    iput-boolean v3, v1, Lhhn;->h:Z

    .line 1061
    iget-object v3, v2, Lhhk;->i:Ljava/lang/Integer;

    .line 3033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1061
    iput v3, v1, Lhhn;->i:I

    .line 1062
    iget-object v3, v2, Lhhk;->k:Ljava/lang/String;

    iput-object v3, v1, Lhhn;->k:Ljava/lang/String;

    .line 1063
    iget-object v3, v2, Lhhk;->l:Ljava/lang/String;

    iput-object v3, v1, Lhhn;->a:Ljava/lang/String;

    .line 1065
    iget-object v3, v2, Lhhk;->j:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lhhk;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1066
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    iput-object v3, v1, Lhhn;->j:Ljava/util/List;

    .line 1068
    iget-object v2, v2, Lhhk;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhjr;

    .line 1069
    if-eqz v2, :cond_3

    .line 1072
    invoke-static {v2}, Lhpu;->a(Lhjr;)Lhpu;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
