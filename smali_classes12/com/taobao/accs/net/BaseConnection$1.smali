.class public Lcom/taobao/accs/net/BaseConnection$1;
.super Ljava/util/LinkedHashMap;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/taobao/accs/data/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljiu;


# direct methods
.method public constructor <init>(Ljiu;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$1;->this$0:Ljiu;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/accs/data/Message;>;"
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection$1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
