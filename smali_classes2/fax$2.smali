.class final Lfax$2;
.super Lcme;
.source "OrgInviteAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfax;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic b:Lfax;


# direct methods
.method constructor <init>(Lfax;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfax;

    .prologue
    .line 72
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfax$2;->b:Lfax;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
