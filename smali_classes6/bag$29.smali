.class final Lbag$29;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lbja;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 990
    iput-object p1, p0, Lbag$29;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 993
    iget-object v0, p0, Lbag$29;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->H_()V

    .line 994
    iget-object v0, p0, Lbag$29;->a:Lbag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbag;->b(Lbag;Z)Z

    .line 995
    return-void
.end method
