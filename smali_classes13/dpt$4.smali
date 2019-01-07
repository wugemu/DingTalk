.class final Ldpt$4;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldpt;


# direct methods
.method constructor <init>(Ldpt;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 845
    iput-object p1, p0, Ldpt$4;->c:Ldpt;

    iput-wide p2, p0, Ldpt$4;->a:J

    iput-object p4, p0, Ldpt$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 848
    iget-object v1, p0, Ldpt$4;->c:Ldpt;

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

    .line 849
    .local v0, "listener":Ldpt$a;
    if-eqz v0, :cond_0

    .line 852
    iget-wide v2, p0, Ldpt$4;->a:J

    iget-object v4, p0, Ldpt$4;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Ldpt$a;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 854
    .end local v0    # "listener":Ldpt$a;
    :cond_1
    return-void
.end method
