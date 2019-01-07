.class public final Lfbk$9;
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
        "Ljava/lang/Boolean;",
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
    .line 559
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lfbk$9;->b:Lfbk;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 559
    check-cast p1, Ljava/lang/Boolean;

    .line 1564
    invoke-super {p0, p1}, Lcme;->onLoadSuccess(Ljava/lang/Object;)V

    .line 559
    return-void
.end method
