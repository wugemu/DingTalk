.class public final Lfal;
.super Ljava/lang/Object;
.source "CookieAPIImpl.java"

# interfaces
.implements Lezp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcdd;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 18
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcdd;>;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/CookiesIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/CookiesIService;

    .line 19
    .local v0, "service":Lcom/alibaba/android/user/idl/services/CookiesIService;
    new-instance v1, Lfal$1;

    invoke-direct {v1, p0, p1}, Lfal$1;-><init>(Lfal;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/idl/services/CookiesIService;->getCookies(Liyv;)V

    .line 34
    return-void
.end method
