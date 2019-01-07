.class public final Lk;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# instance fields
.field private final a:Ll;

.field private final b:Lh;


# direct methods
.method public constructor <init>(Ll;)V
    .locals 1
    .param p1, "callbackBinder"    # Ll;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lk;->a:Ll;

    .line 51
    new-instance v0, Lk$1;

    invoke-direct {v0, p0}, Lk$1;-><init>(Lk;)V

    iput-object v0, p0, Lk;->b:Lh;

    .line 89
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lk;->a:Ll;

    invoke-interface {v0}, Ll;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    instance-of v1, p1, Lk;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 103
    check-cast v0, Lk;

    .line 104
    .local v0, "token":Lk;
    invoke-virtual {v0}, Lk;->a()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lk;->a:Ll;

    invoke-interface {v2}, Ll;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lk;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
