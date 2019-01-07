.class final Lry$2;
.super Ljava/lang/Object;
.source "ChoosePeopleFromMailHelper.java"

# interfaces
.implements Laff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lry;


# direct methods
.method constructor <init>(Lry;)V
    .locals 0
    .param p1, "this$0"    # Lry;

    .prologue
    .line 109
    iput-object p1, p0, Lry$2;->a:Lry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    .local p1, "emailCidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Labn;>;"
    iget-object v0, p0, Lry$2;->a:Lry;

    invoke-static {v0}, Lry;->a(Lry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lry$2;->a:Lry;

    invoke-static {v0, p1}, Lry;->a(Lry;Ljava/util/Map;)Ljava/util/Map;

    .line 119
    iget-object v0, p0, Lry$2;->a:Lry;

    iget-object v1, p0, Lry$2;->a:Lry;

    invoke-static {v1}, Lry;->b(Lry;)I

    move-result v1

    invoke-static {v0, v1}, Lry;->a(Lry;I)V

    goto :goto_0
.end method
