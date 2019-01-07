.class final Lebo$1$2;
.super Ljava/lang/Object;
.source "VideoEncode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebo$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lebo$1;


# direct methods
.method constructor <init>(Lebo$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lebo$1;

    .prologue
    .line 162
    iput-object p1, p0, Lebo$1$2;->c:Lebo$1;

    iput-object p2, p0, Lebo$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lebo$1$2;->b:Ljava/lang/String;

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
    .line 165
    iget-object v0, p0, Lebo$1$2;->c:Lebo$1;

    iget-object v0, v0, Lebo$1;->a:Lebo;

    .line 1027
    iget-object v0, v0, Lebo;->e:Lcma;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lebo$1$2;->c:Lebo$1;

    iget-object v0, v0, Lebo$1;->a:Lebo;

    .line 2027
    iget-object v0, v0, Lebo;->e:Lcma;

    .line 166
    iget-object v1, p0, Lebo$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lebo$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method
