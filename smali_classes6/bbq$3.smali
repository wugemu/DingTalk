.class final Lbbq$3;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbq;


# direct methods
.method constructor <init>(Lbbq;)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 296
    iput-object p1, p0, Lbbq$3;->a:Lbbq;

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
    .line 299
    iget-object v0, p0, Lbbq$3;->a:Lbbq;

    .line 1027
    iget-object v0, v0, Lbbq;->c:Lckm;

    .line 299
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lckm;->a(Ljava/lang/Object;Z)V

    .line 300
    return-void
.end method
