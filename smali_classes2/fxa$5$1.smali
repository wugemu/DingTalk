.class final Lfxa$5$1;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$5;->a(Lckl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxa$5;


# direct methods
.method constructor <init>(Lfxa$5;)V
    .locals 0
    .param p1, "this$1"    # Lfxa$5;

    .prologue
    .line 222
    iput-object p1, p0, Lfxa$5$1;->a:Lfxa$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 7
    .param p1, "groupNick"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-object v0, v0, Lfxa$5;->e:Lfxa;

    iget-object v1, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-object v1, v1, Lfxa$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-object v0, v0, Lfxa$5;->e:Lfxa;

    iget-object v1, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-object v1, v1, Lfxa$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-wide v2, v2, Lfxa$5;->c:J

    iget-object v4, p0, Lfxa$5$1;->a:Lfxa$5;

    iget-wide v4, v4, Lfxa$5;->d:J

    new-instance v6, Lfxa$5$1$1;

    invoke-direct {v6, p0}, Lfxa$5$1$1;-><init>(Lfxa$5$1;)V

    invoke-static/range {v0 .. v6}, Lfxa;->a(Lfxa;Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method
