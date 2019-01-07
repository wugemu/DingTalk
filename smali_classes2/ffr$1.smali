.class public final Lffr$1;
.super Lcom/alibaba/wukong/im/UserExListenerAdapter;
.source "OpenIdExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lffr;


# direct methods
.method public constructor <init>(Lffr;)V
    .locals 0
    .param p1, "this$0"    # Lffr;

    .prologue
    .line 55
    iput-object p1, p0, Lffr$1;->a:Lffr;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/UserExListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpenIdExChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string/jumbo v0, "OpenIdExManager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lffr$1$1;

    invoke-direct {v1, p0, p1}, Lffr$1$1;-><init>(Lffr$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
