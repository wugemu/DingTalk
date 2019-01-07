.class final Lbbq$2;
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
.field final synthetic a:Lbgl;

.field final synthetic b:Lbbq;


# direct methods
.method constructor <init>(Lbbq;Lbgl;)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 272
    iput-object p1, p0, Lbbq$2;->b:Lbbq;

    iput-object p2, p0, Lbbq$2;->a:Lbgl;

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
    .line 275
    iget-object v0, p0, Lbbq$2;->b:Lbbq;

    .line 1027
    iget-object v0, v0, Lbbq;->g:Lckm;

    .line 275
    iget-object v1, p0, Lbbq$2;->a:Lbgl;

    .line 1228
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 276
    return-void
.end method
