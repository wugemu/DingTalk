.class final Lbxd$21;
.super Lhzy;
.source "LvRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lbum;",
        "Lbxf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 134
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxf;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 134
    check-cast p1, Lbum;

    .line 2033
    if-nez p1, :cond_0

    .line 2034
    :goto_0
    return-object v1

    .line 2037
    :cond_0
    new-instance v3, Lbxf;

    invoke-direct {v3}, Lbxf;-><init>()V

    .line 2038
    iget-object v0, p1, Lbum;->a:Lbvl;

    invoke-static {v0}, Lbxk;->a(Lbvl;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iput-object v0, v3, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 2039
    iget-object v0, p1, Lbum;->b:Ljava/util/List;

    .line 3038
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2039
    :goto_1
    iput-object v0, v3, Lbxf;->b:Ljava/util/List;

    .line 2040
    iget-object v0, p1, Lbum;->c:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, v3, Lbxf;->c:Z

    .line 2041
    iget-object v0, p1, Lbum;->d:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, v3, Lbxf;->d:Z

    .line 2042
    iget-object v0, p1, Lbum;->e:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, v3, Lbxf;->e:Z

    .line 2043
    iget-object v0, p1, Lbum;->f:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, v3, Lbxf;->f:Z

    move-object v1, v3

    .line 134
    goto :goto_0

    .line 3042
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3043
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvo;

    .line 4025
    if-nez v0, :cond_3

    move-object v0, v1

    .line 3045
    :goto_3
    if-eqz v0, :cond_2

    .line 3046
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4029
    :cond_3
    new-instance v4, Lbxi;

    invoke-direct {v4}, Lbxi;-><init>()V

    .line 4030
    iget-object v6, v0, Lbvo;->a:Ljava/lang/Integer;

    invoke-static {v6}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v6

    iput v6, v4, Lbxi;->a:I

    .line 4031
    iget-object v6, v0, Lbvo;->b:Ljava/lang/Integer;

    invoke-static {v6}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v6

    iput v6, v4, Lbxi;->b:I

    .line 4032
    iget-object v0, v0, Lbvo;->c:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iput-wide v6, v4, Lbxi;->c:J

    move-object v0, v4

    .line 4034
    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 3050
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lbxd$21;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
