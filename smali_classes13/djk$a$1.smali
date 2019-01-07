.class final Ldjk$a$1;
.super Ljava/lang/Object;
.source "ConversationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjk$a;


# direct methods
.method constructor <init>(Ldjk$a;)V
    .locals 0
    .param p1, "this$1"    # Ldjk$a;

    .prologue
    .line 175
    iput-object p1, p0, Ldjk$a$1;->a:Ldjk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Ldjk$a$1;->a:Ldjk$a;

    iget-object v0, v0, Ldjk$a;->a:Ldjk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldjk;->a(Ldjk;Z)Z

    .line 180
    iget-object v0, p0, Ldjk$a$1;->a:Ldjk$a;

    iget-object v0, v0, Ldjk$a;->a:Ldjk;

    invoke-static {v0}, Ldjk;->a(Ldjk;)V

    .line 181
    return-void
.end method
