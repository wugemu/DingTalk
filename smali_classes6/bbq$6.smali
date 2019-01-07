.class final Lbbq$6;
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
.field final synthetic a:I

.field final synthetic b:Lbbq;


# direct methods
.method constructor <init>(Lbbq;I)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 147
    iput-object p1, p0, Lbbq$6;->b:Lbbq;

    iput p2, p0, Lbbq$6;->a:I

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
    .line 151
    iget-object v0, p0, Lbbq$6;->b:Lbbq;

    .line 1027
    iget-object v0, v0, Lbbq;->f:Lckm;

    .line 151
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lckm;->a(Ljava/lang/Object;Z)V

    .line 152
    iget-object v0, p0, Lbbq$6;->b:Lbbq;

    .line 2027
    iget-object v0, v0, Lbbq;->f:Lckm;

    .line 152
    iget v1, p0, Lbbq$6;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2228
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 153
    return-void
.end method
