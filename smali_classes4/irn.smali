.class final Lirn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lirm;


# direct methods
.method constructor <init>(Lirm;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lirn;->c:Lirm;

    iput-object p2, p0, Lirn;->a:Landroid/content/Context;

    iput-object p3, p0, Lirn;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 270
    .line 1274
    iget-object v0, p0, Lirn;->a:Landroid/content/Context;

    iget-object v1, p0, Lirn;->b:Ljava/util/HashMap;

    .line 2036
    invoke-static {v0, v1}, Lirm;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method
