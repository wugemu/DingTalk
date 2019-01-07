.class final Ldpo$2;
.super Lcme;
.source "MenuTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ldux;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldpo;


# direct methods
.method constructor <init>(Ldpo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldpo;

    .prologue
    .line 225
    .local p2, "x0":Lcma;, "Lcma<Ldux;>;"
    iput-object p1, p0, Ldpo$2;->b:Ldpo;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
