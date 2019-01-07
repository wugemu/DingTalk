.class final Ldxy$19;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->a(Ldqy;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsu;",
        "Ldqz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 453
    .local p2, "x0":Lcma;, "Lcma<Ldqz;>;"
    iput-object p1, p0, Ldxy$19;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    check-cast p1, Ldsu;

    .line 2027
    if-nez p1, :cond_0

    .line 2028
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2030
    :cond_0
    new-instance v0, Ldqz;

    invoke-direct {v0}, Ldqz;-><init>()V

    .line 2031
    iget-object v1, p1, Ldsu;->a:Ljava/util/List;

    iput-object v1, v0, Ldqz;->a:Ljava/util/List;

    .line 2032
    iget-object v1, p1, Ldsu;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldqz;->b:Ljava/util/List;

    goto :goto_0
.end method
