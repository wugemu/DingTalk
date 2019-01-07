.class final Ldiz$2;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiz;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ldiz;


# direct methods
.method constructor <init>(Ldiz;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Ldiz;

    .prologue
    .line 435
    iput-object p1, p0, Ldiz$2;->c:Ldiz;

    iput-object p2, p0, Ldiz$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Ldiz$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-object v0, p0, Ldiz$2;->c:Ldiz;

    iget-object v1, p0, Ldiz$2;->a:Ljava/lang/String;

    iget-boolean v2, p0, Ldiz$2;->b:Z

    invoke-static {v0, v1, v2}, Ldiz;->a(Ldiz;Ljava/lang/String;Z)Z

    .line 439
    return-void
.end method
