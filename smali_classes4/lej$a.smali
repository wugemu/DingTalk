.class final Llej$a;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lley;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Llej$a;->a:Ljava/lang/StringBuilder;

    .line 675
    iput-object p2, p0, Llej$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 676
    return-void
.end method


# virtual methods
.method public final a(Llej;I)V
    .locals 2
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 679
    iget-object v0, p0, Llej$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Llej$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Llej;->a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 680
    return-void
.end method

.method public final b(Llej;I)V
    .locals 2
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 683
    invoke-virtual {p1}, Llej;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Llej$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Llej$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Llej;->b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 685
    :cond_0
    return-void
.end method
