.class final Ldjg$a$1;
.super Ljava/lang/Object;
.source "ConversationChangeMaid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjg$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjg$a;


# direct methods
.method constructor <init>(Ldjg$a;)V
    .locals 0
    .param p1, "this$1"    # Ldjg$a;

    .prologue
    .line 145
    iput-object p1, p0, Ldjg$a$1;->a:Ldjg$a;

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
    .line 149
    iget-object v0, p0, Ldjg$a$1;->a:Ldjg$a;

    iget-object v0, v0, Ldjg$a;->a:Ldjg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldjg;->a(Ldjg;Z)Z

    .line 150
    iget-object v0, p0, Ldjg$a$1;->a:Ldjg$a;

    iget-object v0, v0, Ldjg$a;->a:Ldjg;

    invoke-static {v0}, Ldjg;->c(Ldjg;)V

    .line 151
    return-void
.end method
