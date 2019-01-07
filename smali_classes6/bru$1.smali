.class public final Lbru$1;
.super Ljava/lang/Object;
.source "CacheUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbru;


# direct methods
.method public constructor <init>(Lbru;)V
    .locals 0
    .param p1, "this$0"    # Lbru;

    .prologue
    .line 93
    iput-object p1, p0, Lbru$1;->a:Lbru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 96
    const-string/jumbo v1, "DocCacheUpdater"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1, v2, v3}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 97
    .local v0, "updateThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lbru$a;

    iget-object v2, p0, Lbru$1;->a:Lbru;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbru$a;-><init>(Lbru;B)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
