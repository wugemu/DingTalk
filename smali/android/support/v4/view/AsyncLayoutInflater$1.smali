.class final Landroid/support/v4/view/AsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/AsyncLayoutInflater;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/AsyncLayoutInflater;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$b;

    .line 98
    .local v0, "request":Landroid/support/v4/view/AsyncLayoutInflater$b;
    iget-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;

    .line 104
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater;->c:Landroid/support/v4/view/AsyncLayoutInflater$c;

    .line 1213
    iput-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->e:Landroid/support/v4/view/AsyncLayoutInflater$d;

    .line 1214
    iput-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 1215
    iput-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->b:Landroid/view/ViewGroup;

    .line 1216
    iput v3, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->c:I

    .line 1217
    iput-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;

    .line 1218
    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater$c;->a:Lfu$c;

    invoke-virtual {v1, v0}, Lfu$c;->a(Ljava/lang/Object;)Z

    .line 105
    const/4 v1, 0x1

    return v1
.end method
