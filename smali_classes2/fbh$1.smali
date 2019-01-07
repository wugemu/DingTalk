.class final Lfbh$1;
.super Lcme;
.source "UserSettingImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbh;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Lcfr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lfbh;


# direct methods
.method constructor <init>(Lfbh;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbh;

    .prologue
    .line 53
    .local p2, "x0":Lcma;, "Lcma<Lcfr;>;"
    iput-object p1, p0, Lfbh$1;->b:Lfbh;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcfr;

    .line 1055
    invoke-virtual {p0, p1}, Lfbh$1;->onLoadSuccess(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
