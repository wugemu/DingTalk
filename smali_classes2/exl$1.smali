.class final Lexl$1;
.super Liei$a;
.source "VoipConfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexl;


# direct methods
.method constructor <init>(Lexl;)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 128
    iput-object p1, p0, Lexl$1;->a:Lexl;

    invoke-direct {p0}, Liei$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 132
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lexl$1$1;

    invoke-direct {v1, p0}, Lexl$1$1;-><init>(Lexl$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :cond_0
    return-void
.end method
