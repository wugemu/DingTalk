.class final Ljuj$a;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljuj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljuj;


# direct methods
.method private constructor <init>(Ljuj;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Ljuj$a;->a:Ljuj;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljuj;B)V
    .locals 0
    .param p1, "x0"    # Ljuj;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Ljuj$a;-><init>(Ljuj;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Ljuj$a;->a:Ljuj;

    iget-object v1, p0, Ljuj$a;->a:Ljuj;

    iget-object v2, p0, Ljuj$a;->a:Ljuj;

    invoke-static {v2}, Ljuj;->a(Ljuj;)Ljui;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuj;->a(Ljui;)[Ljuj$b;

    move-result-object v1

    invoke-static {v0, v1}, Ljuj;->a(Ljuj;[Ljuj$b;)[Ljuj$b;

    .line 119
    iget-object v0, p0, Ljuj$a;->a:Ljuj;

    invoke-virtual {v0}, Ljuj;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public final onInvalidated()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Ljuj$a;->a:Ljuj;

    iget-object v1, p0, Ljuj$a;->a:Ljuj;

    iget-object v2, p0, Ljuj$a;->a:Ljuj;

    invoke-static {v2}, Ljuj;->a(Ljuj;)Ljui;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuj;->a(Ljui;)[Ljuj$b;

    move-result-object v1

    invoke-static {v0, v1}, Ljuj;->a(Ljuj;[Ljuj$b;)[Ljuj$b;

    .line 125
    iget-object v0, p0, Ljuj$a;->a:Ljuj;

    invoke-virtual {v0}, Ljuj;->notifyDataSetInvalidated()V

    .line 126
    return-void
.end method
