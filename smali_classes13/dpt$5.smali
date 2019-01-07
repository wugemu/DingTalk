.class final Ldpt$5;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpt;


# direct methods
.method constructor <init>(Ldpt;J)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 865
    iput-object p1, p0, Ldpt$5;->b:Ldpt;

    iput-wide p2, p0, Ldpt$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 868
    iget-object v1, p0, Ldpt$5;->b:Ldpt;

    invoke-static {v1}, Ldpt;->h(Ldpt;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpt$a;

    .line 869
    .local v0, "listener":Ldpt$a;
    if-eqz v0, :cond_0

    .line 872
    iget-wide v2, p0, Ldpt$5;->a:J

    invoke-interface {v0, v2, v3}, Ldpt$a;->d(J)V

    goto :goto_0

    .line 874
    .end local v0    # "listener":Ldpt$a;
    :cond_1
    return-void
.end method
