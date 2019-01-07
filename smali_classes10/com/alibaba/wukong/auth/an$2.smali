.class final Lcom/alibaba/wukong/auth/an$2;
.super Ljava/lang/Object;
.source "CloudSettingEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/an;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aS:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/wukong/auth/an$2;->aS:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/wukong/auth/an;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifn;

    .line 42
    .local v0, "listener":Lifn;
    iget-object v2, p0, Lcom/alibaba/wukong/auth/an$2;->aS:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lifn;->a(Ljava/util/List;)V

    goto :goto_0

    .line 44
    .end local v0    # "listener":Lifn;
    :cond_0
    return-void
.end method
