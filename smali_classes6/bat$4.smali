.class final Lbat$4;
.super Ljava/lang/Object;
.source "DingUnReadPresenterV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbat;


# direct methods
.method constructor <init>(Lbat;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lbat;

    .prologue
    .line 167
    iput-object p1, p0, Lbat$4;->c:Lbat;

    iput-object p2, p0, Lbat$4;->a:Ljava/util/List;

    iput p3, p0, Lbat$4;->b:I

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
    .line 170
    iget-object v0, p0, Lbat$4;->c:Lbat;

    invoke-static {v0}, Lbat;->a(Lbat;)Lbaq$g;

    move-result-object v0

    iget-object v1, p0, Lbat$4;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lbaq$g;->a(Ljava/util/List;)V

    .line 171
    iget v0, p0, Lbat$4;->b:I

    if-ltz v0, :cond_0

    .line 172
    iget-object v0, p0, Lbat$4;->c:Lbat;

    invoke-static {v0}, Lbat;->a(Lbat;)Lbaq$g;

    move-result-object v0

    iget v1, p0, Lbat$4;->b:I

    invoke-interface {v0, v1}, Lbaq$g;->a(I)V

    .line 174
    :cond_0
    return-void
.end method
