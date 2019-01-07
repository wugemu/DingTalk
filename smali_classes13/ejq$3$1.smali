.class final Lejq$3$1;
.super Ljava/lang/Object;
.source "HomeBurnChatEnterManger.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejq$3;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejq$3;


# direct methods
.method constructor <init>(Lejq$3;)V
    .locals 0
    .param p1, "this$1"    # Lejq$3;

    .prologue
    .line 175
    iput-object p1, p0, Lejq$3$1;->a:Lejq$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Integer;

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    iget-object v0, p0, Lejq$3$1;->a:Lejq$3;

    iget-object v0, v0, Lejq$3;->a:Lejq;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2043
    iput v1, v0, Lejq;->e:I

    .line 1180
    iget-object v0, p0, Lejq$3$1;->a:Lejq$3;

    iget-object v0, v0, Lejq$3;->a:Lejq;

    .line 3043
    invoke-virtual {v0}, Lejq;->b()V

    .line 175
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 186
    return-void
.end method
