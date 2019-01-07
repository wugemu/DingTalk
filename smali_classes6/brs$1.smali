.class public final Lbrs$1;
.super Ljava/lang/Object;
.source "DocNavBarViewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbrs;


# direct methods
.method public constructor <init>(Lbrs;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbrs;

    .prologue
    .line 196
    iput-object p1, p0, Lbrs$1;->b:Lbrs;

    iput-object p2, p0, Lbrs$1;->a:Ljava/util/List;

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
    .line 199
    iget-object v0, p0, Lbrs$1;->b:Lbrs;

    iget-object v1, p0, Lbrs$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbrs;->a(Lbrs;Ljava/util/List;)V

    .line 200
    return-void
.end method
