.class final Ldxy$18;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->b(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Ldud;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 426
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;>;"
    iput-object p1, p0, Ldxy$18;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    check-cast p1, Ljava/util/List;

    .line 1429
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 426
    return-object v0
.end method
