.class final Lbhv$2;
.super Ljava/lang/Object;
.source "UserProfileListFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhv;->a(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbhv;

    .prologue
    .line 81
    iput-object p1, p0, Lbhv$2;->b:Lbhv;

    iput-object p2, p0, Lbhv$2;->a:Ljava/util/List;

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
    .line 84
    iget-object v0, p0, Lbhv$2;->b:Lbhv;

    .line 1018
    iget-object v0, v0, Lbhv;->b:Lbhv$a;

    .line 84
    iget-object v1, p0, Lbhv$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lbhv$a;->a(Ljava/util/List;)V

    .line 85
    return-void
.end method
