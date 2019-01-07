.class final Lgdw$5;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdw;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lgdw;


# direct methods
.method constructor <init>(Lgdw;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgdw;

    .prologue
    .line 548
    iput-object p1, p0, Lgdw$5;->b:Lgdw;

    iput-object p2, p0, Lgdw$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 551
    new-instance v0, Lgdw$5$1;

    invoke-direct {v0, p0}, Lgdw$5$1;-><init>(Lgdw$5;)V

    .line 578
    .local v0, "deleteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lgdw$5;->b:Lgdw;

    iget-object v2, v2, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deleteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 579
    .restart local v0    # "deleteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lgdw$5;->b:Lgdw;

    iget-object v1, v1, Lgdw;->c:Lgdu$b;

    invoke-interface {v1}, Lgdu$b;->b()V

    .line 580
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgdw$5;->a:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lgon;->a(Ljava/util/List;Lcma;)V

    .line 581
    return-void
.end method
