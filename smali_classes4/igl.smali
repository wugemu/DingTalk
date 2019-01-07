.class public final Ligl;
.super Ljava/lang/Object;
.source "BasicWebSocketContext.java"

# interfaces
.implements Ligp;


# instance fields
.field public a:Ljava/util/Map;

.field private final b:Ligp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ligl;-><init>(Ligp;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ligp;)V
    .locals 1
    .param p1, "parentContext"    # Ligp;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Ligl;->a:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Ligl;->b:Ligp;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Ligl;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Ligl;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Ligl;->b:Ligp;

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Ligl;->b:Ligp;

    invoke-interface {v1, p1}, Ligp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    :cond_2
    return-object v0
.end method
