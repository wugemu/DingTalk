.class final Lkom$2;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkom;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lkom;


# direct methods
.method varargs constructor <init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1
    .param p1, "this$0"    # Lkom;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 347
    iput-object p1, p0, Lkom$2;->d:Lkom;

    iput p4, p0, Lkom$2;->a:I

    iput-wide p5, p0, Lkom$2;->c:J

    invoke-direct {p0, p2, p3}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lkom$2;->d:Lkom;

    iget-object v0, v0, Lkom;->p:Lkop;

    iget v1, p0, Lkom$2;->a:I

    iget-wide v2, p0, Lkom$2;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lkop;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    iget-object v0, p0, Lkom$2;->d:Lkom;

    invoke-static {v0}, Lkom;->a(Lkom;)V

    goto :goto_0
.end method
