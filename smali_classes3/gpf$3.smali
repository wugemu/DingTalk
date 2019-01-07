.class final Lgpf$3;
.super Ljava/lang/Object;
.source "CSpaceBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpf;->a(ILjava/lang/Object;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpd;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lgpf;


# direct methods
.method constructor <init>(Lgpf;Lgpd;Ljava/lang/Object;IJJ)V
    .locals 1
    .param p1, "this$0"    # Lgpf;

    .prologue
    .line 195
    iput-object p1, p0, Lgpf$3;->f:Lgpf;

    iput-object p2, p0, Lgpf$3;->a:Lgpd;

    iput-object p3, p0, Lgpf$3;->b:Ljava/lang/Object;

    iput p4, p0, Lgpf$3;->c:I

    iput-wide p5, p0, Lgpf$3;->d:J

    iput-wide p7, p0, Lgpf$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 198
    iget-object v1, p0, Lgpf$3;->a:Lgpd;

    iget-object v0, p0, Lgpf$3;->f:Lgpf;

    iget-object v2, v0, Lgpf;->g:Ljava/lang/String;

    iget-object v3, p0, Lgpf$3;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lgpf$3;->d:J

    iget-wide v6, p0, Lgpf$3;->e:J

    invoke-interface/range {v1 .. v7}, Lgpd;->a(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 199
    return-void
.end method
