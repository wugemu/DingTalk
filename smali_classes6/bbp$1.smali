.class public final Lbbp$1;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 102
    iput-object p1, p0, Lbbp$1;->b:Lbbp;

    iput-object p2, p0, Lbbp$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lbbp$1;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$1;->a:Lcma;

    .line 1177
    invoke-virtual {v0}, Lbbo;->a()V

    .line 1178
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 106
    return-void
.end method
