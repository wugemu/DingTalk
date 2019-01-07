.class final Lfxa$7$1;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$7;->a(Lckl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxa$7;


# direct methods
.method constructor <init>(Lfxa$7;)V
    .locals 0
    .param p1, "this$1"    # Lfxa$7;

    .prologue
    .line 324
    iput-object p1, p0, Lfxa$7$1;->a:Lfxa$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 7
    .param p1, "orgName"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 327
    iget-object v0, p0, Lfxa$7$1;->a:Lfxa$7;

    iget-object v0, v0, Lfxa$7;->e:Lfxa;

    iget-object v1, p0, Lfxa$7$1;->a:Lfxa$7;

    iget-object v1, v1, Lfxa$7;->b:Ljava/lang/String;

    iget-object v2, p0, Lfxa$7$1;->a:Lfxa$7;

    iget-wide v2, v2, Lfxa$7;->c:J

    iget-object v4, p0, Lfxa$7$1;->a:Lfxa$7;

    iget-wide v4, v4, Lfxa$7;->d:J

    new-instance v6, Lfxa$7$1$1;

    invoke-direct {v6, p0, p1}, Lfxa$7$1$1;-><init>(Lfxa$7$1;Lckl;)V

    invoke-static/range {v0 .. v6}, Lfxa;->b(Lfxa;Ljava/lang/String;JJLfxa$a;)V

    .line 362
    return-void
.end method
