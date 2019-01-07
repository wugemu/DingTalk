.class final Lhca$5;
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
    .line 863
    iput-object p1, p0, Lhca$5;->b:Lhca;

    iput-object p2, p0, Lhca$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 866
    iget-object v0, p0, Lhca$5;->b:Lhca;

    iget-object v1, p0, Lhca$5;->a:Ljava/util/List;

    const-string/jumbo v2, "ALL_VIDEO"

    .line 1041
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 867
    return-void
.end method
