.class final Lhqo$4;
.super Ljava/lang/Object;
.source "OANotifyPushHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjt;

.field final synthetic b:Lhqo;


# direct methods
.method constructor <init>(Lhqo;Lhjt;)V
    .locals 0
    .param p1, "this$0"    # Lhqo;

    .prologue
    .line 200
    iput-object p1, p0, Lhqo$4;->b:Lhqo;

    iput-object p2, p0, Lhqo$4;->a:Lhjt;

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

    .line 204
    iget-object v1, p0, Lhqo$4;->b:Lhqo;

    iget-object v2, p0, Lhqo$4;->a:Lhjt;

    invoke-static {v1, v2}, Lhqo;->a(Lhqo;Lhjt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lhqo$4;->a:Lhjt;

    .line 1069
    if-nez v1, :cond_2

    .line 1070
    const/4 v0, 0x0

    .line 206
    .local v0, "notifyObject":Lhkz;
    :cond_0
    invoke-static {v0}, Lhky;->a(Lhkz;)V

    .line 208
    .end local v0    # "notifyObject":Lhkz;
    :cond_1
    return-void

    .line 1072
    :cond_2
    new-instance v0, Lhkz;

    invoke-direct {v0}, Lhkz;-><init>()V

    .line 1073
    const/4 v2, 0x2

    iput v2, v0, Lhkz;->b:I

    .line 1074
    iget-object v2, v1, Lhjt;->g:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->f:Ljava/lang/String;

    .line 1075
    iget-object v2, v1, Lhjt;->e:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->d:Ljava/lang/String;

    .line 1076
    iget-object v2, v1, Lhjt;->d:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1076
    iput-wide v2, v0, Lhkz;->e:J

    .line 1077
    iget-object v2, v1, Lhjt;->f:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->g:Ljava/lang/String;

    .line 1078
    iget-object v2, v1, Lhjt;->h:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1078
    iput-boolean v2, v0, Lhkz;->h:Z

    .line 1079
    iget-object v2, v1, Lhjt;->i:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1079
    iput v2, v0, Lhkz;->i:I

    .line 1080
    iget-object v2, v1, Lhjt;->k:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->k:Ljava/lang/String;

    .line 1082
    iget-object v2, v1, Lhjt;->j:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lhjt;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    iput-object v2, v0, Lhkz;->j:Ljava/util/List;

    .line 1085
    iget-object v1, v1, Lhjt;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhjr;

    .line 1086
    if-eqz v1, :cond_3

    .line 1089
    invoke-static {v1}, Lhpu;->a(Lhjr;)Lhpu;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
