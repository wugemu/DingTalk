.class public final Liaf$a;
.super Ljava/lang/Object;
.source "IMUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Liaf$a;, "Liaf$a<TT;>;"
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    .line 92
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 122
    .local p0, "this":Liaf$a;, "Liaf$a<TT;>;"
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    .local p0, "this":Liaf$a;, "Liaf$a<TT;>;"
    check-cast p1, Ljava/util/List;

    .line 1096
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaf$a;->b:Ljava/util/List;

    .line 1099
    :cond_0
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1100
    if-eqz p1, :cond_1

    .line 1101
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    :cond_1
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 87
    :cond_2
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    .local p0, "this":Liaf$a;, "Liaf$a<TT;>;"
    check-cast p1, Ljava/util/List;

    .line 1109
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_2

    .line 1110
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaf$a;->b:Ljava/util/List;

    .line 1112
    :cond_0
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1113
    if-eqz p1, :cond_1

    .line 1114
    iget-object v0, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    :cond_1
    iget-object v0, p0, Liaf$a;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaf$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 87
    :cond_2
    return-void
.end method
