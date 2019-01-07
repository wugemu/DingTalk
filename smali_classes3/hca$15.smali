.class final Lhca$15;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhca;


# direct methods
.method constructor <init>(Lhca;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 692
    iput-object p1, p0, Lhca$15;->c:Lhca;

    iput-object p2, p0, Lhca$15;->a:Ljava/util/List;

    iput-object p3, p0, Lhca$15;->b:Ljava/lang/String;

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
    .line 695
    iget-object v0, p0, Lhca$15;->c:Lhca;

    iget-object v1, p0, Lhca$15;->a:Ljava/util/List;

    iget-object v2, p0, Lhca$15;->b:Ljava/lang/String;

    .line 1041
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 696
    return-void
.end method
