.class final Lhca$9;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhca;


# direct methods
.method constructor <init>(Lhca;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 267
    iput-object p1, p0, Lhca$9;->a:Lhca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lhca$9;->a:Lhca;

    const/4 v1, 0x1

    .line 1041
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhca;->a(ZLhca$a;)V

    .line 271
    return-void
.end method
