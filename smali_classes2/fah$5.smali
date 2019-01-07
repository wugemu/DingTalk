.class final Lfah$5;
.super Lcmg;
.source "CertifyAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfah;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfah;


# direct methods
.method constructor <init>(Lfah;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfah;

    .prologue
    .line 169
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lfah$5;->a:Lfah;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
