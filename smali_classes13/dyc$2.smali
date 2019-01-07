.class public final Ldyc$2;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsn;",
        "Ldso;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 271
    .local p2, "x0":Lcma;, "Lcma<Ldso;>;"
    iput-object p1, p0, Ldyc$2;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    check-cast p1, Ldsn;

    .line 1275
    invoke-static {p1}, Ldso;->a(Ldsn;)Ldso;

    move-result-object v0

    .line 271
    return-object v0
.end method
