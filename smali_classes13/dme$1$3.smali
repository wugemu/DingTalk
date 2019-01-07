.class final Ldme$1$3;
.super Ljava/lang/Object;
.source "BitmapConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldme$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldme$1;


# direct methods
.method constructor <init>(Ldme$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Ldme$1;

    .prologue
    .line 122
    iput-object p1, p0, Ldme$1$3;->b:Ldme$1;

    iput-object p2, p0, Ldme$1$3;->a:Ljava/util/List;

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
    .line 125
    iget-object v0, p0, Ldme$1$3;->b:Ldme$1;

    iget-object v0, v0, Ldme$1;->b:Ldme$a;

    iget-object v1, p0, Ldme$1$3;->a:Ljava/util/List;

    iget-object v2, p0, Ldme$1$3;->b:Ldme$1;

    iget-object v2, v2, Ldme$1;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ldme$a;->a(Ljava/util/List;Ljava/lang/Object;)V

    .line 126
    return-void
.end method
