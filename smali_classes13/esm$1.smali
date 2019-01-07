.class final Lesm$1;
.super Ljava/lang/Object;
.source "RecommendCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesm;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lesm;


# direct methods
.method constructor <init>(Lesm;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lesm;

    .prologue
    .line 64
    iput-object p1, p0, Lesm$1;->b:Lesm;

    iput-object p2, p0, Lesm$1;->a:Ljava/util/List;

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
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lesm$1;->b:Lesm;

    iget-object v1, p0, Lesm$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v2}, Lesm;->a(Lesm;Ljava/util/List;ZZ)V

    .line 68
    return-void
.end method
