.class public final Ldmp$2;
.super Lcmg;
.source "IndustryRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 64
    .local p1, "x0":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
