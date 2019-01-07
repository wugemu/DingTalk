.class final Lclm$1$1;
.super Ljava/lang/Object;
.source "NetInspect.java"

# interfaces
.implements Lclk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclm$1;


# direct methods
.method constructor <init>(Lclm$1;)V
    .locals 0
    .param p1, "this$0"    # Lclm$1;

    .prologue
    .line 162
    iput-object p1, p0, Lclm$1$1;->a:Lclm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lclm$1$1;->a:Lclm$1;

    iget-object v0, v0, Lclm$1;->a:Lclm$b;

    iput-boolean p1, v0, Lclm$b;->g:Z

    .line 166
    new-instance v0, Lclk;

    const/16 v1, 0x1388

    const-string/jumbo v2, "https://www.baidu.com"

    invoke-direct {v0, v1, v2}, Lclk;-><init>(ILjava/lang/String;)V

    new-instance v1, Lclm$1$1$1;

    invoke-direct {v1, p0}, Lclm$1$1$1;-><init>(Lclm$1$1;)V

    invoke-virtual {v0, v1}, Lclk;->a(Lclk$a;)V

    .line 187
    return-void
.end method
