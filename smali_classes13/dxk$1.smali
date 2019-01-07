.class final Ldxk$1;
.super Lcmg;
.source "ConversationAuthApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxk;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsr;",
        "Ldsr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxk;


# direct methods
.method constructor <init>(Ldxk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxk;

    .prologue
    .line 32
    .local p2, "x0":Lcma;, "Lcma<Ldsr;>;"
    iput-object p1, p0, Ldxk$1;->a:Ldxk;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 32
    check-cast p1, Ldsr;

    return-object p1
.end method
