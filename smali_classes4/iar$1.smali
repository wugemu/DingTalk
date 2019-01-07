.class final Liar$1;
.super Ljava/lang/Object;
.source "ConversationCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liar;->a(Ljava/util/List;II)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Liar;


# direct methods
.method constructor <init>(Liar;Ljava/util/ArrayList;IILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Liar;

    .prologue
    .line 862
    iput-object p1, p0, Liar$1;->e:Liar;

    iput-object p2, p0, Liar$1;->a:Ljava/util/ArrayList;

    iput p3, p0, Liar$1;->b:I

    iput p4, p0, Liar$1;->c:I

    iput-object p5, p0, Liar$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 865
    iget-object v0, p0, Liar$1;->e:Liar;

    iget-object v1, p0, Liar$1;->a:Ljava/util/ArrayList;

    iget v2, p0, Liar$1;->b:I

    iget v3, p0, Liar$1;->c:I

    iget-object v4, p0, Liar$1;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Liar;->a(Liar;Ljava/util/List;IILjava/util/Map;)V

    .line 866
    return-void
.end method
