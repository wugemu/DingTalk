.class public final Lfbk$14;
.super Lcme;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lfbk;


# direct methods
.method public constructor <init>(Lfbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 660
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfbk$14;->b:Lfbk;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 660
    check-cast p1, Ljava/lang/Void;

    .line 1663
    invoke-super {p0, p1}, Lcme;->onLoadSuccess(Ljava/lang/Object;)V

    .line 660
    return-void
.end method
