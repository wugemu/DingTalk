.class final Lfd$2$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfd$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lfd$2;


# direct methods
.method constructor <init>(Lfd$2;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lfd$2;

    .prologue
    .line 146
    iput-object p1, p0, Lfd$2$1;->b:Lfd$2;

    iput-object p2, p0, Lfd$2$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lfd$2$1;->b:Lfd$2;

    iget-object v0, v0, Lfd$2;->c:Lfd$a;

    iget-object v1, p0, Lfd$2$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lfd$a;->a(Ljava/lang/Object;)V

    .line 150
    return-void
.end method
