.class final Lciu$2;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lciu$a;

.field final synthetic b:Lciu$a;

.field final synthetic c:Lciu;


# direct methods
.method constructor <init>(Lciu;Lciu$a;Lciu$a;)V
    .locals 0
    .param p1, "this$0"    # Lciu;

    .prologue
    .line 130
    iput-object p1, p0, Lciu$2;->c:Lciu;

    iput-object p2, p0, Lciu$2;->a:Lciu$a;

    iput-object p3, p0, Lciu$2;->b:Lciu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lciu$2;->a:Lciu$a;

    .line 1060
    iget-object v0, v0, Lciu$a;->d:Lciu$b;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lciu$2;->a:Lciu$a;

    .line 2060
    iget-object v0, v0, Lciu$a;->d:Lciu$b;

    .line 134
    iget-object v1, p0, Lciu$2;->b:Lciu$a;

    invoke-interface {v0, v1}, Lciu$b;->a(Lciu$a;)V

    .line 136
    :cond_0
    return-void
.end method
