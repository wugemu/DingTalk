.class final Lbxx$2;
.super Ljava/lang/Object;
.source "ShareLivePresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxx;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbxx;


# direct methods
.method constructor <init>(Lbxx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbxx;

    .prologue
    .line 100
    iput-object p1, p0, Lbxx$2;->c:Lbxx;

    iput-object p2, p0, Lbxx$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbxx$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lbxx$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lbxx$2;->c:Lbxx;

    iget-object v2, p0, Lbxx$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lbxx$2;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lbxx;->a(Lbxx;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 106
    return-void
.end method
