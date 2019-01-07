.class final Lhca$2;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca;->a(ZLhca$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhca;


# direct methods
.method constructor <init>(Lhca;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 824
    iput-object p1, p0, Lhca$2;->b:Lhca;

    iput-object p2, p0, Lhca$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 827
    iget-object v0, p0, Lhca$2;->b:Lhca;

    iget-object v1, p0, Lhca$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lhca;->b(Lhca;Ljava/util/List;)V

    .line 828
    return-void
.end method
