.class final Lclm$1;
.super Ljava/lang/Object;
.source "NetInspect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclm;->a(Landroid/content/Context;Lclm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclm$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lclm$a;


# direct methods
.method constructor <init>(Lclm$b;Landroid/content/Context;Lclm$a;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lclm$1;->a:Lclm$b;

    iput-object p2, p0, Lclm$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lclm$1;->c:Lclm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->d:Z

    .line 152
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->e:Z

    .line 153
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->f:Z

    .line 155
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    invoke-static {}, Lclm;->b()Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->a:Z

    .line 156
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lclm$b;->j:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    const-string/jumbo v1, "www.taobao.com"

    iget-object v2, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lclm;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->b:Z

    .line 158
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    invoke-static {}, Lclm;->a()Z

    move-result v1

    iput-boolean v1, v0, Lclm$b;->c:Z

    .line 159
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lclm$b;->i:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lclm$1;->a:Lclm$b;

    iget-object v1, p0, Lclm$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lclm;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lclm$b;->k:Ljava/lang/String;

    .line 162
    new-instance v0, Lclk;

    const/16 v1, 0x1388

    const-string/jumbo v2, "http://www.baidu.com"

    invoke-direct {v0, v1, v2}, Lclk;-><init>(ILjava/lang/String;)V

    new-instance v1, Lclm$1$1;

    invoke-direct {v1, p0}, Lclm$1$1;-><init>(Lclm$1;)V

    invoke-virtual {v0, v1}, Lclk;->a(Lclk$a;)V

    .line 190
    return-void
.end method
