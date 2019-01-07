.class final Lgpf$2;
.super Ljava/lang/Object;
.source "CSpaceBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpd;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lgpf;


# direct methods
.method constructor <init>(Lgpf;Lgpd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgpf;

    .prologue
    .line 177
    iput-object p1, p0, Lgpf$2;->e:Lgpf;

    iput-object p2, p0, Lgpf$2;->a:Lgpd;

    iput-object p3, p0, Lgpf$2;->b:Ljava/lang/Object;

    iput-object p4, p0, Lgpf$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lgpf$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lgpf$2;->a:Lgpd;

    iget-object v1, p0, Lgpf$2;->e:Lgpf;

    iget-object v1, v1, Lgpf;->g:Ljava/lang/String;

    iget-object v2, p0, Lgpf$2;->b:Ljava/lang/Object;

    iget-object v3, p0, Lgpf$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lgpf$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lgpd;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
