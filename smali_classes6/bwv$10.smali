.class final Lbwv$10;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwv;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 830
    iput-object p1, p0, Lbwv$10;->b:Lbwv;

    iput-object p2, p0, Lbwv$10;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 833
    iget-object v1, p0, Lbwv$10;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 834
    .local v0, "urlInfo":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    if-eqz v0, :cond_1

    .line 835
    iget-object v1, p0, Lbwv$10;->b:Lbwv;

    invoke-static {v1}, Lbwv;->j(Lbwv;)Lbwv$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lbwv$10;->b:Lbwv;

    invoke-static {v1}, Lbwv;->j(Lbwv;)Lbwv$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lbwv$a;->a(Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V

    .line 838
    :cond_0
    iget-object v1, p0, Lbwv$10;->b:Lbwv;

    invoke-static {v1, v0}, Lbwv;->a(Lbwv;Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V

    .line 840
    :cond_1
    return-void
.end method
