.class public final Ldpt$6;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpt;


# direct methods
.method public constructor <init>(Ldpt;)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 885
    iput-object p1, p0, Ldpt$6;->a:Ldpt;

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
    .line 888
    iget-object v1, p0, Ldpt$6;->a:Ldpt;

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

    .line 889
    .local v0, "listener":Ldpt$a;
    if-eqz v0, :cond_0

    .line 892
    invoke-interface {v0}, Ldpt$a;->a()V

    goto :goto_0

    .line 894
    .end local v0    # "listener":Ldpt$a;
    :cond_1
    return-void
.end method
