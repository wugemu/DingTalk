.class public final Ldyd$1;
.super Lcmg;
.source "IntelligentAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldtv;",
        "Ldrm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyd;


# direct methods
.method public constructor <init>(Ldyd;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyd;

    .prologue
    .line 45
    .local p2, "x0":Lcma;, "Lcma<Ldrm;>;"
    iput-object p1, p0, Ldyd$1;->a:Ldyd;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 45
    check-cast p1, Ldtv;

    .line 2026
    if-nez p1, :cond_0

    .line 2027
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2029
    :cond_0
    new-instance v0, Ldrm;

    invoke-direct {v0}, Ldrm;-><init>()V

    .line 2030
    iget-object v1, p1, Ldtv;->a:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2030
    iput v1, v0, Ldrm;->a:I

    .line 2031
    iget-object v1, p1, Ldtv;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2031
    iput v1, v0, Ldrm;->b:I

    .line 2032
    iget-object v1, p1, Ldtv;->c:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2032
    iput v1, v0, Ldrm;->c:I

    .line 2033
    iget-object v1, p1, Ldtv;->d:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2033
    iput v1, v0, Ldrm;->d:I

    .line 2034
    iget-object v1, p1, Ldtv;->e:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2034
    iput v1, v0, Ldrm;->e:I

    .line 2035
    iget-object v1, p1, Ldtv;->f:Ljava/lang/String;

    iput-object v1, v0, Ldrm;->f:Ljava/lang/String;

    goto :goto_0
.end method
