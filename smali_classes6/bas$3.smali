.class final Lbas$3;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenterV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbas;


# direct methods
.method constructor <init>(Lbas;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lbas;

    .prologue
    .line 133
    iput-object p1, p0, Lbas$3;->c:Lbas;

    iput-object p2, p0, Lbas$3;->a:Ljava/util/List;

    iput p3, p0, Lbas$3;->b:I

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
    .line 136
    iget-object v0, p0, Lbas$3;->c:Lbas;

    invoke-static {v0}, Lbas;->a(Lbas;)Lbaq$c;

    move-result-object v0

    iget-object v1, p0, Lbas$3;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lbaq$c;->a(Ljava/util/List;)V

    .line 137
    iget v0, p0, Lbas$3;->b:I

    if-ltz v0, :cond_0

    .line 138
    iget-object v0, p0, Lbas$3;->c:Lbas;

    invoke-static {v0}, Lbas;->a(Lbas;)Lbaq$c;

    move-result-object v0

    iget v1, p0, Lbas$3;->b:I

    invoke-interface {v0, v1}, Lbaq$c;->a(I)V

    .line 140
    :cond_0
    return-void
.end method
