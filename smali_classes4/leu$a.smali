.class final Lleu$a;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lley;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lleh;

.field private final b:Lorg/jsoup/select/Elements;

.field private final c:Llew;


# direct methods
.method constructor <init>(Lleh;Lorg/jsoup/select/Elements;Llew;)V
    .locals 0
    .param p1, "root"    # Lleh;
    .param p2, "elements"    # Lorg/jsoup/select/Elements;
    .param p3, "eval"    # Llew;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lleu$a;->a:Lleh;

    .line 35
    iput-object p2, p0, Lleu$a;->b:Lorg/jsoup/select/Elements;

    .line 36
    iput-object p3, p0, Lleu$a;->c:Llew;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Llej;I)V
    .locals 3
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    instance-of v1, p1, Lleh;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Lleh;

    .line 42
    .local v0, "el":Lleh;
    iget-object v1, p0, Lleu$a;->c:Llew;

    iget-object v2, p0, Lleu$a;->a:Lleh;

    invoke-virtual {v1, v2, v0}, Llew;->a(Lleh;Lleh;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lleu$a;->b:Lorg/jsoup/select/Elements;

    invoke-virtual {v1, v0}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v0    # "el":Lleh;
    :cond_0
    return-void
.end method

.method public final b(Llej;I)V
    .locals 0
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    .prologue
    .line 49
    return-void
.end method
