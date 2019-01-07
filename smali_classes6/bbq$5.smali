.class final Lbbq$5;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbbq;


# direct methods
.method constructor <init>(Lbbq;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 124
    iput-object p1, p0, Lbbq$5;->b:Lbbq;

    iput-object p2, p0, Lbbq$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 127
    iget-object v1, p0, Lbbq$5;->b:Lbbq;

    .line 1027
    iget-object v1, v1, Lbbq;->e:Ljava/util/Collection;

    .line 127
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbep;

    .line 128
    .local v0, "listener":Lbep;
    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lbbq$5;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Lbep;->a(Ljava/util/List;)V

    goto :goto_0

    .line 132
    .end local v0    # "listener":Lbep;
    :cond_1
    return-void
.end method
