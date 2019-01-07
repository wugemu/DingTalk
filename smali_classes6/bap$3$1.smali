.class final Lbap$3$1;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap$3;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbap$3;


# direct methods
.method constructor <init>(Lbap$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbap$3;

    .prologue
    .line 106
    iput-object p1, p0, Lbap$3$1;->c:Lbap$3;

    iput-object p2, p0, Lbap$3$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbap$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lbap$3$1;->c:Lbap$3;

    iget-object v0, v0, Lbap$3;->a:Lbap;

    .line 1032
    iget-object v0, v0, Lbap;->c:Lbaq$b;

    .line 109
    iget-object v1, p0, Lbap$3$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbap$3$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbaq$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
