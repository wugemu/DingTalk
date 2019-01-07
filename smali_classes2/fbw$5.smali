.class final Lfbw$5;
.super Ljava/lang/Object;
.source "DisplayLatestPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfbw;


# direct methods
.method constructor <init>(Lfbw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfbw;

    .prologue
    .line 151
    iput-object p1, p0, Lfbw$5;->c:Lfbw;

    iput-object p2, p0, Lfbw$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lfbw$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Integer;

    .line 1154
    if-nez p1, :cond_0

    .line 1155
    iget-object v0, p0, Lfbw$5;->c:Lfbw;

    .line 2025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 1155
    invoke-interface {v0}, Lfby;->b()V

    .line 1159
    :goto_0
    return-void

    .line 1158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1159
    iget-object v0, p0, Lfbw$5;->c:Lfbw;

    .line 3025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 1159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lfby;->a(I)V

    goto :goto_0

    .line 1161
    :cond_1
    iget-object v0, p0, Lfbw$5;->c:Lfbw;

    .line 4025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 1161
    iget-object v1, p0, Lfbw$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lfbw$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfby;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
