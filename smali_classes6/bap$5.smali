.class final Lbap$5;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbap;


# direct methods
.method constructor <init>(Lbap;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 207
    iput-object p1, p0, Lbap$5;->b:Lbap;

    iput-object p2, p0, Lbap$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 210
    iget-object v0, p0, Lbap$5;->b:Lbap;

    .line 1032
    iget-object v0, v0, Lbap;->c:Lbaq$b;

    .line 210
    iget-object v1, p0, Lbap$5;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lbaq$b;->a(Ljava/util/List;)V

    .line 211
    return-void
.end method
