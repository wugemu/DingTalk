.class final Lfbf$3;
.super Lcmg;
.source "UserDeviceAPiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbf;->a(JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfob;",
        "Lfrp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbf;


# direct methods
.method constructor <init>(Lfbf;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbf;

    .prologue
    .line 105
    .local p2, "x0":Lcma;, "Lcma<Lfrp;>;"
    iput-object p1, p0, Lfbf$3;->a:Lfbf;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 105
    check-cast p1, Lfob;

    .line 2034
    if-nez p1, :cond_0

    .line 2035
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2038
    :cond_0
    new-instance v0, Lfrp;

    invoke-direct {v0}, Lfrp;-><init>()V

    .line 2039
    iget-object v1, p1, Lfob;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2039
    iput-boolean v1, v0, Lfrp;->a:Z

    .line 2040
    iget-object v1, p1, Lfob;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2040
    iput v1, v0, Lfrp;->b:I

    .line 2041
    iget-object v1, p1, Lfob;->c:Ljava/lang/String;

    iput-object v1, v0, Lfrp;->c:Ljava/lang/String;

    goto :goto_0
.end method
