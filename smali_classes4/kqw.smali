.class public Lkqw;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lkqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkqx",
        "<",
        "Lkqn;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lkqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqx",
            "<",
            "Lkra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkqx",
            "<+",
            "Lkqn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lkra;->c:Lkqx;

    sput-object v0, Lkqw;->a:Lkqx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkqw;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)Lkqn;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lksy;
    .param p4, "monitor"    # Lkqa;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    .line 1044
    iget-object v1, p0, Lkqw;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqx;

    .line 1045
    if-nez v1, :cond_0

    .line 1046
    sget-object v0, Lkqw;->a:Lkqx;

    .line 53
    .local v0, "parser":Lkqx;, "Lkqx<+Lkqn;>;"
    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Lkqx;->a(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)Lkqn;

    move-result-object v1

    return-object v1

    .end local v0    # "parser":Lkqx;, "Lkqx<+Lkqn;>;"
    :cond_0
    move-object v0, v1

    .line 1048
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lkqx;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkqx",
            "<+",
            "Lkqn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    .local p2, "parser":Lkqx;, "Lkqx<+Lkqn;>;"
    iget-object v0, p0, Lkqw;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
