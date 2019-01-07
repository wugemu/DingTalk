.class final Lebw$1;
.super Ljava/lang/Object;
.source "TinyVideoPreHandler.java"

# interfaces
.implements Ldsf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebw;


# direct methods
.method constructor <init>(Lebw;)V
    .locals 0
    .param p1, "this$0"    # Lebw;

    .prologue
    .line 80
    iput-object p1, p0, Lebw$1;->a:Lebw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lebw$1;->a:Lebw;

    .line 1043
    iget-boolean v0, v0, Lebw;->d:Z

    .line 83
    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lebw$1;->a:Lebw;

    .line 2043
    iput-object p1, v0, Lebw;->e:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lebw$1;->a:Lebw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lebw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lebw$1;->a:Lebw;

    .line 3043
    iget-boolean v0, v0, Lebw;->d:Z

    .line 91
    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lebw$1;->a:Lebw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lebw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
