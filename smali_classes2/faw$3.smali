.class public final Lfaw$3;
.super Lcmg;
.source "OrgExtFieldAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaw;


# direct methods
.method public constructor <init>(Lfaw;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaw;

    .prologue
    .line 101
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfaw$3;->a:Lfaw;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
