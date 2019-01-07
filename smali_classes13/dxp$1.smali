.class public final Ldxp$1;
.super Lcmg;
.source "EncryptionAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldtf;",
        "Ldlb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxp;


# direct methods
.method public constructor <init>(Ldxp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxp;

    .prologue
    .line 36
    .local p2, "x0":Lcma;, "Lcma<Ldlb;>;"
    iput-object p1, p0, Ldxp$1;->a:Ldxp;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ldtf;

    .line 1039
    invoke-static {p1}, Ldlb;->a(Ldtf;)Ldlb;

    move-result-object v0

    .line 36
    return-object v0
.end method
