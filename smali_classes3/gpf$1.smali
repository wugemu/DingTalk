.class final Lgpf$1;
.super Ljava/lang/Object;
.source "CSpaceBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpf;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpd;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lgpf;


# direct methods
.method constructor <init>(Lgpf;Lgpd;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lgpf;

    .prologue
    .line 155
    iput-object p1, p0, Lgpf$1;->c:Lgpf;

    iput-object p2, p0, Lgpf$1;->a:Lgpd;

    iput-object p3, p0, Lgpf$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lgpf$1;->a:Lgpd;

    iget-object v1, p0, Lgpf$1;->c:Lgpf;

    iget-object v1, v1, Lgpf;->g:Ljava/lang/String;

    iget-object v2, p0, Lgpf$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lgpd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void
.end method
