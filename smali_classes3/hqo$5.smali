.class final Lhqo$5;
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
.field final synthetic a:Lhjp;

.field final synthetic b:Lhqo;


# direct methods
.method constructor <init>(Lhqo;Lhjp;)V
    .locals 0
    .param p1, "this$0"    # Lhqo;

    .prologue
    .line 242
    iput-object p1, p0, Lhqo$5;->b:Lhqo;

    iput-object p2, p0, Lhqo$5;->a:Lhjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 245
    iget-object v1, p0, Lhqo$5;->a:Lhjp;

    .line 1097
    if-nez v1, :cond_1

    .line 1098
    const/4 v0, 0x0

    .line 246
    .local v0, "notifyObject":Lhkz;
    :cond_0
    invoke-static {v0}, Lhky;->a(Lhkz;)V

    .line 247
    return-void

    .line 1100
    .end local v0    # "notifyObject":Lhkz;
    :cond_1
    new-instance v0, Lhkz;

    invoke-direct {v0}, Lhkz;-><init>()V

    .line 1101
    const/16 v2, 0x8

    iput v2, v0, Lhkz;->b:I

    .line 1102
    iget-object v2, v1, Lhjp;->b:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->f:Ljava/lang/String;

    .line 1103
    iget-object v2, v1, Lhjp;->g:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->d:Ljava/lang/String;

    .line 1104
    iget-object v2, v1, Lhjp;->e:Ljava/lang/Long;

    .line 2044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1104
    iput-wide v2, v0, Lhkz;->e:J

    .line 1105
    iget-object v2, v1, Lhjp;->c:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->g:Ljava/lang/String;

    .line 1106
    iget-object v2, v1, Lhjp;->h:Ljava/lang/Boolean;

    .line 3022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1106
    iput-boolean v2, v0, Lhkz;->h:Z

    .line 1107
    iget-object v2, v1, Lhjp;->f:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1107
    iput-wide v2, v0, Lhkz;->l:J

    .line 1108
    iget-object v2, v1, Lhjp;->a:Ljava/lang/String;

    iput-object v2, v0, Lhkz;->k:Ljava/lang/String;

    .line 1110
    iget-object v2, v1, Lhjp;->i:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lhjp;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    iput-object v2, v0, Lhkz;->j:Ljava/util/List;

    .line 1113
    iget-object v1, v1, Lhjp;->i:Ljava/util/List;

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

    .line 1114
    if-eqz v1, :cond_2

    .line 1117
    invoke-static {v1}, Lhpu;->a(Lhjr;)Lhpu;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
