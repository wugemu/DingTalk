.class final Lbag$32;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 1092
    iput-object p1, p0, Lbag$32;->b:Lbag;

    iput-object p2, p0, Lbag$32;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1095
    iget-object v0, p0, Lbag$32;->b:Lbag;

    iget-object v1, p0, Lbag$32;->b:Lbag;

    invoke-static {v1}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lbag$32;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lbag;->a(Lbag;Ljava/lang/String;ILjava/util/List;)V

    .line 1096
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1100
    iget-object v0, p0, Lbag$32;->b:Lbag;

    iget-object v1, p0, Lbag$32;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbag;->b(Lbag;Ljava/util/List;)V

    .line 1101
    return-void
.end method
